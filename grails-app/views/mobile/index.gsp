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
					var latlng = new google.maps.LatLng(54.509473,18.550059);
					var destLatlng = new google.maps.LatLng(54.509227,18.54041);
					var nextLatlng = new google.maps.LatLng(54.496652,18.5379687)
							
					var myOptions = {
						zoom: 14,
						center: latlng,
						disableDefaultUI: true,
						mapTypeId: google.maps.MapTypeId.ROADMAP
					};
							
					var map = new google.maps.Map(document.getElementById("map"), myOptions);
							

					var directionsService = new google.maps.DirectionsService();
					var directionsRenderer = new google.maps.DirectionsRenderer({
						suppressMarkers: true
					});
					var nextDirectionRenderer = new google.maps.DirectionsRenderer({
						suppressMarkers: true,
						polylineOptions: {
							strokeColor: '#aad'
						}
					})
					directionsRenderer.setMap(map);
					nextDirectionRenderer.setMap(map);

					var currentMarker = new google.maps.Marker({
						position: latlng,
						map: map,
						icon: "${resource(dir: 'images', file: 'spot.png')}"
					});

					var nextRequest = {
						 origin: destLatlng,
						 destination: nextLatlng,
						 travelMode: google.maps.TravelMode.DRIVING
					};

					directionsService.route(nextRequest, function(result, status) {
						if (status == google.maps.DirectionsStatus.OK) {
							nextDirectionRenderer.setDirections(result);
							var nextMarker = new google.maps.Marker({
								position: nextLatlng,
								map: map
							});
						}
					})
					var request = {
						 origin: latlng,
						 destination: destLatlng,
						 travelMode: google.maps.TravelMode.DRIVING
					};
					directionsService.route(request, function(result, status) {
						if (status == google.maps.DirectionsStatus.OK) {
							directionsRenderer.setDirections(result);

							var marker = new google.maps.Marker({
								position: destLatlng,
								map: map
							});
						}
					})
				}

				initialize();

				$(".fullscreen").live("tap", function(){
					$("#map").toggleClass("full")
					google.maps.event.trigger(map, 'resize')
				})

				$('.counter').counter();

				$('.content-wrapper').bind('swipeleft', function() {

					$(this).animate({
						left: '-100%'
					})
				})
				$('.content-wrapper').bind('swiperight', function() {

					$(this).animate({
						left: 0
					})
				})
			})
		</script>
	</head>
	<body>
		<div id="map"></div>
		<div class="fullscreen"></div>
		<div class="content-wrapper">
			<div class="content">
				<div class="current-task">
					<div class="shadow"></div>
					<div class="counter counter-analog2" data-format="59:59">15:00</div>
					<img src="${resource(dir: 'images', file: 'deposit.png')}" alt="" class="icon">
					<div class="address"><em>Anker Pizza</em><br/>Gdynia, Aleja Marszałka Józefa Piłsudskiego 50</div>
				</div>
				<div class="next-order">
					<div class="address">Gdynia, Aleja Zwycięstwa 96/98</div>
					<img src="${resource(dir: 'images', file: 'deliver.png')}" alt="" class="icon">
				</div>
			</div>
			<div class="content right">
				<div class="shadow"></div>
				<div class="confirmation">
					<div class="price">$18.90</div>
					<div class="confirm-button"></div>
				</div>
				<div class="info">
					No knocking!
				</div>
			</div>
		</div>
		<div class="menu">
			<img src="${resource(dir: 'images', file: 'menu.png')}" alt="" class="icon">
		</div>
	</body>
</html>