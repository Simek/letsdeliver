<!DOCTYPE html>
<html>
	<head>
		<title></title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0" />
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		<g:layoutHead/>
		<r:layoutResources />
	</head>
	<body class="${params.controller ?: ''}">
		<g:layoutBody/>

		<g:javascript library="application"/>
		<r:layoutResources />
	</body>
</html>