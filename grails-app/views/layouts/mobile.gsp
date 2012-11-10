<!DOCTYPE html>
<html>
	<head>
		<title></title>
		<meta charset="utf-8">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0" />
		<meta name="apple-mobile-web-app-capable" content="yes" />
		<g:layoutHead/>
		<r:layoutResources />
	</head>
	<body class="${params.controller ?: ''}">
		<g:layoutBody/>

		<g:javascript library="mobile"/>
		<r:layoutResources />
	</body>
</html>