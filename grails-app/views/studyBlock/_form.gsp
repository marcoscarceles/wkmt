<%@ page import="uk.co.makroos.wkmt.StudyBlock" %>

<g:set var="domainPrefix" value="${propertyName ? propertyName + '.' : ''}"/>

<h3>Scales</h3>

<div class="fieldcontain ${hasErrors(bean: studyBlockInstance, field: 'scaleAm', 'error')} ">
    <label for="scaleAm">
        <g:message code="studyBlock.scaleAm.label" default="Scale Am" />

    </label>
    <g:checkBox name="${domainPrefix}scaleAm" value="${studyBlockInstance?.scaleAm}" />
</div>

<div class="fieldcontain ${hasErrors(bean: studyBlockInstance, field: 'scaleC', 'error')} ">
    <label for="scaleC">
        <g:message code="studyBlock.scaleC.label" default="Scale C" />

    </label>
    <g:checkBox name="${domainPrefix}scaleC" value="${studyBlockInstance?.scaleC}" />
</div>

<h3>Arpeggios</h3>

<h3>Exercises</h3>

<div class="fieldcontain ${hasErrors(bean: studyBlockInstance, field: 'exercises', 'error')} ">
	<label for="exercises">
		<g:message code="studyBlock.exercises.label" default="Exercises" />
		
	</label>
	<g:textArea name="${domainPrefix}exercises" value="${studyBlockInstance?.exercises}"/>
</div>

<g:hiddenField id="lesson" name="${domainPrefix}lesson.id" optionKey="id" required="" value="${studyBlockInstance?.lesson?.id}" class="many-to-one"/>
