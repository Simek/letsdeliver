<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mobile"/>
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
		<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=true"></script>
		<title></title>
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'counter.css')}" type="text/css">
		<script type="text/javascript">
			$(function() {
				function initialize() {
					latlng = new google.maps.LatLng(52.217645,21.015966);
							
					myOptions = {
						zoom: 14,
						center: latlng,
						disableDefaultUI: true,
						mapTypeId: google.maps.MapTypeId.ROADMAP
					};
							
					var map = new google.maps.Map(document.getElementById("map"), myOptions);
							
					var marker = new google.maps.Marker({
						position: latlng,
						map: map
					});
				}

				initialize();

				$(".fullscreen").live("tap", function(){
					$("#map").toggleClass("full")
				})

				$('.counter').counter();
			})
		</script>
	</head>
	<body>
		<div id="map"></div>
		<div class="shadow"></div>
		<div class="current-task">
			<img src="${resource(dir: 'images', file: 'info.png')}" alt="" class="info">
			<div class="counter counter-analog2" data-format="59:59">15:00</div>
			<img src="${resource(dir: 'images', file: 'pickup.png')}" alt="" class="done">
		</div>
		<div class="address-box">
			<div class="address">Sopot, Mazowiecka 20</div>
			<img src="${resource(dir: 'images', file: 'map.png')}" alt="" class="delivery-type">
		</div>
		<div class="next-order">
			<div class="address">Sopot, 3 Maja 102</div>
			<img src="${resource(dir: 'images', file: 'download.png')}" alt="" class="icon">
		</div>
		<div class="menu">
			<img src="${resource(dir: 'images', file: 'menu.png')}" alt="" class="icon">
		</div>
	</body>
</html>
