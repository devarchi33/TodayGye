<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<style type="text/css">
img {
	height: 600px;
	width: 800px;
	margin: 0 auto;
}

h1 {
	color: #fff;
}
</style>
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
					<img class="img-circle" src="resources/images/gumran1.png"
						alt="금계란첩1" />
					<div class="container">
						<div class="carousel-caption">
							<h1>Hello TodayGye!</h1>
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
					<img class="img-circle" src="resources/images/gumran2.png"
						alt="금계란첩2" />
					<div class="container">
						<div class="carousel-caption">
							<h1>Hello TodayGye!</h1>
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
					<img class="img-circle" src="resources/images/gumran3.png"
						alt="금란계첩3" />
					<div class="container">
						<div class="carousel-caption">
							<h1>Hello TodayGye!</h1>
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
				<h2>Heading1</h2>
				<p>Donec id elit non mi porta gravida at eget metus. Fusce
					dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh,
					ut fermentum massa justo sit amet risus. Etiam porta sem malesuada
					magna mollis euismod. Donec sed odio dui.</p>
				<p>
					<a class="btn" href="#">View details &raquo;</a>
				</p>
			</div>
			<div class="span4">
				<h2>Heading2</h2>
				<p>Donec id elit non mi porta gravida at eget metus. Fusce
					dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh,
					ut fermentum massa justo sit amet risus. Etiam porta sem malesuada
					magna mollis euismod. Donec sed odio dui.</p>
				<p>
					<a class="btn" href="#">View details &raquo;</a>
				</p>
			</div>
			<div class="span4">
				<h2>Heading3</h2>
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
