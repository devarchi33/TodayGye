<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>TodayGye - JoinSite</title>
<!-- formChech 자바스크립트 -->
<script type="text/javascript" src="resources/js/formCheck.js"></script>
</head>
<body>
	<form action="/todaygye/joinsite" name="joinForm" method="POST"
		enctype="multipart/form-data" onsubmit="return joinFormCheck();">
		<table border="1" cellspacing="0" width="500" height="400"
			align="center">
			<caption>글쓰기</caption>
			<tr height="50">
				<th width="120">아이디</th>
				<td>&nbsp;&nbsp;<input type="text" name="id" /></td>
			</tr>
			<tr height="50">
				<th width="120">비밀번호</th>
				<td>&nbsp;&nbsp;<input type="password" name="pass" /></td>
			</tr>
			<tr height="50">
				<th width="120">대화명</th>
				<td>&nbsp;&nbsp;<input type="text" size="" name="nick" /></td>
			</tr>
			<tr height="50">
				<th>성별</th>
				<td>&nbsp;&nbsp;<input type="radio" name="gender" value="남자"
					checked="checked" />남자 <input type="radio" name="gender"
					value="여자" />여자
				</td>
			</tr>
			<tr>
				<th>이메일</th>
				<td>&nbsp;&nbsp;<input type="text" size="11" name="email1" />@
					<input type="text" size="11" name="email2" />&nbsp; <select
					name="email3" onchange="mail_sel()">
						<option value="">직접입력</option>
						<option value="hanmail.net">hanmail.net</option>
						<option value="naver.com">naver.com</option>
						<option value="nate.com">nate.com</option>
				</select>
				</td>
			</tr>
		</table>
		<input type="submit" value="가입하기" />&nbsp;&nbsp; <input type="reset"
			value="다시하기" />
	</form>
</body>
</html>