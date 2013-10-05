<%@ page import="uk.co.makroos.wkmt.StudyBlock" %>

<g:set var="domainPrefix" value="${propertyName ? propertyName + '.' : ''}"/>

<h3>Scales</h3>

<g:render template="/studyBlock/group" model="[domainPrefix: domainPrefix, studyBlockInstance: studyBlockInstance, group: 'scale']"/>

<h3>Arpeggios</h3>

<g:render template="/studyBlock/group" model="[domainPrefix: domainPrefix, studyBlockInstance: studyBlockInstance, group: 'arpeggio']"/>

<h3>Exercises</h3>

<div class="fieldcontain ${hasErrors(bean: studyBlockInstance, field: 'exercises', 'error')} ">
	<g:textArea name="${domainPrefix}exercises" value="${studyBlockInstance?.exercises}"   />
</div>

<g:hiddenField id="lesson" name="${domainPrefix}lesson.id" optionKey="id" required="" value="${studyBlockInstance?.lesson?.id}" class="many-to-one"/>
