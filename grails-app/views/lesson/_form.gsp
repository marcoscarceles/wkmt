<%@ page import="uk.co.makroos.wkmt.Lesson" %>



<div class="fieldcontain ${hasErrors(bean: lessonInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="lesson.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${lessonInstance?.date}"  />
</div>

<div class="practiced">
    <h2>Practiced</h2>
    <g:render template="../studyBlock/form" model="[propertyName: 'practiced', studyBlockInstance: lessonInstance.practiced]"/>
    %{--<label for="practiced">--}%
    %{--<g:message code="lesson.practiced.label" default="Practiced" />--}%
    %{--<span class="required-indicator">*</span>--}%
    %{--</label>--}%
    %{--<g:select id="practiced" name="practiced.id" from="${uk.co.makroos.wkmt.StudyBlock.list()}" optionKey="id" required="" value="${lessonInstance?.practiced?.id}" class="many-to-one"/>--}%
</div>

<div class="homework">
    <h2>Homework</h2>
    <g:render template="../studyBlock/form" model="[propertyName: 'homework', studyBlockInstance: lessonInstance.practiced]"/>
	%{--<label for="homework">--}%
		%{--<g:message code="lesson.homework.label" default="Homework" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:select id="homework" name="homework.id" from="${uk.co.makroos.wkmt.StudyBlock.list()}" optionKey="id" required="" value="${lessonInstance?.homework?.id}" class="many-to-one"/>--}%
</div>

%{--<div class="fieldcontain ${hasErrors(bean: lessonInstance, field: 'student', 'error')} required">--}%
	%{--<label for="student">--}%
		%{--<g:message code="lesson.student.label" default="Student" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:select id="student" name="student.id" from="${uk.co.makroos.wkmt.Student.list()}" optionKey="id" required="" value="${lessonInstance?.student?.id}" class="many-to-one"/>--}%
%{--</div>--}%

<g:hiddenField id="student" name="student.id" optionKey="id" required="" value="${lessonInstance?.student?.id}" class="many-to-one"/>
