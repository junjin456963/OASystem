<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>报销单管理</title>
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

<style type="text/css">
<!--
#apDiv1 {	position:absolute;
	left:9px;
	top:13px;
	width:809px;
	height:638px;
	z-index:1;
}
#apDiv2 {
	position:absolute;
	left:114px;
	top:169px;
	width:634px;
	height:486px;
	z-index:1000000;
}
#apDiv3 {
	position:absolute;
	left:168px;
	top:177px;
	width:50px;
	height:20px;
	z-index:1000000;
}
#apDiv4 {
	position:absolute;
	left:117px;
	top:164px;
	width:635px;
	height:491px;
	z-index:1000000;
}
.STYLE8 {color: #FF9900}
#apDiv5 {
	position:absolute;
	left:120px;
	top:291px;
	width:612px;
	height:116px;
	z-index:1000001;
}
#apDiv6 {
	position:absolute;
	left:126px;
	top:311px;
	width:73px;
	height:102px;
	z-index:1000001;
}
#apDiv7 {
	position:absolute;
	left:118px;
	top:296px;
	width:639px;
	height:357px;
	z-index:1000001;
}
.STYLE10 {
	color: #FF9900;
	font-size: 12px;
}
#apDiv8 {
	position:absolute;
	left:158px;
	top:435px;
	width:59px;
	height:30px;
	z-index:1000002;
}
#apDiv9 {
	position:absolute;
	left:268px;
	top:436px;
	width:153px;
	height:30px;
	z-index:1000003;
}
#apDiv10 {
	position:absolute;
	left:502px;
	top:438px;
	width:147px;
	height:26px;
	z-index:1000004;
}
#apDiv11 {
	position:absolute;
	left:707px;
	top:438px;
	width:34px;
	height:32px;
	z-index:1000005;
}
#apDiv12 {
	position:absolute;
	left:177px;
	top:524px;
	width:43px;
	height:26px;
	z-index:1000006;
}
#apDiv13 {
	position:absolute;
	left:604px;
	top:231px;
	width:38px;
	height:21px;
	z-index:1000000;
}
#apDiv14 {
	position:absolute;
	left:648px;
	top:231px;
	width:40px;
	height:22px;
	z-index:1000001;
}
#apDiv15 {
	position:absolute;
	left:694px;
	top:231px;
	width:40px;
	height:23px;
	z-index:1000002;
}
#apDiv16 {
	position:absolute;
	left:113px;
	top:323px;
	width:640px;
	height:122px;
	z-index:1000000;
}
#apDiv17 {
	position:absolute;
	left:137px;
	top:376px;
	width:87px;
	height:45px;
	z-index:1000000;
}
#apDiv18 {
	position:absolute;
	left:140px;
	top:462px;
	width:85px;
	height:32px;
	z-index:1000001;
}
#apDiv19 {
	position:absolute;
	left:255px;
	top:462px;
	width:93px;
	height:30px;
	z-index:1000002;
}
#apDiv20 {
	position:absolute;
	left:373px;
	top:462px;
	width:90px;
	height:31px;
	z-index:1000003;
}
#apDiv21 {
	position:absolute;
	left:767px;
	top:189px;
	width:90px;
	height:31px;
	z-index:1000004;
}
-->
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
                    <span class="hea-name-one"><s:property value="#session.employee.empName"/></span>
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
                <li>
                    <a href="addPos.jsp">
                        <span class="hea-imgbg hea-imgtwo"></span>
                        <span>职务管理</span>
                    </a>
                </li>
                <li class="hea-li">
                    <a href="addEa.jsp">
                        <span class="hea-imgbg hea-imgtwo"></span>
                        <span>报销单管理</span>
                    </a>
                </li>
                <li>
                    <a href="modifyUser.jsp">
                        <span class="hea-imgbg hea-imgtwo"></span>
                        <span>个人信息管理</span>
                    </a>
                </li>
            </ul>
        </div>
        <div class="hea-con-right">
            <span></span>        </div>
</div>
    <div id="apDiv21">
      <label><span class="STYLE8"><input type="button" value="返回" onClick="history.go(-1)"></label>
</div>
<div class='wrap-body'>
        <div class='wrap-nav'>
        	<h1 class='wrap-nav-head check-wrap-nav-head'>报销单管理</h1>
        	<ul class='wrap-nav-list'><li><a href='addEa.jsp'>添加报销单</a></li>
    			<li class='wrap-nav-show'><a href='findEa.jsp'>查询报销单</a></li>
        	</ul>
        </div>
      <div class='wrap-con'>
       	<div class='wrap-con-nav'>
    	    	<ul class='clearfix'>
    	    		<li class='wrap-con-show'><a>报销单明细页面</a></li>
    	  </ul>
       	</div>
        <p>&nbsp;</p>
                   <table width="635" height="162" border="1" bordercolor="#CCCCCC">
                     <tr>
                       <th width="120" height="32"><span class="STYLE8">填写人</span></th>
                       <th width="186"><span class="STYLE8">填报时间</span></th>
                       <th width="207"><span class="STYLE8">总金额</span></th>
                       <th width="94"><span class="STYLE8">状态</span></th>
                     </tr>
                     <tr>
                       <th height="37"><s:property value="claim.employee.empName"/></th>
                       <th><s:property value="claim.claTime"/></th>
                       <th><s:property value="claim.claMoney"/></th>
                       <th><s:property value="claim.state"/></th>
                     </tr>
                     <tr>
                       <th height="39"><span class="STYLE8">项目</span></th>
                       <th><span class="STYLE8">金额</span></th>
                       <th colspan="2"><span class="STYLE8">费用说明</span></th>
                     </tr>
                  <s:iterator value="detailList">                 
				    
                     <tr>
                       <th height="42"><s:property value="itemName"/></th>
                       <th><s:property value="claMoney"/></th>
                       <th colspan="2"><s:property value="reason"/></th>
                     </tr>
                  </s:iterator>
                   </table>
        <p>&nbsp;</p>
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
</html>