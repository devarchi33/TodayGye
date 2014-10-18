<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 초기화 CSS -->
<link rel="stylesheet" type="text/css" href="resources/css/reset.css" />
<!-- 합쳐지고 최소화된 최신 CSS -->

<!-- formChech 자바스크립트 -->
<script type="text/javascript" src="resources/js/formCheck.js"></script>
<title>Home</title>
</head>
<body>
	<h1>Hello world!</h1>

	<P>The time on the server is ${serverTime}.</P>
	<form action="/todaygye/loginform" method="get">
		<ul>
			<li><input class="btn btn-primary" type="submit" value="로그인" /></li>
			<li><a class="btn btn-primary" href="/todaygye/joinform">회원가입</a></li>
		</ul>
	</form>
</body>
</html>
