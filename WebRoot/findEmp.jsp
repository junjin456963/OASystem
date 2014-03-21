<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>门店管理</title>
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
	left:133px;
	top:311px;
	width:608px;
	height:53px;
	z-index:1000000;
}
#apDiv18 {
	position:absolute;
	left:678px;
	top:458px;
	width:40px;
	height:23px;
	z-index:1000002;
}
#apDiv {
	position:absolute;
	left:739px;
	top:458px;
	width:40px;
	height:23px;
	z-index:1000002;
}
#apDiv22 {
	position:absolute;
	left:427px;
	top:316px;
	width:75px;
	height:30px;
	z-index:1000006;
}
#apDiv2 {
	position:absolute;
	left:594px;
	top:316px;
	width:75px;
	height:30px;
	z-index:1000006;
}
</style>
</head>

<body class="market-store-body">
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
                <li class="hea-stat hea-li" >
                    <a href="addEmp.jsp">                  
                        <span class="hea-imgbg hea-imgtwo"></span>
                        <span>人员管理</span>
                    </a>
                </li>
                <li >
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
    <div class='wrap-body'>
        <div class='wrap-nav'>
        	<h1 class='wrap-nav-head  sell-wrap-nav-head'>人员管理</h1>
        	<ul class='wrap-nav-list'>
    			<li><a href='getPosDepToAddEmp'>人员添加</a></li>
                <li class='wrap-nav-show'><a href='getPosDep'>人员查找</a></li>
        	</ul>
        </div>
      <div class='wrap-con'>
        	<div class='wrap-con-nav'>
    	    	<ul class='clearfix'>
    	    		<li class='wrap-con-show'><a>人员查找页面</a></li>
    	    	</ul>
        	</div>
        <div class="wrap-content">
          <div class="store">
                                <div class="market-sell">
                                    <!-- 开始插入代码-->
                                    		<div id="all" style="padding: 0px; border: hidden 0px #000000;"  align=center>

				<form name="" method="post" action="ListAllEmByEid">
				  <table id="formtable" cellpadding="0" cellspacing="0"
						 border="1" bordercolor="#CCCCCC"><!--
						<tr>
							<td align="right">
								员工编号:
							</td>
							<td>
								
							</td>
					    </tr>
						--><tr>
<td align="right"><span class="STYLE8">
								员工姓名:
							</span></td>
							<td>
							  <p>
							    <input type="hidden" name="emp_id"/>
							    <input type="text" name="emp_name"  />
							  </p>
						    <p>&nbsp;							        </p></td>
						</tr>
                           <tr>
<td align="right"><span class="STYLE8">
								所在部门:
							</span></td>
							<td>
								<p>
								  <!--<input type="text" name="dep_id"  />
								-->
								  <select name="dep_id">
								   <option value="0">全部</option>  
								   <s:iterator value="DepList">               
									    <option value="<s:property value="depId"/>"><s:property value="depName"/></option>
								   </s:iterator>
							      </select>
							  </p>
							 <p>&nbsp;								         </p></td>
						</tr>
						<tr>
