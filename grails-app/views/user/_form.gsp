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
	<g:textField name="password" required="" value="${userInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="user.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${userInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'estudios_pregrado', 'error')} required">
	<label for="estudios_pregrado">
		<g:message code="user.estudios_pregrado.label" default="Estudios pregrado" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="estudios_pregrado" required="" value="${userInstance?.estudios_pregrado}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'estudios_postgrado', 'error')} required">
	<label for="estudios_postgrado">
		<g:message code="user.estudios_postgrado.label" default="Estudios postgrado" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="estudios_postgrado" required="" value="${userInstance?.estudios_postgrado}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'cargo', 'error')} required">
	<label for="cargo">
		<g:message code="user.cargo.label" default="Cargo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="cargo" from="${userInstance.constraints.cargo.inList}" required="" value="${userInstance?.cargo}" valueMessagePrefix="user.cargo"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'area_investigacion', 'error')} required">
	<label for="area_investigacion">
		<g:message code="user.area_investigacion.label" default="Area de investigacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="area_investigacion" required="" value="${userInstance?.area_investigacion}"/>

</div>

<sec:access expression="hasRole('ROLE_ADMIN')">

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="user.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${userInstance?.accountExpired}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="user.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${userInstance?.accountLocked}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="user.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${userInstance?.enabled}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="user.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${userInstance?.passwordExpired}" />

</div>
</sec:access>
