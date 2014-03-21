<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>考勤管理</title>
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
	left:355px;
	top:611px;
	width:74px;
	height:35px;
	z-index:1000007;
}
#apDiv14 {
	position:absolute;
	left:389px;
	top:605px;
	width:74px;
	height:32px;
	z-index:1000008;
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
                    <a href="addEa.html">
                        <span class="hea-imgbg hea-imgtwo"></span>
                        <span>报销单管理</span>
                    </a>
                </li>
                <li>
                    <a href="modifyUser.html">
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
    <div id="apDiv4">
      <table width="640" height="88" class="sell-table-center">
        <tr>
          <th width="150" height="38"><span class="STYLE8"> 填写人</span></th>
          <th width="150"><span class="STYLE8">填写时间</span></th>
          <th width="150"><span class="STYLE8">总金额</span></th>
          <th width="170"><span class="STYLE8">状态</span></th>
        </tr>
        <tr>
          <td height="42"></td>
          <td></td>
          <td></td>
          <td></td>
        </tr>
      </table>
      <p></p>
</div>
    <div id="apDiv7">
      <table width="638" height="192" border="1" bordercolor="#CCCCCC">
        <tr>
          <th width="142" height="38"><span class="STYLE10">项目</span></th>
          <th width="175" height="38"><span class="STYLE10"> 金额</span></th>
          <th width="244" height="38"><span class="STYLE10"> 费用说明</span></th>
          <th width="49"></th>
        </tr>
        <tr>
          <td height="38"></td>
          <td></td>
          <td></td>
          <td></td>
        </tr>
        <tr>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
        </tr>
        <tr>
          <td height="65"></td>
          <td></td>
          <td></td>
          <td></td>
        </tr>
      </table>
      <table width="639" height="105" border="1" bordercolor="#CCCCCC">
        <tr>
          <th width="145" height="38"></th>
          <td width="3"></th>
          <th width="469" colspan="2"><label>
          <textarea name="textarea" id="textarea" cols="60" rows="5"></textarea>
          </label></th>
        </tr>
      </table>
    </div>
    <div id="apDiv8">
      <label></label>
      <select name="select" id="select">
        <option value="1" selected>交通费</option>
        <option value="2"><span class="STYLE10">住宿费</option>
                  </select>
    </div>
    <div id="apDiv9">
      <label>
      <input name="textfield" type="text" id="textfield" value="1000">
      </label>
    </div>
    <div id="apDiv10">
      <label>
      <input type="text" name="textfield2" id="textfield2">
      </label>
    </div>
    <div id="apDiv11">
      <label>
      <input type="submit" name="button" id="button" value="增加">
      </label>
    </div>
    <div id="apDiv12"><span class="STYLE10">事由：</span></div>
    <div id="apDiv13">
      <label>
      <input type="submit" name="button2" id="button2" value="确认修改">
      </label>
    </div>
    <div class='wrap-body'>
        <div class='wrap-nav'>
        	<h1 class='wrap-nav-head check-wrap-nav-head'>报销单管理</h1>
        	<ul class='wrap-nav-list'><li><a href='addEa.html'>添加报销单</a></li>
            <li><a href='checkEa.html'>审批报销单</a></li>
    			<li class='wrap-nav-show'><a href='findEa.html'>查询报销单</a></li>
        	</ul>
        </div>
      <div class='wrap-con'>
       	<div class='wrap-con-nav'>
    	    	<ul class='clearfix'>
    	    		<li class='wrap-con-show'><a>报销单修改页面</a></li>
    	    	</ul>
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
</html>