<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title></title>
	</head>
	<body>
		<h1>Order received</h1>
		<p>Your delivery order has been received and scheduled. Expect our driver in ${params.pickupTime} min.</p>
		<g:link controller="client" action="deliveryTime">Delivery time</g:link>
	</body>
</html>
