<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>Bootstrap, from Twitter - Donghoon's practice site1</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- Le styles -->
<link href="resources/assets/css/bootstrap.css" rel="stylesheet">
<style type="text/css">
body {
	padding-top: 60px;
	padding-bottom: 40px;
}

li {
	list-style: none;
}
</style>
<link href="resources/assets/css/bootstrap-responsive.css"
	rel="stylesheet">

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
		<script src="../assets/js/html5shiv.js"></script>
		<![endif]-->

<!-- Fav and touch icons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="resources/assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="resources/assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="resources/assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="resources/assets/ico/apple-touch-icon-57-precomposed.png">
<link rel="shortcut icon" href="resources/assets/ico/favicon.png">

<!-- formChech 자바스크립트 -->
<script type="text/javascript" src="resources/js/formCheck.js"></script>
</head>

<body>
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<button type="button" class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="brand" href="/todaygye">TodayGye</a>
				<div class="nav-collapse collapse">
					<ul class="nav">
						<li class="active"><a href="#">Home</a></li>
						<li><a href="#about">About</a></li>
						<li><a href="#contact">Contact</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">Menu <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="#">Action</a></li>
								<li><a href="#">Another action</a></li>
								<li><a href="#">Something else here</a></li>
								<li class="divider"></li>
								<li class="nav-header">Nav header</li>
								<li><a href="#">Separated link</a></li>
								<li><a href="#">One more separated link</a></li>
							</ul></li>
					</ul>
					<form class="navbar-form pull-right">
						<input class="span2" type="text" placeholder="Search">
						<button type="submit" class="btn">Search</button>
						<a href="#join" class="btn" role="button" data-toggle="modal">Join</a>
						<a href="#login" class="btn" role="button" data-toggle="modal">Login</a>
						<a href="/todaygye/logout" class="btn" role="button">Logout</a>
					</form>
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
	</div>

	<!-- 로그인 -->
	<div id="login" class="modal hide fade" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-header">
			<button class="close" type="button" data-dismiss="modal"
				aria-hidden="true">x</button>
			<h3 id="myModalLabel">Login</h3>
		</div>
		<div class="modal-body">
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
						value="login" /></li>
				</ul>
			</form>
		</div>
	</div>
	<!-- 회원가입 -->
	<div id="join" class="modal hide fade" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-header">
			<button class="close" type="button" data-dismiss="modal"
				aria-hidden="true">x</button>
			<h3 id="myModalLabel">Join</h3>
		</div>
		<div class="modal-body">
			<form action="/todaygye/joinsite" name="joinForm" method="POST"
				onsubmit="return joinFormCheck();">
				<table border="1" cellspacing="0" width="500" height="400"
					align="center">
					<tr height="35">
						<th width="120">아이디</th>
						<td>&nbsp;&nbsp;<input type="text" name="id" /></td>
					</tr>
					<tr height="35">
						<th width="120">비밀번호</th>
						<td>&nbsp;&nbsp;<input type="password" name="pass" /></td>
					</tr>
					<tr height="35">
						<th width="120">대화명</th>
						<td>&nbsp;&nbsp;<input type="text" size="" name="nick" /></td>
					</tr>
					<tr height="35">
						<th>성별</th>
						<td>&nbsp;&nbsp;<input type="radio" name="gender" value="남자"
							checked="checked" />남자 <input type="radio" name="gender"
							value="여자" />여자
						</td>
					</tr>
					<tr height="35">
						<th>이메일</th>
						<td>&nbsp;&nbsp;<input type="text" class="span1"
							name="email1" />@ <input type="text" class="span2" name="email2" />&nbsp;
							<select name="email3" onchange="mail_sel()" class="span1">
								<option value="">직접입력</option>
								<option value="hanmail.net">hanmail.net</option>
								<option value="naver.com">naver.com</option>
								<option value="nate.com">nate.com</option>
						</select>
						</td>
					</tr>
				</table>
				<div class="modal-footer">
					<input class="btn btn-primary" type="submit" value="가입하기" />&nbsp;&nbsp; <input
						class="btn btn-primary" type="reset" value="다시하기" />
				</div>
			</form>
		</div>
	</div>
</body>
</html>