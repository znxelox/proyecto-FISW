<%@ page import="fisw.Advancing_Thesis" %>



<div class="fieldcontain ${hasErrors(bean: advancing_ThesisInstance, field: 'thesis_name', 'error')} required">
	<label for="thesis_name">
		<g:message code="advancing_Thesis.thesis_name.label" default="Nombre de tesis" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="thesis_name" required="" value="${advancing_ThesisInstance?.thesis_name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: advancing_ThesisInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="advancing_Thesis.description.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${advancing_ThesisInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: advancing_ThesisInstance, field: 'link_thesis', 'error')} ">
	<label for="link_thesis">
		<g:message code="advancing_Thesis.link_thesis.label" default="Link de google drive" />
		
	</label>
	<g:textField name="link_thesis" value="${advancing_ThesisInstance?.link_thesis}"/>

</div>
