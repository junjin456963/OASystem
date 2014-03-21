<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html>
<head>
	<title>企业财务报销管理系统</title>
	<link rel="stylesheet" href="css/index.css" />
	<link rel="stylesheet" href="css/base.css" />
</head>
<body>
	<div class="ind-all">
		<div class="ind-top"></div>
		<div class="ind-land">
			<div class="ind-land-top"></div>
			<form method="post" class="ind-go" action="login">
				<h1>登录企业财务报销管理系统</h1>
				<dl class="ind-name">
					<dt>
						<label for="name"></label>
					</dt>
					<dd>
						<input type="text" name="emp.empId" class="ind-Nametext" value="" />
					</dd>
				</dl>
				<dl class="ind-password">
					<dt>
						<label for="password"></label>
					</dt>
					<dd>
						<input type="password" name="emp.empPw" class="ind-Passtext" value="" />
					</dd>
				</dl>
				<p>
					<span>清空</span>
				</p>
				<p>
					<input type="submit" id="Login" class="ind-Login" value="登陆"/>
				</p>
								
			</form >
		</div>
		<div class="footer">
			<span>&copy;&nbsp;2012.&nbsp;Kindle&nbsp;企业财务报销管理系统</span>
		</div>
	</div>
</body>
</html>