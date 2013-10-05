<%@ page import="uk.co.makroos.wkmt.StudyBlock" %>

<g:set var="domainPrefix" value="${propertyName ? propertyName + '.' : ''}"/>

<h3>Scales</h3>

<div class="scaleGoup">

<div class="fieldcontain ${hasErrors(bean: studyBlockInstance, field: 'scaleC', 'error')} ">
	<label for="scaleC">
		<g:message code="studyBlock.scaleC.label" default="Scale C" />
		
	</label>
	<g:checkBox name="${domainPrefix}scaleC" value="${studyBlockInstance?.scaleC}" />
</div>

<div class="fieldcontain ${hasErrors(bean: studyBlockInstance, field: 'scaleAm', 'error')} ">
	<label for="scaleAm">
		<g:message code="studyBlock.scaleAm.label" default="Scale Am" />
		
	</label>
	<g:checkBox name="${domainPrefix}scaleAm" value="${studyBlockInstance?.scaleAm}" />
</div>

<div class="fieldcontain ${hasErrors(bean: studyBlockInstance, field: 'scaleF', 'error')} ">
	<label for="scaleF">
		<g:message code="studyBlock.scaleF.label" default="Scale F" />
		
	</label>
	<g:checkBox name="${domainPrefix}scaleF" value="${studyBlockInstance?.scaleF}" />
</div>

<div class="fieldcontain ${hasErrors(bean: studyBlockInstance, field: 'scaleDm', 'error')} ">
	<label for="scaleDm">
		<g:message code="studyBlock.scaleDm.label" default="Scale Dm" />
		
	</label>
	<g:checkBox name="${domainPrefix}scaleDm" value="${studyBlockInstance?.scaleDm}" />
</div>

<div class="fieldcontain ${hasErrors(bean: studyBlockInstance, field: 'scaleBb', 'error')} ">
	<label for="scaleBb">
		<g:message code="studyBlock.scaleBb.label" default="Scale Bb" />
		
	</label>
	<g:checkBox name="${domainPrefix}scaleBb" value="${studyBlockInstance?.scaleBb}" />
</div>

<div class="fieldcontain ${hasErrors(bean: studyBlockInstance, field: 'scaleGm', 'error')} ">
	<label for="scaleGm">
		<g:message code="studyBlock.scaleGm.label" default="Scale Gm" />
		
	</label>
	<g:checkBox name="${domainPrefix}scaleGm" value="${studyBlockInstance?.scaleGm}" />
</div>

</div>
<div class="scaleGoup">

<div class="fieldcontain ${hasErrors(bean: studyBlockInstance, field: 'scaleEb', 'error')} ">
	<label for="scaleEb">
		<g:message code="studyBlock.scaleEb.label" default="Scale Eb" />
		
	</label>
	<g:checkBox name="${domainPrefix}scaleEb" value="${studyBlockInstance?.scaleEb}" />
</div>

<div class="fieldcontain ${hasErrors(bean: studyBlockInstance, field: 'scaleCm', 'error')} ">
	<label for="scaleCm">
		<g:message code="studyBlock.scaleCm.label" default="Scale Cm" />
		
	</label>
	<g:checkBox name="${domainPrefix}scaleCm" value="${studyBlockInstance?.scaleCm}" />
</div>

<div class="fieldcontain ${hasErrors(bean: studyBlockInstance, field: 'scaleAb', 'error')} ">
	<label for="scaleAb">
		<g:message code="studyBlock.scaleAb.label" default="Scale Ab" />
		
	</label>
	<g:checkBox name="${domainPrefix}scaleAb" value="${studyBlockInstance?.scaleAb}" />
</div>

<div class="fieldcontain ${hasErrors(bean: studyBlockInstance, field: 'scaleFm', 'error')} ">
	<label for="scaleFm">
		<g:message code="studyBlock.scaleFm.label" default="Scale Fm" />
		
	</label>
	<g:checkBox name="${domainPrefix}scaleFm" value="${studyBlockInstance?.scaleFm}" />
</div>

<div class="fieldcontain ${hasErrors(bean: studyBlockInstance, field: 'scaleDb', 'error')} ">
	<label for="scaleDb">
		<g:message code="studyBlock.scaleDb.label" default="Scale Db" />
		
	</label>
	<g:checkBox name="${domainPrefix}scaleDb" value="${studyBlockInstance?.scaleDb}" />
</div>

<div class="fieldcontain ${hasErrors(bean: studyBlockInstance, field: 'scaleBbm', 'error')} ">
	<label for="scaleBbm">
		<g:message code="studyBlock.scaleBbm.label" default="Scale Bbm" />
		
	</label>
	<g:checkBox name="${domainPrefix}scaleBbm" value="${studyBlockInstance?.scaleBbm}" />
</div>

</div>
<div class="scaleGoup">

