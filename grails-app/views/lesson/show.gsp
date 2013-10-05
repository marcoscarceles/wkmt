
<%@ page import="uk.co.makroos.wkmt.Lesson" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'lesson.label', default: 'Lesson')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-lesson" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div id="show-lesson" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list lesson">
			
                <h2><g:link controller="student" action="show" id="${lessonInstance?.student?.id}">${lessonInstance?.student?.encodeAsHTML()}</g:link> <g:formatDate date="${lessonInstance?.date}" type="date" style="long"/></h2>

				<g:if test="${lessonInstance?.practiced}">
				<li class="fieldcontain">
                    <h2>Practiced</h2>
                    <g:render template="../studyBlock/show" model="[studyBlockInstance: lessonInstance?.practiced]"/>
				</li>
				</g:if>

				<g:if test="${lessonInstance?.homework}">
				<li class="fieldcontain">
                    <h2>Homework</h2>
                    <g:render template="../studyBlock/show" model="[studyBlockInstance: lessonInstance?.homework]"/>
				</li>
				</g:if>

			</ol>
			<g:form url="[resource:lessonInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="createNext" resource="${lessonInstance}"><g:message code="default.button.create.next.label" default="Create Next" /></g:link>
					<g:link class="edit" action="edit" resource="${lessonInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
