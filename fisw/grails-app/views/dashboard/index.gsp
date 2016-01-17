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
	<h2>Solicitudes de registro</h2>
	<g:each in="${usuarios}" var="usuario" status="i">
		<g:if test="${usuario.accountLocked == true}">
			&nbsp &nbsp Nombre: ${usuario.nombre}
			<br/>
			&nbsp &nbsp Mail: ${usuario.username}
			<br/>
			<g:form url="[resource:usuario, action:'update']" method="PUT" >
				&nbsp &nbsp <g:actionSubmit class="save" action="update" value="${message(code: 'Aceptar/Rechazar')}" />
			</g:form>
		</g:if>
		<br/>
	</g:each>

	<h2>Perfil</h2>
	<g:set var="test" value="${sec.loggedInUserInfo(field:'id')}" />
	<g:link controller="User" action="show" id='${test}' > Mi perfil </g:link>

	<h2>Avance de proyecto</h2>

	<g:link controller="Advancing_Thesis" action="create"> Añadir Tesis </g:link>
	<br>
	<g:link controller="Document" action="create"> Subir Archivo </g:link>
	<br>
	<g:link controller="User" action="buscador"> Busqueda </g:link>
	

</body>
</html>