<div class="fieldcontain ${hasErrors(bean: studyBlockInstance, field: 'scaleFsharp', 'error')} ">
	<label for="scaleFsharp">
		<g:message code="studyBlock.scaleFsharp.label" default="Scale F#" />
		
	</label>
	<g:checkBox name="${domainPrefix}scaleFsharp" value="${studyBlockInstance?.scaleFsharp}" />
</div>

<div class="fieldcontain ${hasErrors(bean: studyBlockInstance, field: 'scaleEbm', 'error')} ">
	<label for="scaleEbm">
		<g:message code="studyBlock.scaleEbm.label" default="Scale Ebm" />
		
	</label>
	<g:checkBox name="${domainPrefix}scaleEbm" value="${studyBlockInstance?.scaleEbm}" />
</div>

<div class="fieldcontain ${hasErrors(bean: studyBlockInstance, field: 'scaleB', 'error')} ">
	<label for="scaleB">
		<g:message code="studyBlock.scaleB.label" default="Scale B" />
		
	</label>
	<g:checkBox name="${domainPrefix}scaleB" value="${studyBlockInstance?.scaleB}" />
</div>

<div class="fieldcontain ${hasErrors(bean: studyBlockInstance, field: 'scaleAbm', 'error')} ">
	<label for="scaleAbm">
		<g:message code="studyBlock.scaleAbm.label" default="Scale Abm" />
		
	</label>
	<g:checkBox name="${domainPrefix}scaleAbm" value="${studyBlockInstance?.scaleAbm}" />
</div>

<div class="fieldcontain ${hasErrors(bean: studyBlockInstance, field: 'scaleE', 'error')} ">
	<label for="scaleE">
		<g:message code="studyBlock.scaleE.label" default="Scale E" />
		
	</label>
	<g:checkBox name="${domainPrefix}scaleE" value="${studyBlockInstance?.scaleE}" />
</div>

<div class="fieldcontain ${hasErrors(bean: studyBlockInstance, field: 'scaleCsharpm', 'error')} ">
	<label for="scaleCsharpm">
		<g:message code="studyBlock.scaleCsharpm.label" default="Scale C#m" />
		
	</label>
	<g:checkBox name="${domainPrefix}scaleCsharpm" value="${studyBlockInstance?.scaleCsharpm}" />
</div>

</div>
<div class="scaleGoup">

<div class="fieldcontain ${hasErrors(bean: studyBlockInstance, field: 'scaleA', 'error')} ">
	<label for="scaleA">
		<g:message code="studyBlock.scaleA.label" default="Scale A" />
		
	</label>
	<g:checkBox name="${domainPrefix}scaleA" value="${studyBlockInstance?.scaleA}" />
</div>

<div class="fieldcontain ${hasErrors(bean: studyBlockInstance, field: 'scaleFsharpm', 'error')} ">
	<label for="scaleFsharpm">
		<g:message code="studyBlock.scaleFsharpm.label" default="Scale F#m" />
		
	</label>
	<g:checkBox name="${domainPrefix}scaleFsharpm" value="${studyBlockInstance?.scaleFsharpm}" />
</div>

<div class="fieldcontain ${hasErrors(bean: studyBlockInstance, field: 'scaleD', 'error')} ">
	<label for="scaleD">
		<g:message code="studyBlock.scaleD.label" default="Scale D" />
		
	</label>
	<g:checkBox name="${domainPrefix}scaleD" value="${studyBlockInstance?.scaleD}" />
</div>

<div class="fieldcontain ${hasErrors(bean: studyBlockInstance, field: 'scaleBm', 'error')} ">
	<label for="scaleBm">
		<g:message code="studyBlock.scaleBm.label" default="Scale Bm" />
		
	</label>
	<g:checkBox name="${domainPrefix}scaleBm" value="${studyBlockInstance?.scaleBm}" />
</div>

<div class="fieldcontain ${hasErrors(bean: studyBlockInstance, field: 'scaleG', 'error')} ">
	<label for="scaleG">
		<g:message code="studyBlock.scaleG.label" default="Scale G" />
		
	</label>
	<g:checkBox name="${domainPrefix}scaleG" value="${studyBlockInstance?.scaleG}" />
</div>

<div class="fieldcontain ${hasErrors(bean: studyBlockInstance, field: 'scaleEm', 'error')} ">
	<label for="scaleEm">
		<g:message code="studyBlock.scaleEm.label" default="Scale Em" />
		
	</label>
	<g:checkBox name="${domainPrefix}scaleEm" value="${studyBlockInstance?.scaleEm}" />
</div>

</div>

<h3>Exercises</h3>

<div class="fieldcontain ${hasErrors(bean: studyBlockInstance, field: 'exercises', 'error')} ">
	<g:textArea name="${domainPrefix}exercises" value="${studyBlockInstance?.exercises}"   />
</div>

<g:hiddenField id="lesson" name="${domainPrefix}lesson.id" optionKey="id" required="" value="${studyBlockInstance?.lesson?.id}" class="many-to-one"/>
