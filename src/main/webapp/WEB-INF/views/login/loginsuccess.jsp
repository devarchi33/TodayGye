<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 초기화 CSS -->
<link rel="stylesheet" type="text/css" href="resources/css/reset.css" />

<!-- formChech 자바스크립트 -->
<script type="text/javascript" src="resources/js/formCheck.js"></script>
<title>TodayGye - loginsuccess</title>
</head>
<body>
	<p>loginsuccess</p>
	<form action="/todaygye/logout" method="get"
		onsubmit="return logout();">
		<ul>
			<li><input class="btn btn-primary" type="submit" value="로그아웃" /></li>
		</ul>
	</form>
	<form action="/todaygye/memberlist" method="get">
		<ul>
			<li><input class="btn btn-primary" type="submit" value="회원리스트" /></li>
		</ul>
	</form>
</body>
</html>