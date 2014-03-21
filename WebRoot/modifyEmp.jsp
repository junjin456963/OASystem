<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>营销管理</title>
<meta name="description" content="">
<meta name="keywords" content="">
<link href="css/base.css" rel="stylesheet" />

<link rel="stylesheet" href="css/common.css" />

<style>
.STYLE8 {color: #FF9900}
#apDiv1 {
	position:absolute;
	left:366px;
	top:520px;
	width:99px;
	height:28px;
	z-index:1000000;
}
#apDiv2 {
	position:absolute;
	left:451px;
	top:520px;
	width:99px;
	height:28px;
	z-index:1000000;
}
</style>
</head>
<body class="market-sell-body">
	<!-- 这里用头部换掉下面的div -->
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
                    <span class="hea-name-one"><s:property value="#session.employee.empName"/></span>
                    <span>，欢迎您来到本平台！</span>
                </div>
            </div>
            <ul>
                <li class="hea-stat hea-li" >
                    <a href="getPosDepToAddEmp">                  
                        <span class="hea-imgbg hea-imgtwo"></span>
                        <span>人员管理</span>
                    </a>
                </li>
                <li>
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
            <span></span>        </div>
</div>
    <!-- 下面是content左边部分 -->
    <div class='wrap-body'>
        <div class='wrap-nav'>
        	<!-- 将h1标签里的文字换成你的文字，同时找到css中nav-head，修改背景的地址 -->
        	<h1 class='wrap-nav-head sell-wrap-nav-head'>人员管理</h1>
            <!-- 将li里的文字换成你自己的，li不够直接复制<li><a href='#'>这儿放li的文字</a></li>,当前显示的li加class='wrap-nav' -->
        	<ul class='wrap-nav-list'>
    			<li><a href='getPosDepToAddEmp'>人员添加</a></li>
                <li class='wrap-nav-show'><a href='getPosDep'>人员查找</a></li>
        	</ul>
        </div>
        <!-- 下面是content右边部分 -->
        <div class='wrap-con'>
        	<div class='wrap-con-nav'>
    	    	<ul class='clearfix'>
    	    		<!-- 这里是右边导航条，首先改里面的文字，然后有不止一个导航的直接添加<li><a href='#'></a></li>，当前的内容是对应的那个li给它加class='wrap-con-show' -->
    	    		<li class='wrap-con-show'><a>人员信息修改页面</a></li>
    	    	</ul>
        	</div>
          <div class="wrap-content"> 

  

                            
<div id="all" style="padding: 0px; border: hidden 0px #000000;"  align=center>

    <form name="" method="post" action="modifyEmp">
					<p>&nbsp;</p>
<table id="formtable" cellpadding="0" cellspacing="0" width="90%"
						 border="1" bordercolor="#CCCCCC">
 						<tr>
							<td align="right"><span class="STYLE8">
								员工编号: 
							</span></td>
							<td>
								<p>
								 <input type="hidden" name="emp.empId" value=${emp.empId}>
								  <s:property value="emp.empId" />
							  </p>
							<p>&nbsp;								          </p></td>
</tr>
						<tr>
<td align="right"><span class="STYLE8"> 
								员工姓名: 
							</span></td>
							<td>
								<p>
								  <input type="text" name="emp.empName" value=${emp.empName}>
							  </p>
							<p>&nbsp;								          </p></td>
</tr>
						
						<tr>
<td align="right"><span class="STYLE8"> 
								所在部门: 
							</span></td>
							<td>
							<p> <s:property value="emp.department.depName" /></p>
								<p>
								  <select name="emp.department.depId">
								   <s:iterator value="DepList">                 
									    <option value="<s:property value="depId"/>"><s:property value="depName"/></option>
								   </s:iterator>
							      </select>
							  </p>
							<p>&nbsp;								          </p></td>
						</tr>
						<tr>
<td align="right"><span class="STYLE8"> 
								职务: 
							</span></td>
							<td>
							<p><s:property value="emp.position.postName" /></p>
								<p>
								  <select name="emp.position.postId">
								   <s:iterator value="PosList">                 
									    <option value="<s:property value="postId"/>"><s:property value="postName"/></option>
								   </s:iterator>
							      </select>
							  </p>
							<p>&nbsp;						            </p></td>
					    </tr>	    
					    <tr>
                            <td align="right"><span class="STYLE8"> 
								密码: 
							</span></td>
							<td>
								<p>
								  <input type="text" name="emp.empPw" value=${emp.empPw}>
							  </p>
							<p>&nbsp;								          </p></td>
                         </tr>
						
		  </table>
	  

                           
                     

              <div id="apDiv1">
                <input type="submit" value="确认修改" class="limit-btn limit-btn-turn" />
        </div>
          </form>
</div>
            </div>
        </div>
    </div>
    <iframe style="overflow:hidden;width:100%;height:100%; position:absolute;top:0;left:0; z-index:999997;display:none;" ></iframe>
    <div class="scre-Wrap" style="display:none;z-index:999998;"></div> 

    <div class="pop-wrap" style="display:none;">
        
        <div class="sales-record">
            <div class="sales-top">
                <h1>销售记录</h1>
            </div>
            <div class="sales-con">
                <p>
                    <span>产品名称</span>&nbsp;&nbsp;
                    <span class="sales-proname">XXXXXXXXXXXX</span>
                </p>
                <p>
                    <span>产品ID--</span>&nbsp;&nbsp;
                    <span class="sales-proId">XXXXXXXXXXXX</span>
                </p>
                <p>
                    <span>销售时间</span>&nbsp;&nbsp;
                    <span class="sales-dtm">XXXXXXXXXXXX</span>
                </p>
                <p>
                    <span>销售门店</span>&nbsp;&nbsp;
                    <span class="sales-storeName">XXXXXXXXXXXX</span>
                </p>
                <p>
                    <span>销售员</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span class="sales-seller">XXXXXXXXXXXX</span>
                </p>
                <p class="sales-price">
                    <span>销售价格</span>&nbsp;
                    <input type="text" name="Price"  value="100.00" />
                </p>
                <p>
                    <span>底价原因</span>&nbsp;
                    <select name="" id="Reduce" class="sales-reduce">
                        <option value=""> 原因1</option>
                        <option value=""> 原因2</option>
                        <option value=""> 原因3</option>
                    </select>
                </p>
            </div>
            <div class="sales-state">
                    <span>状态</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span>PS:</span>
                    <span>PASS</span>               
                <p>
                    <span>RS:</span>
                    <span>PASS</span>
                </p>
                <p>
                    <span>CM:</span>
                    <span></span>
                </p>
                <p>
                    <span>PM:</span>
                    <span></span>
                </p>
                <div class="sales-check ">
                    <span>审批</span>&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" name="test" value="None" />
                    <span>None</span>
                    <input type="radio" name="test" value="Pass" />
                    <span>Pass</span>
                    <input type="radio" name="test" value="Delete" />
                    <span>Delete</span>
                </div>
                <div class="sales-choice">
                    <input class="sales-choice-NO" type="button" value="取消" />
                    <input type="button" value="确认" />          
                </div>
            </div>
        </div>
       
    </div> 
    <img src="img/loader.gif" class="loading" style="display:none;" />
    <!-- 下面用尾部替换 -->
   <div class="footer">
 <span>&copy;&nbsp;2013.&nbsp;OA&nbsp;企业财务报销管理系统</span>
   </div>
</body>
<script src="js/jquery.js"></script>
<script src="js/page.js"></script>
</html>