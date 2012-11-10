<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title></title>
	</head>
	<body>
		<h1>New delivery order</h1>
		<g:form action="orderReceived">
			<div>
				<label for="deliveryAddress">Delivery address</label>
				<input type="text" name="deliveryAddress" />
			</div>
			<div>
				<label for="pickupTime">Pickup time in</label>
				<select name-"pickupTime">
					<g:each in="${[7,8,10,12,15,20,25,30]}" var="time">
						<option value="${time}">${time} min.</option>
					</g:each>
				</select>
			</div>
			<div>
				<label>Payment received
					<input type="radio" name="payment" value="payment-received" />
				</label>
				<label>Cash-on-delivery
					<input type="radio" name="payment" value="cash-on-delivery" />
				</label>
			</div>
			<button type="submit">Place order</button>
		</g:form>

	</body>
</html>
