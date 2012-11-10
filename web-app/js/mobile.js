
function initialize() {
	latlng = new google.maps.LatLng(52.217645,21.015966);
			
	myOptions = {
		zoom: 14,
		center: latlng,
		mapTypeId: google.maps.MapTypeId.ROADMAP
	};
			
	var map = new google.maps.Map(document.getElementById("map"), myOptions);
			
	var marker = new google.maps.Marker({
		position: latlng,
		map: map
	});
}
