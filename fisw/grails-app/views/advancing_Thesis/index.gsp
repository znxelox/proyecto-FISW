
<%@ page import="fisw.Advancing_Thesis" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'advancing_Thesis.label', default: 'Advancing_Thesis')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-advancing_Thesis" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-advancing_Thesis" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="thesis_name" title="${message(code: 'advancing_Thesis.thesis_name.label', default: 'Thesisname')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'advancing_Thesis.description.label', default: 'Description')}" />		
						<g:sortableColumn property="link_thesis" title="${message(code: 'advancing_Thesis.link_thesis.label', default: 'Linkthesis')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${advancing_ThesisInstanceList}" status="i" var="advancing_ThesisInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${advancing_ThesisInstance.id}">${fieldValue(bean: advancing_ThesisInstance, field: "thesis_name")}</g:link></td>
					
						<td>${fieldValue(bean: advancing_ThesisInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: advancing_ThesisInstance, field: "link_thesis")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${advancing_ThesisInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
