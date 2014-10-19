<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- 리스트의 사이즈 조사를 위한 태그 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- 소수점처리 위한 태그 -->

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
<title>TodayGye - MemberList</title>
</head>

<body>
	<!-- wrap -->
	<div id="wrap">
		<!-- header -->
		<div id="header">
			<div class="page-header">
				<h1>
					회원 리스트&nbsp;&nbsp;<small>현재 "<%=loginId%>"님으로 로그인 하셨습니다.
					</small>
				</h1>
			</div>

			<ul class="nav nav-pills nav-justified navbar-static-top">
				<li class="active"><a href="/todaygye/list">회원리스트</a></li>
			</ul>
		</div>
		<!-- header end -->
		<!-- container -->
		<div id="container">
			<table class="table table-bordered table-hover">
				<thead>
					<tr class="danger">
						<th>번호</th>
						<th>아이디</th>
						<th>대화명</th>
						<th>성별</th>
						<th>이메일</th>
						<th>ip</th>
						<th>가입일</th>
					</tr>
				</thead>
				<c:forEach items="${userList }" var="userList">
					<tbody>
						<tr>
							<td>${userList.idx }</td>
							<td class="success">${userList.id }</td>
							<td>${userList.nick }</td>
							<td>${userList.gender }</td>
							<td>${userList.email1 }@${userList.email2 }</td>
							<td>${userList.regIp }</td>
							<td>${userList.regDate }</td>
						</tr>
					</tbody>
				</c:forEach>
			</table>
		</div>
		<!-- container end -->
		<!-- footer -->
		<div id="footer">
			<div id="page">
				<ul class="pagination">
					<c:if test="${page > 0}">
						<li class=""><a href="/todaygye/memberlist?page=${page-8}">이전페이지</a></li>
					</c:if>
					<c:if test="${page == 0}">
						<li class=""><a href="#">이전페이지</a></li>
					</c:if>

					<li class=""><a href="#"><fmt:parseNumber
								value="${page/8+1 }" type="number" integerOnly="True" />페이지</a></li>

					<c:if test="${fn:length( userList ) < 8}">
						<li class=""><a href="#">다음페이지</a></li>
					</c:if>
					<c:if test="${fn:length( userList ) == 8}">
						<li class=""><a href="/todaygye/memberlist?page=${page+8}">다음페이지</a></li>
					</c:if>
				</ul>
			</div>
			<address>Copyright ⓒ 2014 Iruentech All rights reserved</address>
		</div>
		<!-- footer end -->
	</div>
	<!-- wrap -->
</body>
</html>