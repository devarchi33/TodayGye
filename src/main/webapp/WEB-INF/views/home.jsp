<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="stylesheet" href="resources/css/home.css" />
<!-- formChech 자바스크립트 -->
<script type="text/javascript" src="resources/js/formCheck.js"></script>
<title>Home</title>
</head>
<body>
	<div class="container">
		<div id="myCarousel" class="carousel slide">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			<!-- Carousel items -->
			<div class="carousel-inner">
				<div class="active item">
					<img class="img-circle" src="resources/images/todaygye (1).jpg"
						alt="todaygye_logo" />
					<div class="container">
						<div class="carousel-caption">
							<h2>Hello TodayGye!</h2>
							<P>The time on the server is ${serverTime}.</P>
							<form action="/todaygye/loginform" method="get">
								<ul>
									<li><input class="btn btn-primary" type="submit"
										value="LoginForm" /></li>
								</ul>
							</form>
						</div>
					</div>
				</div>
				<div class="item">
					<img class="img-circle" src="resources/images/todaygye (5).jpg"
						alt="todaygye_logo" />
					<div class="container">
						<div class="carousel-caption">
							<h2>Hello TodayGye!</h2>
							<P>The time on the server is ${serverTime}.</P>
							<form action="/todaygye/loginform" method="get">
								<ul>
									<li><input class="btn btn-primary" type="submit"
										value="LoginForm" /></li>
								</ul>
							</form>
						</div>
					</div>
				</div>
				<div class="item">
					<img class="img-circle" src="resources/images/todaygye (6).jpg"
						alt="todaygye_logo" />
					<div class="container">
						<div class="carousel-caption">
							<h2>Hello TodayGye!</h2>
							<P>The time on the server is ${serverTime}.</P>
							<form action="/todaygye/loginform" method="get">
								<ul>
									<li><input class="btn btn-primary" type="submit"
										value="LoginForm" /></li>
								</ul>
							</form>
						</div>
					</div>
				</div>
			</div>
			<!-- Carousel nav -->
			<a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
			<a class="carousel-control right" href="#myCarousel"
				data-slide="next">&rsaquo;</a>
		</div>
		<div class="row">
			<div class="span4">
				<img class="img-circle" src="resources/images/todaygye (2).jpg" alt="todaygye" />
				<h2>Gye1</h2>
				<p>Donec id elit non mi porta gravida at eget metus. Fusce
					dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh,
					ut fermentum massa justo sit amet risus. Etiam porta sem malesuada
					magna mollis euismod. Donec sed odio dui.</p>
				<p>
					<a class="btn" href="#">View details &raquo;</a>
				</p>
			</div>
			<div class="span4">
				<img class="img-circle" src="resources/images/todaygye (3).jpg" alt="todaygye" />
				<h2>Gye2</h2>
				<p>Donec id elit non mi porta gravida at eget metus. Fusce
					dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh,
					ut fermentum massa justo sit amet risus. Etiam porta sem malesuada
					magna mollis euismod. Donec sed odio dui.</p>
				<p>
					<a class="btn" href="#">View details &raquo;</a>
				</p>
			</div>
			<div class="span4">
				<img class="img-circle" src="resources/images/todaygye (4).jpg" alt="todaygye" />
				<h2>Gye3</h2>
				<p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in,
					egestas eget quam. Vestibulum id ligula porta felis euismod semper.
					Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum
					nibh, ut fermentum massa justo sit amet risus.</p>
				<p>
					<a class="btn" href="#">View details &raquo;</a>
				</p>
			</div>
		</div>
	</div>
</body>
</html>
