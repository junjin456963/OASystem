<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>职务管理</title>
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
	left:404px;
	top:197px;
	width:99px;
	height:28px;
	z-index:1000000;
}
#apDiv2 {
	position:absolute;
	left:565px;
	top:197px;
	width:99px;
	height:28px;
	z-index:1000000;
}
#apDiv3 {
	position:absolute;
	left:1011px;
	top:251px;
	width:26px;
	height:26px;
	z-index:1000001;
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
                <li>
                    <a href="addDep.jsp">
                        <span class="hea-imgbg hea-imgtwo"></span>
                        <span>部门管理</span>
                    </a>
                </li>
                <li class="hea-li">
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
    <div class='wrap-body'>
        <div class='wrap-nav'>
        	<h1 class='wrap-nav-head wuliao-wrap-nav-head'>职务管理</h1>
        	<ul class='wrap-nav-list'>
    			<li><a href='addPos.jsp'>添加职务</a></li>
    			<li class='wrap-nav-show'><a href='findPos.jsp'>查找职务</a></li>
        	</ul>
        </div>
        
        <div class='wrap-con'>
        	<div class='wrap-con-nav'>
    	    	<ul class='clearfix'>
    	    		<li class='wrap-con-show'><a>职务查找页面</a></li>
    	    	</ul>
        	</div>
            <div class="wrap-content">
             <!-- 这里放你写的内容 --> 
             
             <div id="all" style="padding: 0px; border: hidden 0px #000000;"  align=center>
               <form name="" method="post" action="ListAllPoByEid">
                 <table id="formtable" cellpadding="0" cellspacing="0"
						 border="1" bordercolor="#CCCCCC">

						<tr>
							<td align="right"><span class="STYLE8">
								所属部门编号:
							</span></td>
							<td>
								<input type="text" name="post_salarymin" onBlur="chkNumber(this)"/>							</td>
						</tr>
					</table>
				
				<div id="apDiv1">
				  <input type="submit" value="确认查询" class="limit-btn limit-btn-turn" />
			   </div>
				<div id="apDiv2">
                  <input type="button" value="清空重写" class="limit-btn limit-btn-turn" />
                </div>
                </form>
				<p>&nbsp;</p>
			   <p>&nbsp;</p>
		       <p>&nbsp;</p>
		       <p>&nbsp;</p>
<table   cellSpacing=0 cellPadding=0 width=564 align=center border=1>
                   <tr>
						<td width="106" class="firstline"><div align="center"><span class="STYLE8">
						  职务ID
					    </span></div>
					    </td>
						<td width="224" class="firstline"><div align="center"><span class="STYLE8">
						  职务名称
						</span></div></td>
					 <s:iterator value="poListById" id="poListById">
                    <tr>                   
				       
                      <td align="center"><s:property value="poListById.postId"/>${poListById.postId}</td>
                      <td align="center"><s:property value="poListById.postName"/>${poListById.postName}</td>
                    </tr>
                       </s:iterator>
</tr>
					</table>
				<div id="fenye"><span class="STYLE8">
					<td colspan="6" align="center">
								 ${Count}页
								   
								<s:iterator value="#request.pageOfCount" id="pc">
								
								<a href ="ListAllPoByEid.action?pageNum=${pc.countInt}">${pc.countInt}页</a>
								
								</s:iterator>    
								 
								
								</td>
			
				<!--此处为循环遍历输出查询结果 -->

				
					</table>
				
			</div>
		</div>
             
             <!-- 代码结束-->
             </div>
        </div>
    </div>
    <div class="footer">
      <span>企业财务报销管理系统</span>
    </div>
</body>
</html>