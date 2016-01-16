<html>
<body>
<h2>Holi</h2>

<g:link view="Dashboard" > Home </g:link>
<g:each in="${usuarios}" var="usuario" status="i">
		<g:if test="${usuario.nombre == "Pato"}">
			${usuario.nombre}
			<br/>
		</g:if>
		<br/>
	</g:each>
</body>
</html>
