<!DOCTYPE html>
<html dir="ltr" lang="ru-RU">
	<head>
		<meta charset="utf-8">
		<title>liquidcarousel</title>

		<link rel="stylesheet" type="text/css" href="/js/mobilyslider/css/default.css" />
		
		<script src="/js/jquery-1.9.0.min.js"></script>
		<script src="/plugins/fslider/jquery.fractionslider.js"></script>
		<script src="/js/liquidcarousel/js/jquery.liquidcarousel.js"></script>
		
		<link rel="stylesheet" type="text/css" href="/plugins/liquidcarousel/css/liquidcarousel.css" />
		
		<script src="/plugins/mobilyslider/js/mobilyslider.js"></script>
		
		<script>
		$(document).ready(function(){
			$('.slider1').mobilyslider({
				animationSpeed: 500,
				autoplay: true,
				autoplaySpeed: 4000,
				pauseOnHover: false,
				bullets: false,
				arrows: false
			});
		});
		$(document).ready(function() {		
			$('#liquid1').liquidcarousel({height:129, duration:100, hidearrows:true});
		});
		</script>
		<!--[if lt IE 9]> 
		   <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script> 
		<![endif]-->
	</head>
	<body>
		<div id="liquid1" class="liquid">
			<span class="previous"></span>
			<div class="wrapper">
				<ul>
					<li><img src="/js/liquidcarousel/images/logo1.jpg"  alt="" /></li>
					<li><img src="/js/liquidcarousel/images/logo2.JPG" alt=""/></li>
					<li><img src="/js/liquidcarousel/images/logo3.png"  alt="" /></li>				   
				</ul>
			</div>
		</div>
						  
	</body>
</html>