<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>用户管理</title>
<meta name="description" content="">
<meta name="keywords" content="">
<link href="css/base.css" rel="stylesheet" />
<link rel="stylesheet" href="css/common.css" />
<link rel="stylesheet" href="css/heard.css" />
<!--[if lt IE 8]>
    <script src="js/pngopacity.js"></script>
    <script type="text/javascript">
     DD_belatedPNG.fix('*');
    </script> 
<![endif]-->
<style type="text/css">
<!--
#apDiv1 {
	position:absolute;
	left:393px;
	top:295px;
	width:99px;
	height:28px;
	z-index:1000000;
}
.STYLE8 {color: #FF9900}
-->
</style>
</head>
<body>
<div class="hea-date clearfix">
  <div class="hea-right"> <span class="hea-year">2013年04月14日</span> <span>15:49</span> <span>星期二</span> </div>
  <div class="hea-con clearfix">
    <div class="hea-con-left clearfix"> <img src="img/kindle.gif" alt="">
        <div class="hea-name"> <span class="hea-name-one"><s:property value="#session.employee.empName"/></span> <span>，欢迎您来到本平台！</span> </div>
    </div>
    <ul>
      <li class="hea-stat" > <a href="getPosDepToAddEmp"> <span class="hea-imgbg hea-imgtwo"></span> <span>人员管理</span> </a> </li>
      <li> <a href="addDep.jsp"> <span class="hea-imgbg hea-imgtwo"></span> <span>部门管理</span> </a> </li>
      <li> <a href="addPos.jsp"> <span class="hea-imgbg hea-imgtwo"></span> <span>职务管理</span> </a> </li>
      <li> <a href="addEa.jsp"> <span class="hea-imgbg hea-imgtwo"></span> <span>报销单管理</span> </a> </li>
      <li class="hea-li"> <a href="modifyUser.jsp"> <span class="hea-imgbg hea-imgfive"></span> <span>个人信息管理</span> </a> </li>
    </ul>
  </div>
  <div class="hea-con-right"> <span></span> </div>
</div>

<div class='wrap-body'>
        <div class='wrap-nav'>
        	<h1 class='wrap-nav-head auth-wrap-nav-head'>个人信息管理</h1>
   	  <ul class='wrap-nav-list'>
    			<li class='wrap-nav-show'><a href='modifyUser.jsp'>个人信息修改</a></li>
    			<li><a href='modifyPw.jsp'>个人密码修改</a></li>
        	</ul>
      </div>
        <div class='wrap-con'>
        	<div class='wrap-con-nav'>
    	    	<ul class='clearfix'>
    	    		<li class='wrap-con-show'><a>个人信息修改页面</a></li>
    	    	</ul>
        	</div>
  <div id="all" style="padding: 0px; border: hidden 0px #000000;"  align=center>

		

				<form name="" method="post" action="modifyUser">
				  <table id="formtable" cellpadding="0" cellspacing="0" width="90%"
						 border="1" bordercolor="#CCCCCC">
	
	<tr>
	<td>
	<input type="hidden" name="emp.empId" value="<s:property value="#session.employee.empId"/>">
	<input type="hidden" name="emp.empPw" value="<s:property value="#session.employee.empPw"/>">
	<input type="hidden" name="emp.department.depId" value="<s:property value="#session.employee.department.depId"/>">
	<input type="hidden" name="emp.position.postId" value="<s:property value="#session.employee.position.postId"/>">
	</td>
	</tr>
				  <tr>
							<td align="right">
								<span class="STYLE8">员工姓名：</span></td>
							<td>
								<p>
								  <input type="text" name="emp.empName" value="<s:property value="#session.employee.empName"/>">
							  </p>
							<p>&nbsp;								          </p></td>
				    </tr><!--
 						<tr>
							<td align="right">
								<span class="STYLE8">Email：	</span>						</td>
							<td>
								<p>
								  <input type="text" name="empMail" value="">
							  </p>
							<p>&nbsp;								          </p></td>
					  </tr>
 						   <tr>
							<td align="right">
								<span class="STYLE8">员工性别：</span>							</td>
							<td>
								<p>
								  <input type="text" name="empSex" value="">
							  </p>
							 <p>&nbsp;								         </p></td>
					  </tr>
				  --></table>
				  
				  <p>&nbsp;</p>
				  <p>&nbsp;</p>
				  <div id="apDiv1">
      <input type="submit" value="确认" class="limit-btn limit-btn-turn" />
</div>
	  </form>

     </div>
    </div>
    </div>
    <!--  -->
     <iframe style="overflow:hidden;width:100%;height:100%; position:absolute;top:0;left:0; z-index:999997;display:none;" ></iframe>
    <div class="scre-Wrap" style="display:none;z-index:999998;"></div> 
    <div class="pop-wrap" style="display:none;">
        <div class="ale-add ale-a">
        <div class="add-item">
            <span>用户名</span>
            <input type='text' class='add-name' name='addName'/>
            <div class='clear'></div>
        </div>
        <div class='add-btn add-a-b'>
            <input type='button' class='cancel' value='取消'/>
            <input type='button' class='cancel' value='确认'/>
        </div>
    </div>
    </div>
    <img src="img/loader.gif" class="loading" style="display:none;" />
    <div class="scre-Wrap" style="display:none;"></div>
    <div class="pop-wrap" style="display:none;">
        <div class="ale-add">
            <div class='add-head'>
                <h4 class='add-user'>添加用户</h4>
            </div>
            <div class="add-item">
                <span>用户名</span>
                <input type='text' class='add-name' name='addName'/>
                <div class='clear'></div>
            </div>
            <div class="add-item">
                <span>类型</span>
                <select class='add-sel'>
                    <option>PR</option>
                    <option>PR</option>
                    <option>PR</option>
                </select>
                <div class='clear'></div>
            </div>
            <div class="add-item">
                <span>(PR)管理门店</span>
                <input class='add-b-choice1' type='radio' name='add-b-choice' />
                <span class='add-store'>北京市海淀区中关村门店</span>
                <br />
                <input class='add-b-choice2' type='radio' name='add-b-choice' />
                <span class='add-store'>北京市海淀区大悦城门店</span>
                <div class='clear'></div>
            </div>
            <div class='add-btn'>
                <input type='button' class='cancel' value='取消'/>
                <input type='button' class='cancel' value='确认'/>
            </div>
        </div>
    </div>


    <img src="img/loader.gif" class="loading" style="display:none;" />
    <div class="scre-Wrap" style="display:none;"></div>
    <div class="pop-wrap" style="display:none;">





        </div>
      
    </div>
    <img src="img/loader.gif" class="loading" style="display:none;" />
    <!--  -->
    <div class="footer">
        <span>&copy;&nbsp;2013.&nbsp;OA&nbsp;企业财务报销管理系统</span>
    </div>
</body>
<script src="js/jquery.js"></script>
<script src="js/page.js"></script>
</html>