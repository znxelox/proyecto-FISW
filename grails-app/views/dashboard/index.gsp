<html>
<head>
    <meta name="layout" content="main"/>
    <title><g:message code="dashboard.header" default="Bienvenido a Labmmba"/> </title>
    <style type="text/css" media="screen">
    #login {
        margin: 15px 0px;
        padding: 0px;
        text-align: center;
    }
    </style>
</head>
<body>
	<h2>Solicitudes de registro</h2>
	<g:each in="${usuarios}" var="usuario" status="i">
		<g:if test="${usuario.accountLocked == true}">
			${i+1}. Nombre: ${usuario.nombre}
			<br/>
			&nbsp &nbsp Mail: ${usuario.username}
			<br/>
		</g:if>
		<br/>
	</g:each>
</body>
</html>
