
<%@ page import="uk.co.makroos.wkmt.StudyBlock" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'studyBlock.label', default: 'StudyBlock')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-studyBlock" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-studyBlock" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>

						<th><g:message code="studyBlock.lesson.label" default="Lesson" /></th>

						<g:sortableColumn property="exercises" title="${message(code: 'studyBlock.exercises.label', default: 'Exercises')}" />

					</tr>
				</thead>
				<tbody>
				<g:each in="${studyBlockInstanceList}" status="i" var="studyBlockInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                        <td>${fieldValue(bean: studyBlockInstance, field: "lesson")}</td>

                        <td><g:link action="show" id="${studyBlockInstance.id}">${fieldValue(bean: studyBlockInstance, field: "exercises")}</g:link></td>

					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${studyBlockInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
