<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title></title>
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'counter.css')}" type="text/css">
		<script type="text/javascript">
			$(function() {
				$('.counter').counter();
			})
		</script>
	</head>
	<body>
		<h1>Order received</h1>
		<div class="counter counter-analog2" data-format="59:59">45:00</div>
	</body>
</html>
