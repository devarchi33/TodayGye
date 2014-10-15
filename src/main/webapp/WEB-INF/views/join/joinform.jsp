<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if IE 6]><html lang="ko" class="no-js old ie6"><![endif]-->
<!--[if IE 7]><html lang="ko" class="no-js old ie7"><![endif]-->
<!--[if IE 8]><html lang="ko" class="no-js old ie8"><![endif]-->
<!--[if IE 9]><html lang="ko" class="no-js modern ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="ko" class="no-js modern">
<!--<![endif]-->
<head>
<meta charset="utf-8" />

<title>TodayGye - JoinForm</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/css/bootstrap.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/js/bootstrap.min.js"></script>

<!-- form css -->
<link rel="stylesheet" href="resources/joinform/css/style.css" />
<link
	href="http://api.mobilis.co.kr/webfonts/css/?fontface=NanumGothicWeb"
	rel="stylesheet" />
<link href="http://fonts.googleapis.com/css?family=Sansita+One"
	rel="stylesheet" />
<!-- form javascript -->
<script src="resources/joinform/js/libs/modernizr.min.js"></script>
<script src="resources/joinform/js/libs/jquery.min.js"></script>
<script src="resources/joinform/js/script.js"></script>

<!-- for IE -->
<!--[if lte IE 9]><meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
<script src="resources/joinform/js/libs/CFInstall.min.js"></script><script>window.attachEvent("onload",function(){CFInstall.check({mode:"overlay"})});</script><script src="resources/joinform/js/libs/webforms2-0.5.4/webforms2.js"></script><![endif]-->
<!--[if IE 6]><script src="resources/joinform/js/libs/DD_belatedPNG.min.js"></script><script>DD_belatedPNG.fix('input, .png_bg');</script><![endif]-->
</head>
<body>
	<div id="reg">
		<h2 title="회원등록">Registration</h2>
		<form id="reg_form" action="#" method="post">
			<p>
				<label for="u_name">이름</label> <input id="u_name" name="u_name"
					type="text" placeholder="이름" required="required" />
			</p>
			<p>
				<label for="u_phone">폰 번호</label> <input id="u_phone" name="u_phone"
					type="tel" placeholder="폰 번호" required="required" />
			</p>
			<p>
				<label for="u_email">이메일</label> <input id="u_email" name="u_email"
					type="email" placeholder="이메일" required="required" />
			</p>
			<p>
				<label for="u_site">웹 사이트</label> <input id="u_site" name="u_site"
					type="url" placeholder="웹 사이트" />
			</p>
			<p>
				<label for="u_pass">비밀번호</label> <input id="u_pass" name="u_pass"
					type="password" placeholder="비밀번호" required="required" />
			</p>
			<p id="accept">
				<input id="accept_terms" name="accept_terms" type="checkbox" /> <label
					for="accept_terms"> <strong> <a href="#"
						rel="external" target="_blank">서비스 이용 약관</a>, <a href="#"
						rel="external" target="_blank">개인 정보 수집 이용</a> 에 동의
				</strong>합니다.
				</label>
			</p>
			<p id="add_count">
				<button id="reg_new" type="submit" title="회원가입">+</button>
			</p>
		</form>
	</div>
	<!-- e: #reg -->

</body>
</html>