<td height="43" align="right"><span class="STYLE8">
								职务:
							</span></td>
							<td>
								<p>
								  <select name="post_id">
								    <option value="0">全部</option>
								   <s:iterator value="PosList">                 
									    <option value="<s:property value="postId"/>"><s:property value="postName"/></option>
								   </s:iterator>
							      </select>
							  </p>
							<p>&nbsp;						            </p></td>
					    </tr>
				  </table>
	
				

			    <div id="fenye">
			      <p>&nbsp;</p>
			      <p>&nbsp;</p>
			      <div id="apDiv22">
                    <label>
                    <input type="submit" value="确认查询" class="limit-btn limit-btn-turn" />
                    </label>
                  </div>
			      <p>&nbsp;</p>
			      <div id="apDiv2">
                    <label>
                    <input type="button" value="清空重写" class="limit-btn limit-btn-turn" />
                    </label>
                  </div>
                  </form>
			      <p>&nbsp;</p>
			      <table width="449" height="76" border="1" bordercolor="#CCCCCC">
                    <tr>
                      <th width="45"><span class="STYLE8">编号</span></th>
                      <th width="45" height="32"><span class="STYLE8">姓名</span></th>
                      <th width="115"><span class="STYLE8">所在部门</span></th>
                      <th width="77"><span class="STYLE8">职务</span></th>
                      <th width="133"><span class="STYLE8">操作</span></th>
                    </tr>
                    
							
							<tr>
								
                     <s:iterator value="#request.emListById" id ="em">
                    <tr>                   
				        
                     <td align="center"><s:property value="empId"/></td>
                      <td align="center" height="36"><s:property value="empName"/></td>
                      <td align="center"><s:property value="department.depName"/></td>
                      <td align="center"><s:property value="position.postName"/></td>
                      <td >&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="findEmpById?empId=<s:property value="empId"/>">修改</a>
                       <a href="deleteEmp?empId=<s:property value="empId"/>">删除</a>
                      </td>
                    </tr>
                       </s:iterator>
                  </table>
			      <p>&nbsp;</p>
			      <p>&nbsp;</p>
			      <p> ${Count}页
								   
								<s:iterator value="#request.pageOfCount" id="pc">
								
								<a href ="ListAllEmByEid.action?pageNum=${pc.countInt}">${pc.countInt}页</a>
								
								</s:iterator>  
		            </p>
			    </div>

			</div>
		</div>
                                    <!-- 结束插入代码-->
          </div>
                            </div>      
                        </div>
        </div><!--  -->
     <iframe style="overflow:hidden;width:100%;height:100%; position:absolute;top:0;left:0; z-index:999997;display:none;" ></iframe>
    <div class="scre-Wrap" style="display:none;z-index:999998;"></div> 
    <div class="pop-wrap" style="display:none;">
        <div class="delete-reason">
            <p>
                <span>确定要删除ID=</span>
                <span>n</span>
                <span>的记录吗？</span>
            </p>
            <div class="del-choice">
                <input class="sales-choice-NO" type="button" value="取消" />
                <input type="button" value="确认" />
            </div>
        </div>
    </div>
    <img src="img/loader.gif" class="loading" style="display:none;" />
    <div class="scre-Wrap" style="display:none;"></div>
    <div class="pop-wrap" style="display:none;">
        <div class="edit-portal">
            <div class="edit-top">
                <h1>编辑门店</h1>
            </div>
            <div class="ePortal-con">
                <p>
                    <label>门店名称</label>
                    <input type="text" value="" />
                </p>
                <p>
                    <label>附加信息</label>
                    <input type="text" value="" />
                </p>
            </div>
            <div class="ePortal-choice">
                    <input class="sales-choice-NO" type="button" value="取消" />
                    <input type="button" value="确认" />
            </div>
        </div>
    </div>
    <img src="img/loader.gif" class="loading" style="display:none;" />
    <div class="scre-Wrap" style="display:none;"></div>
    <div class="pop-wrap" style="display:none;">
        <div class="edit-portal">
            <div class="edit-top">
                <h1>添加门店</h1>
            </div>
            <div class="ePortal-con">
                <p>
                    <label>门店名称</label>
                    <input type="text" value="" />
                </p>
                <p>
                    <label>附加信息</label>
                    <input type="text" value="" />
                </p>
            </div>
            <div class="ePortal-choice">
                    <input class="sales-choice-NO" type="button" value="取消" />
                    <input type="button" value="确认" />
            </div>
        </div>
    </div>
    <img src="img/loader.gif" class="loading" style="display:none;" />
    <!--  -->
    <div class="footer">
        <span>&copy;&nbsp;2012.&nbsp;Kindle&nbsp;零售渠道管理平台</span>
    </div>
</body>
<script src="js/jquery.js"></script>
<script src="js/page.js"></script>
</html>