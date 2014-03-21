<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>修改密码</title>
<meta name="description" content="">
<meta name="keywords" content="">
<link href="css/base.css" rel="stylesheet" />
<link rel="stylesheet" href="css/common.css">
<!--[if lt IE 8]>
    <script src="js/pngopacity.js"></script>
    <script type="text/javascript">
     DD_belatedPNG.fix('*');
    </script> 
<![endif]-->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"><style type="text/css">
<!--
body,td,th {
	color: #D4D0C8;
}
body {
	background-color: #FFFFFF;
}

.STYLE8 {color: #FF9900}

-->
</style></head>
<body>
    <div class="hea-date clearfix">
      <div class="hea-right"> <span class="hea-year">2013年04月14日</span> <span>15:49</span> <span>星期二</span> </div>
      <div class="hea-con clearfix">
        <div class="hea-con-left clearfix"> <img src="img/kindle.gif" alt="">
            <div class="hea-name"> <span class="hea-name-one"><s:property value="#session.employee.empName"/></span> <span>，欢迎您来到本平台！</span> </div>
        </div>
           <ul>

<li>
        <a href="Emp_addEa.jsp">
                        <span class="hea-imgbg hea-imgtwo"></span>
                        <span>报销单管理</span>
        </a>
             </li>
                                <li class="hea-li">
                    <a href="Emp_modifyUser.jsp">
                        <span class="hea-imgbg hea-imgfive"></span>
                        <span>个人信息管理</span>
                    </a>
              </li>
                            <li>
                    <a href="">
                        <span></span>
                        <span></span>
                    </a>
              </li>
                <li>
                    <a href="">
              <span ></span></a>                </li>
              <li>
                    <a href="">
                        <span></span>
                        <span></span>
                    </a>
              </li>
             <li>
                    <a href="">
                        <span></span>
                        <span></span>
                    </a>
             </li>
          </ul>
      </div>
      <div class="hea-con-right"></div>
</div>
<div class='wrap-body'>
        <div class='wrap-nav'>
        	<h1 class='wrap-nav-head auth-wrap-nav-head'>个人信息管理</h1>
        	<ul class='wrap-nav-list'>
    			<li><a href='Emp_modifyUser.jsp'>个人信息修改</a></li>
    			<li class='wrap-nav-show'><a href='Emp_modifyPw.jsp'>个人密码修改</a></li>
        	</ul>
        </div>
        <div class='wrap-con'>
        	<div class='wrap-con-nav'>
    	    	<ul class='clearfix'>
    	    		<li class='wrap-con-show'><a>密码修改页面</a></li>
    	    	    <span class="hea-con-right"><span></span></span>
    	    	</ul>
       	  </div>
       	  
           <form action="modifyPw" method="post">
            <div class="wrap-content">
                <div class="limit-xiugai limit-old-wd">
                    <span>原密码</span>
                    <input type="password" name="account.oldPw" />
    <input type="hidden" name="emp.empId" value="<s:property value="#session.employee.empId"/>">
	<input type="hidden" name="emp.empName" value="<s:property value="#session.employee.empName"/>">
	<input type="hidden" name="emp.empPw" value="<s:property value="#session.employee.empPw"/>">
	<input type="hidden" name="emp.department.depId" value="<s:property value="#session.employee.department.depId"/>">
	<input type="hidden" name="emp.position.postId" value="<s:property value="#session.employee.position.postId"/>">
              </div>
                <div class="limit-xiugai">
                    <span>新密码</span>
                    <input type="password" name="account.newPw" value="" />
                </div>
                <div class="limit-xiugai limit-ture">
                    <span>确认密码</span>
                    <input type="password" name="account.confirmPw" value="" />
                </div>
                <input type="button" value="重置" class="limit-btn" />
                <input type="submit" value="确认" class="limit-btn limit-btn-turn" />
            </div>
            </form>
  </div>
    </div>
    <div class="footer">
        <span>&copy;&nbsp;2013.&nbsp;OA&nbsp;企业财务报销管理系统</span>
    </div>
</body>
</html>