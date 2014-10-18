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
<!-- form css -->
<link
	href="http://api.mobilis.co.kr/webfonts/css/?fontface=NanumGothicWeb"
	rel="stylesheet" />
<link href="http://fonts.googleapis.com/css?family=Sansita+One"
	rel="stylesheet" />

<title>TodayGye - loginForm</title>
</head>
<body>
	<div class="jumbotron">
		<div class="container">
			<h1>TodayGye</h1>
			<p>This is a login page.</p>
			<form action="/todaygye/login" method="POST"
				onsubmit="return formCheck();">
				<table>

					<tr>
						<th>
							<div class="input-group">
								<span class="input-group-addon">@</span> <input
									class="form-control" placeholder="Username" type="text"
									name="loginId" size="20">
							</div>
						</th>
					</tr>
					<tr>
						<th>
							<div class="input-group">
								<span class="input-group-addon">@</span> <input
									class="form-control" placeholder="Password" size="20"
									name="pass" type="password">
							</div>
						</th>
					</tr>

				</table>
				<ul>
					<li><input class="btn btn-primary btn-lg" type="submit"
						value="로그인" /></li>
				</ul>
			</form>
		</div>
	</div>
</body>
</html>