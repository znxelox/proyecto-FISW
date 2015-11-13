<%@ page import="fisw.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="user.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="username" required="" value="${userInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="password" required="" value="${userInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="user.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${userInstance?.nombre}"/>

</div>
<sec:access expression="hasRole('ROLE_ADMIN')">
<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'estudios_pregrado1', 'error')} required">
	<label for="estudios_pregrado1">
		<g:message code="user.estudios_pregrado1.label" default="Estudiospregrado1" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="estudios_pregrado1" required="" value="${userInstance?.estudios_pregrado1}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'estudios_pregrado2', 'error')} required">
	<label for="estudios_pregrado2">
		<g:message code="user.estudios_pregrado2.label" default="Estudiospregrado2" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="estudios_pregrado2" required="" value="${userInstance?.estudios_pregrado2}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'estudios_pregrado3', 'error')} required">
	<label for="estudios_pregrado3">
		<g:message code="user.estudios_pregrado3.label" default="Estudiospregrado3" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="estudios_pregrado3" required="" value="${userInstance?.estudios_pregrado3}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'estudios_postgrado1', 'error')} required">
	<label for="estudios_postgrado1">
		<g:message code="user.estudios_postgrado1.label" default="Estudiospostgrado1" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="estudios_postgrado1" required="" value="${userInstance?.estudios_postgrado1}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'estudios_postgrado2', 'error')} required">
	<label for="estudios_postgrado2">
		<g:message code="user.estudios_postgrado2.label" default="Estudiospostgrado2" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="estudios_postgrado2" required="" value="${userInstance?.estudios_postgrado2}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'estudios_postgrado3', 'error')} required">
	<label for="estudios_postgrado3">
		<g:message code="user.estudios_postgrado3.label" default="Estudiospostgrado3" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="estudios_postgrado3" required="" value="${userInstance?.estudios_postgrado3}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'area_investigacion', 'error')} required">
	<label for="area_investigacion">
		<g:message code="user.area_investigacion.label" default="Areainvestigacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="area_investigacion" from="${userInstance.constraints.area_investigacion.inList}" required="" value="${userInstance?.area_investigacion}" valueMessagePrefix="user.area_investigacion"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'cargo', 'error')} required">
	<label for="cargo">
		<g:message code="user.cargo.label" default="Cargo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="cargo" from="${userInstance.constraints.cargo.inList}" required="" value="${userInstance?.cargo}" valueMessagePrefix="user.cargo"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'otro', 'error')} required">
	<label for="otro">
		<g:message code="user.otro.label" default="Otro" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="otro" required="" value="${userInstance?.otro}"/>

</div>

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
