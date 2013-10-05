<%@ page import="uk.co.makroos.wkmt.Student" %>



<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'fullName', 'error')} ">
	<label for="fullName">
		<g:message code="student.fullName.label" default="Full Name" />
		
	</label>
	<g:textField name="fullName" value="${studentInstance?.fullName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'lessons', 'error')} ">
	<label for="lessons">
		<g:message code="student.lessons.label" default="Lessons" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${studentInstance?.lessons?.reverse()}" var="l">
    <li><g:link controller="lesson" action="show" id="${l.id}"><g:formatDate date="${l?.date}" type="date" style="long"/></g:link></li>
</g:each>
<li class="add">
<g:link controller="lesson" action="create" params="['student.id': studentInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'lesson.label', default: 'Lesson')])}</g:link>
</li>
</ul>

</div>

