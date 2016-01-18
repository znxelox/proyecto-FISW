<html>
	<head>
		<meta name="layout" content="main">
    
	</head>
<body>
<br>

<g:if test="${user.cargo}">
<table align="center" border=1 cellspacing=0 >
	<tr>
		<td><strong>Nombre de usuario</strong></td>
		<td><strong>Nombre completo</strong></td>
		<td><strong>Estudios de pregrado</strong></td>	
		<td><strong>Estudios de postgrado</strong></td>
		<td><strong>Area de investigacion</strong></td>
		<td><strong>Cargo</strong></td>			
	</tr>
	<tr>
		<td>${user.username}</td>
		<td>${user.nombre} </td>
		<td>${user.estudios_pregrado1} </td>
		<td>${user.estudios_postgrado1} </td>	
		<td>${user.area_investigacion} </td>			
		<td>${user.cargo} </td>			
	</tr>
</table>

</g:if>


</body>

</html>