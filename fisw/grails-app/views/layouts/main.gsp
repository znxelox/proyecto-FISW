<!doctype html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="LABMMBA"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
		<g:layoutHead/>
        <r:layoutResources />
	</head>
	<body>
        <div id="grailsLogo" role="banner">
            <div id="logo">
		&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
		&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
                <a href="${createLink(uri: '/')}" style="text-decoration:none;font-size:3em;letter-spacing:2px;">LABMMBA</a>
            </div>
            <div class="encabezado">
		<g:link uri="/">Home</g:link>
		<g:link controller="dashboard">Dashboard</g:link> 
		<g:link controller="user" action="create"> Registrarse </g:link>
		&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
		&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
		<g:link controller="dashboard" action="changeLocale" params="[lang:'es', country:'ES']">Español</g:link> 
		<g:link controller="dashboard" action="changeLocale" params="[lang:'en', country:'US']">English</g:link> 
                <sec:ifLoggedIn>
                    <a href="${createLink(controller:'logout')}"><g:message code="Logout" /></a>
                </sec:ifLoggedIn>	
                <sec:ifNotLoggedIn>
                    <g:link controller="login" action="auth">Login</g:link>
                </sec:ifNotLoggedIn>	
            </div>
        </div>
		<g:layoutBody/>
        <div class="footer" role="contentinfo">
            <p style="text-align:right;">&copy; 2016 Universidad Tecnica Federico Santa Maria</p>
        </div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
        <r:layoutResources />
		<g:javascript library="application"/>
	</body>
</html>
