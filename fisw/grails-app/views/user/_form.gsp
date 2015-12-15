<%@ page import="fisw.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="user.username.label" default="Nombre de usuario (mail)" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="username" required="" value="${userInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="user.password.label" default="Clave" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="password" required="" value="${userInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="user.nombre.label" default="Nombre completo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${userInstance?.nombre}"/>

</div>
<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'estudios_pregrado1', 'error')} required">
	<label for="estudios_pregrado1">
		<g:message code="user.estudios_pregrado1.label" default="Estudios pregrado" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="estudios_pregrado1" value="${userInstance?.estudios_pregrado1}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'estudios_pregrado2', 'error')} required">
	<label for="estudios_pregrado2">
		<g:message code="user.estudios_pregrado2.label" default="Estudios pregrado" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="estudios_pregrado2" value="${userInstance?.estudios_pregrado2}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'estudios_pregrado3', 'error')} required">
	<label for="estudios_pregrado3">
		<g:message code="user.estudios_pregrado3.label" default="Estudios pregrado" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="estudios_pregrado3" value="${userInstance?.estudios_pregrado3}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'estudios_postgrado1', 'error')} required">
	<label for="estudios_postgrado1">
		<g:message code="user.estudios_postgrado1.label" default="Estudios postgrado" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="estudios_postgrado1" value="${userInstance?.estudios_postgrado1}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'estudios_postgrado2', 'error')} required">
	<label for="estudios_postgrado2">
		<g:message code="user.estudios_postgrado2.label" default="Estudios postgrado" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="estudios_postgrado2" value="${userInstance?.estudios_postgrado2}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'estudios_postgrado3', 'error')} required">
	<label for="estudios_postgrado3">
		<g:message code="user.estudios_postgrado3.label" default="Estudios postgrado" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="estudios_postgrado3" value="${userInstance?.estudios_postgrado3}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'area_investigacion', 'error')} required">
	<label for="area_investigacion">
		<g:message code="user.area_investigacion.label" default="Area de investigacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="area_investigacion" from="${userInstance.constraints.area_investigacion.inList}" value="${userInstance?.area_investigacion}" valueMessagePrefix="user.area_investigacion"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'cargo', 'error')} required">
	<label for="cargo">
		<g:message code="user.cargo.label" default="Cargo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="cargo" from="${userInstance.constraints.cargo.inList}" value="${userInstance?.cargo}" valueMessagePrefix="user.cargo"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'otro', 'error')} required">
	<label for="otro">
		<g:message code="user.otro.label" default="Otro cargo(en caso de que no aparezca en la lista)" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="otro" value="${userInstance?.otro}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="user.accountExpired.label" default="Cuenta expirada" />
		
	</label>
	<g:checkBox name="accountExpired" value="${userInstance?.accountExpired}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="user.accountLocked.label" default="Cuenta bloqueada" />
		
	</label>
	<g:checkBox name="accountLocked" value="${userInstance?.accountLocked}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="user.enabled.label" default="Cuenta habilitada" />
		
	</label>
	<g:checkBox name="enabled" value="${userInstance?.enabled}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="user.passwordExpired.label" default="Clave expirada" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${userInstance?.passwordExpired}" />

</div>
