<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>部门管理</title>
<meta name="description" content="">
<meta name="keywords" content="">
<link href="css/base.css" rel="stylesheet" />
<link rel="stylesheet" href="css/common.css" />
<!--[if lt IE 8]>
    <script src="js/pngopacity.js"></script>
    <script type="text/javascript">
     DD_belatedPNG.fix('*');
    </script> 
<![endif]-->
<style>
.STYLE8 {color: #FF9900}
#apDiv1 {
	position:absolute;
	left:398px;
	top:255px;
	width:99px;
	height:28px;
	z-index:1000000;
}
#apDiv2 {
	position:absolute;
	left:567px;
	top:255px;
	width:99px;
	height:28px;
	z-index:1000000;
}
</style>
</head>
<body>
    <div class="hea-date clearfix">
        <div class="hea-right">
            <span class="hea-year">2013年04月14日</span>
            <span>15:49</span>
            <span>星期二</span>
        </div>
        <div class="hea-con clearfix">
            <div class="hea-con-left clearfix">
                <img src="img/kindle.gif" alt="">
                <div class="hea-name">
                    <span class="hea-name-one">雪松</span>
                    <span>，欢迎您来到本平台！</span>
                </div>
            </div>
            <ul>
                <li class="hea-stat" >
                    <a href="getPosDepToAddEmp">                  
                        <span class="hea-imgbg hea-imgtwo"></span>
                        <span>人员管理</span>
                    </a>
                </li>
                <li class="hea-li">
                    <a href="addDep.jsp">
                        <span class="hea-imgbg hea-imgtwo"></span>
                        <span>部门管理</span>
                    </a>
                </li>
                <li>
                    <a href="addPos.jsp">
                        <span class="hea-imgbg hea-imgtwo"></span>
                        <span>职务管理</span>
                    </a>
                </li>
                <li>
                    <a href="addEa.jsp">
                        <span class="hea-imgbg hea-imgtwo"></span>
                        <span>报销单管理</span>
                    </a>
                </li>
                <li>
                    <a href="modifyUser.jsp">
                        <span class="hea-imgbg hea-imgfive"></span>
                        <span>个人信息管理</span>
                    </a>
                </li>
            </ul>
        </div>
        <div class="hea-con-right">
            <span></span>
        </div>
    </div>
    <div class='body'>
        <div class='wrap-nav'>
        	<h1 class='wrap-nav-head ruku-wrap-nav-head'>部门管理</h1>
        	<ul class='wrap-nav-list'>
    			<li><a href='addDep.jsp'>部门添加</a></li>
    			<li class='wrap-nav-show'><a href='findDep.jsp'>部门查找</a></li>
        	</ul>
        </div> 
        <div class='wrap-con'>
        	<div class='wrap-con-nav'>
    	    	<ul class='clearfix'>
    	    		<li class='wrap-con-show'><a>部门查找页面</a></li>
    	    	</ul>
        	</div>
            <div class="wrap-content"> 
            <!-- 这里放你写的内容 --> 
            <div id="all" style="padding: 0px; border: hidden 0px #000000;"  align=center>

				<form name="" method="post" action="ListAllDeByEid">
<table id="formtable" cellpadding="0" cellspacing="0"
						border="1" bordercolor="#CCCCCC">

						<tr>
							<td align="right"><span class="STYLE8">
								部门名称:
							</span></td>
							<td>
							  <p>
							    <input type="hidden" name="dep_id"/>
							    <input type="text" name="dep_name"  />
							  </p>
						    <p>&nbsp;							        </p></td>
				</tr>
						<tr>
							<td align="right"><span class="STYLE8">
								部门负责人编号:
							</span></td>
							<td>
								<input type="text" name="emp_id"  />							</td>
						</tr>
					</table>
				
			
			<p>&nbsp;</p>
			<div id="apDiv2">
              <input type="button" value="清空重写" class="limit-btn limit-btn-turn" />
            </div>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<div id="apDiv1">
              <input type="submit" value="确认查询" class="limit-btn limit-btn-turn" />
            </div>
            </form>
			<p>&nbsp;</p>
<table   cellSpacing=0 cellPadding=0 width=760 align=center border=1>
					<tr>
						<td class="firstline"><div align="center"><span class="STYLE8">
						  部门编号
					    </span></div></td>
						<td class="firstline"><div align="center"><span class="STYLE8">
						  部门名称
					    </span></div></td>
						<td class="firstline"><div align="center"><span class="STYLE8">
						  部门负责人编号
					    </span></div></td>
						<td class="firstline"><div align="center"><span class="STYLE8">操作</span></div></td>
						 <s:iterator value="deListById" id="department">
                    <tr>                   
				       
                
                      <td align="center" height="36">${department.depId}</td>
                      <td align="center"><s:property value="department.depName"/>${department.depName}</td>
                      <td align="center"><s:property value="department.employee.empId"/>${department.employee.empId}</td>
                      <td align="center">
                      <a href="findDepById?depId=<s:property value="depId"/>">修改</a>
                       <a href="deleteDep?depId=<s:property value="depId"/>">删除</a>
                      </td>
                    </tr>
                       </s:iterator>
</tr>
					</table>
				<div id="fenye"><span class="STYLE8">
					<td colspan="6" align="center">
								 ${Count}页
								   
								<s:iterator value="#request.pageOfCount" id="pc">
								
								<a href ="ListAllDeByEid.action?pageNum=${pc.countInt}">${pc.countInt}页</a>
								
								</s:iterator>    
								 
								
								</td>
<span id="fenye_right"> 
					 </span>
				</div>
			</div>
		</div>
</body>
            <!-- 代码接触 --> 
            </div>
        </div>
    </div>
    <div class="footer">
 <span>&copy;&nbsp;2013.&nbsp;OA&nbsp;企业财务报销管理系统</span>
    </div>
</body>
</html>