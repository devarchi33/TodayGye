<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.michiget.todaygye.beans.*"%>
<%@ page session="true"%>
<%
	UserInfo userInfo = (UserInfo) session.getAttribute("userInfo");
	String loginId = session.getAttribute("loginId").toString();
	if (userInfo != null && loginId != null)
		System.out.println("list.jsp : Session ok!!");
	else
		System.out.println("list.jsp : Session invalidated!!");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<!-- formChech 자바스크립트 -->
<script type="text/javascript" src="resources/js/formCheck.js"></script>
<title>TodayGye - loginsuccess</title>
</head>
<body>
	<div class="container">
		<h1>
			"<%=loginId%>" loginsuccess
		</h1>

		<form action="/todaygye/memberlist" method="get">
			<ul>
				<li><input class="btn btn-primary" type="submit" value="회원리스트" /></li>
			</ul>
		</form>
	</div>
</body>
</html>