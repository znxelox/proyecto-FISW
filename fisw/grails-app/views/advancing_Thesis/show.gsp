
<%@ page import="fisw.Advancing_Thesis" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'advancing_Thesis.label', default: 'Advancing_Thesis')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-advancing_Thesis" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-advancing_Thesis" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list advancing_Thesis">
			
				<g:if test="${advancing_ThesisInstance?.thesis_name}">
				<li class="fieldcontain">
					<span id="thesis_name-label" class="property-label"><g:message code="advancing_Thesis.thesis_name.label" default="Thesisname" /></span>
					
						<span class="property-value" aria-labelledby="thesis_name-label"><g:fieldValue bean="${advancing_ThesisInstance}" field="thesis_name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${advancing_ThesisInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="advancing_Thesis.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${advancing_ThesisInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${advancing_ThesisInstance?.link_thesis}">
				<li class="fieldcontain">
					<span id="link_thesis-label" class="property-label"><g:message code="advancing_Thesis.link_thesis.label" default="Linkthesis" /></span>
					
						<span class="property-value" aria-labelledby="link_thesis-label"><g:fieldValue bean="${advancing_ThesisInstance}" field="link_thesis"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${advancing_ThesisInstance?.advancing_thesis_user}">
				<li class="fieldcontain">
					<span id="advancing_thesis_user-label" class="property-label"><g:message code="advancing_Thesis.advancing_thesis_user.label" default="Advancingthesisuser" /></span>
					
						<g:each in="${advancing_ThesisInstance.advancing_thesis_user}" var="a">
						<span class="property-value" aria-labelledby="advancing_thesis_user-label"><g:link controller="advancing_Thesis_User" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${advancing_ThesisInstance?.commentaries}">
				<li class="fieldcontain">
					<span id="commentaries-label" class="property-label"><g:message code="advancing_Thesis.commentaries.label" default="Commentaries" /></span>
					
						<g:each in="${advancing_ThesisInstance.commentaries}" var="c">
						<span class="property-value" aria-labelledby="commentaries-label"><g:link controller="commentary" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>

			<g:form url="[resource:advancing_ThesisInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${advancing_ThesisInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>

				<fieldset class="buttons">
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
