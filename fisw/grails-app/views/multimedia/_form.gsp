<%@ page import="fisw.Multimedia" %>



<div class="fieldcontain ${hasErrors(bean: multimediaInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="multimedia.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${multimediaInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: multimediaInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="multimedia.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${multimediaInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: multimediaInstance, field: 'archivo', 'error')} required">
	<label for="archivo">
		<g:message code="multimedia.archivo.label" default="Archivo" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="archivo" name="archivo" />

</div>

<div class="fieldcontain ${hasErrors(bean: multimediaInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="multimedia.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="type" from="${multimediaInstance.constraints.type.inList}" required="" value="${multimediaInstance?.type}" valueMessagePrefix="multimedia.type"/>

</div>

