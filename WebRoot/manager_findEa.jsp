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
	left:127px;
	top:398px;
	width:625px;
	height:113px;
	z-index:1000000;
}
#apDiv17 {
	position:absolute;
	left:621px;
	top:301px;
	width:39px;
	height:22px;
	z-index:1000001;
}
#apDiv18 {
	position:absolute;
	left:676px;
	top:301px;
	width:40px;
	height:23px;
	z-index:1000002;
}
#apDiv19 {
	position:absolute;
	left:710px;
	top:228px;
	width:41px;
	height:25px;
	z-index:1000003;
}
#apDiv20 {
	position:absolute;
	left:151px;
	top:746px;
	width:527px;
	height:45px;
	z-index:1000004;
}
#apDiv21 {
	position:absolute;
	left:161px;
	top:184px;
	width:96px;
	height:38px;
	z-index:1000005;
}
#apDiv22 {
	position:absolute;
	left:286px;
	top:147px;
	width:75px;
	height:30px;
	z-index:1000006;
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

<li class="hea-li">
        <a href="Emp_addEa.jsp">
                        <span class="hea-imgbg hea-imgtwo"></span>
                        <span>报销单管理</span>
        </a>
              </li>
                                <li>
                    <a href="Emp_modifyUser.jsp">
                        <span class="hea-imgbg hea-imgfive"></span>
                        <span>个人信息管理</span>
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
<div id="apDiv16">
<table width="625" height="110" border="1" bordercolor="#CCCCCC">
        <tr>
          <th width="45" height="32"><span class="STYLE8">编号</span></th>
          <th width="115"><span class="STYLE8">填报日期</span></th>
          <th width="77"><span class="STYLE8">填报人</span></th>
          <th width="74"><span class="STYLE8">待处理人</span></th>
          <th width="71"><span class="STYLE8">金额</span></th>
          <th width="64"><span class="STYLE8">状态</span></th>
          <th width="133"><span class="STYLE8">操作</span></th>
        </tr>
        <s:iterator value="claimList1"> 

       <tr>
          <td align="center" height="32"><s:property value="claId"/></td>
          <td align="center"><s:property value="claTime"/></td>
          <td align="center"><s:property value="employee.empName"/></td> 
          <td align="center">
                <s:if test="state == '提交'">
                                             部门负责人
               </s:if>
               <s:elseif test='state == "审核中"'>
                                             总经理
               </s:elseif>
               <s:elseif test='state == "已付款"'>
                                             自己
               </s:elseif>
               <s:elseif test='state == "合格"'>
                                             财务
               </s:elseif>
               <s:elseif test='state == "打回"'>
                                              自己
               </s:elseif>
          </td>
          
          <td align="center"><s:property value="claMoney"/></td>
          <td align="center"><s:property value="state"/></td>
          <td align="center">
	          &nbsp;&nbsp;&nbsp;&nbsp;
	          <s:a href="FindDetail?claId=%{claId}">明细</s:a>
	          &nbsp;&nbsp;&nbsp;&nbsp;
	        <s:if test="state == '打回'">
	          <s:a href="modifyEa.jsp?claId=%{claId}">修改</s:a>
	        </s:if>
          </td>
        </tr>
        </s:iterator>
     

      </table>
</div>
<div id="apDiv17"><span class="STYLE8"></span></div>
<div id="apDiv18"><span class="STYLE8"></span></div>
<div id="apDiv20"><span class="STYLE8"> 
<p> ${Count}页
								   
								<s:iterator value="#request.pageOfCount" id="pc">
								
								<a href ="FindClaimByState.action?pageNum=${pc.countInt}">${pc.countInt}页</a>
								
								</s:iterator>  
		            </p>
</span></div>
<div id="apDiv21">
  <form action="FindClaimByState">
  <label>
  <select name="select" id="select">
    <option value="1">全部</option>
    <option value="2">未审批</option>
    <option value="3">已审批</option>
  </select>
  <input type="submit" value="查询" class="limit-btn limit-btn-turn" />
  </label>
  </form>
</div>
<div id="apDiv22">
  <label>
  

  </label>
</div>
<div class='wrap-body'>
        <div class='wrap-nav'>
        	<h1 class='wrap-nav-head check-wrap-nav-head'>报销单管理</h1>
        	<ul class='wrap-nav-list'><li><a href='manager_addEa.jsp'>添加报销单</a></li>
        	     <li><a href='CheckClaim'>审批报销单</a></li>
    			<li class='wrap-nav-show'><a href='manager_findEa.jsp'>查询报销单</a></li>
        	</ul>
        </div>
      <div class='wrap-con'>
       	<div class='wrap-con-nav'>
    	    	<ul class='clearfix'>
    	    		<li class='wrap-con-show'><a>报销单查询页面</a></li>
    	  </ul>
       	</div>
                   <p>&nbsp;</p>
                   <p>&nbsp;</p>
                   <p>&nbsp;</p>
                   <p>&nbsp;</p>
                   <p>&nbsp;</p>
                   <p>&nbsp;</p>
                   <p>&nbsp;</p>
        <p>&nbsp;</p>
                   <p>&nbsp;</p>
                   <p>&nbsp;</p>
                   <p>&nbsp;</p>
                   <p>&nbsp;</p>
                   <p>&nbsp;</p>
                   <p>&nbsp;</p>
                   <p>&nbsp;</p>
                   <p>&nbsp;</p>
        <p>&nbsp;</p>
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