<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mobile"/>
		<link rel="stylesheet" href="http://code.jquery.com/mobile/1.2.0/jquery.mobile-1.2.0.min.css" />
		<script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
		<script src="http://code.jquery.com/mobile/1.2.0/jquery.mobile-1.2.0.min.js"></script>
		<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=true"></script>
		<title></title>
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'counter.css')}" type="text/css">
		<script type="text/javascript">
			$(function() {
				function initialize() {
					var latlng = new google.maps.LatLng(52.217645,21.015966);
					var destLatlng = new google.maps.LatLng(54.509227,18.54041);
							
					var myOptions = {
						zoom: 14,
						center: latlng,
						disableDefaultUI: true,
						mapTypeId: google.maps.MapTypeId.ROADMAP
					};
							
					var map = new google.maps.Map(document.getElementById("map"), myOptions);
							
					var marker = new google.maps.Marker({
						position: destLatlng,
						map: map
					});

					var directionsService = new google.maps.DirectionsService();
					var directionsRenderer = new google.maps.DirectionsRenderer({
						suppressMarkers: true
					});
					directionsRenderer.setMap(map);
					var request = {
						 origin: latlng,
						 destination: destLatlng,
						 travelMode: google.maps.TravelMode.DRIVING
					};
					directionsService.route(request, function(result, status) {
						if (status == google.maps.DirectionsStatus.OK) {
							directionsRenderer.setDirections(result);
						}
					})
				}

				initialize();

				$(".fullscreen").live("tap", function(){
					$("#map").toggleClass("full")
					google.maps.event.trigger(map, 'resize')
				})

				$('.counter').counter();
			})
		</script>
	</head>
	<body>
		<div id="map"></div>
		<div class="fullscreen"></div>
		<div class="content">
			<div class="current-task">
				<div class="shadow"></div>
				<div class="counter counter-analog2" data-format="59:59">15:00</div>
				<img src="${resource(dir: 'images', file: 'deposit.png')}" alt="" class="icon">
				<div class="address"><em>“Napoli Pizza”</em><br/>Gdynia, Aleja Marszałka Józefa Piłsudskiego 50</div>
			</div>
			<div class="next-order">
				<div class="address">Sopot, 3 Maja 102</div>
				<img src="${resource(dir: 'images', file: 'deliver.png')}" alt="" class="icon">
			</div>
			<div class="menu">
				<img src="${resource(dir: 'images', file: 'menu.png')}" alt="" class="icon">
			</div>
		</div>
	</body>
</html>
