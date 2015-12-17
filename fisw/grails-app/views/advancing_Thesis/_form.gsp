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

<div class="fieldcontain ${hasErrors(bean: advancing_ThesisInstance, field: 'advancing_thesis_user', 'error')} ">
	<label for="advancing_thesis_user">
		<g:message code="advancing_Thesis.advancing_thesis_user.label" default="Advancingthesisuser" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${advancing_ThesisInstance?.advancing_thesis_user?}" var="a">
    <li><g:link controller="advancing_Thesis_User" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="advancing_Thesis_User" action="create" params="['advancing_Thesis.id': advancing_ThesisInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'advancing_Thesis_User.label', default: '')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: advancing_ThesisInstance, field: 'commentaries', 'error')} ">
	<label for="commentaries">
		<g:message code="advancing_Thesis.commentaries.label" default="Comentarios" />
		
	</label>
	<g:select name="commentaries" from="${fisw.Commentary.list()}" multiple="multiple" optionKey="id" size="5" value="${advancing_ThesisInstance?.commentaries*.id}" class="many-to-many"/>

</div>

