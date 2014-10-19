<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<!-- formChech 자바스크립트 -->
<script type="text/javascript" src="resources/js/formCheck.js"></script>
<title>Home</title>
</head>
<body>
	<div class="container">
		<h1>Hello world!</h1>

		<P>The time on the server is ${serverTime}.</P>
		<form action="/todaygye/loginform" method="get">
			<ul>
				<li><input class="btn btn-primary" type="submit" value="LoginForm" /></li>
			</ul>
		</form>
	</div>
</body>
</html>
