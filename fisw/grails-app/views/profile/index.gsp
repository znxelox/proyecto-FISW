<html>
<head>
    <meta name="layout" content="main"/>
    <title><g:message code="dashboard.header" default="Bienvenido a Labmmba "/> </title>
    <style type="text/css" media="screen">
    #login {
        margin: 15px 0px;
        padding: 0px;
        text-align: center;
    }
    </style>
</head>
<body>
	<h2>Perfil</h2>
	<g:set var="test" value="${sec.loggedInUserInfo(field:'id')}" />
	<g:link controller="User" action="index" id='${test}' > Mi perfil </g:link>

</body>
</html>
