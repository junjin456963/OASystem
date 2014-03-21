package action;

import java.util.Date;
import java.util.Map;

import serviceInterface.ApprovalServiceInterface;
import serviceInterface.ClaimServiceInterface;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import entity.Approval;
import entity.Claim;
import entity.Employee;

public class AprrovalAction extends ActionSupport {
	private ApprovalServiceInterface asi;
	private ClaimServiceInterface csi;
	private Long claId;
	private String is;

	public ClaimServiceInterface getCsi() {
		return csi;
	}

	public void setCsi(ClaimServiceInterface csi) {
		this.csi = csi;
	}

	public Long getClaId() {
		return claId;
	}

	public void setClaId(Long claId) {
		this.claId = claId;
	}

	public String getIs() {
		return is;
	}

	public void setIs(String is) {
		this.is = is;
	}

	public ApprovalServiceInterface getAsi() {
		return asi;
	}

	public void setAsi(ApprovalServiceInterface asi) {
		this.asi = asi;
	}

	public String execute(){
		
		System.out.println("approval claId = "+claId);
		System.out.println("approval is = "+is);
		
		if(is.equals("1")){//access
			Claim cla = new Claim();
			cla.setClaId(claId);
			cla = csi.FindByIdClaim(cla);
			cla.setState("合格");
			Approval app = new Approval();
			app.setAppTime(new Date());
			app.setClaim(cla);
	        ActionContext actionContext = ActionContext.getContext();
	        Map session = actionContext.getSession();
	        Employee employee = (Employee)session.get("employee");
			app.setEmployee(employee);
			
			asi.AddApproval(app);
			csi.ModifyClaim(cla);
			
		}else if(is.equals("2")){//reject
			
			Claim cla = new Claim();
			cla.setClaId(claId);
			cla = csi.FindByIdClaim(cla);
			cla.setState("拒绝");
			Approval app = new Approval();
			app.setAppTime(new Date());
			app.setClaim(cla);
	        ActionContext actionContext = ActionContext.getContext();
	        Map session = actionContext.getSession();
	        Employee employee = (Employee)session.get("employee");
			app.setEmployee(employee);
			
			asi.AddApproval(app);
			csi.ModifyClaim(cla);
			
		}else if(is.equals("3")){//callback
			Claim cla = new Claim();
			cla.setClaId(claId);
			cla = csi.FindByIdClaim(cla);
			cla.setState("打回");
			csi.ModifyClaim(cla);
		}
		
		return "success";
	}
}
