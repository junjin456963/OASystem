package filter;

import java.io.IOException;
import java.util.Enumeration;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

public class CharacterEncodingFilter implements Filter{
	
	private FilterConfig filterConfig;   
    private String encoding = null;   
  
    public void init(FilterConfig filterConfig) throws ServletException {   
        this.filterConfig = filterConfig;   
    }     
    
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain) throws IOException,   
            ServletException {   
        try {   
            if (encoding == null) {   
                encoding = filterConfig.getInitParameter("encoding");   
            }   
        } catch (Exception iox) {   
            iox.printStackTrace();   
        }   
        request.setCharacterEncoding(encoding);   
        response.setCharacterEncoding(encoding);   
        HttpServletRequest req = (HttpServletRequest) request;   
  
        // get请求时，重新编码   
        if ("GET".equals(req.getMethod())) {   
            Enumeration names = request.getParameterNames();   
            while (names.hasMoreElements()) {   
                String name = (String) names.nextElement();   
                String[] values = request.getParameterValues(name);   
                for (int i = 0; i < values.length; i++) {   
                    values[i] = new String(values[i].getBytes("ISO-8859-1"), encoding);   
                }   
            }   
        }   
        filterChain.doFilter(request, response);   
    }   
  
    public void destroy() {   
        filterConfig = null;   
        encoding = null;   
    }   

}
