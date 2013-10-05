<ol class="property-list studyBlock">

    <h3>Scales</h3>
    <ul>
        <g:if test="${studyBlockInstance?.scaleAm}">
            <li class="fieldcontain">
                <span id="scaleAm-label" class="property-value"><g:message code="studyBlock.scaleAm.label" default="Am" /></span>
            </li>
        </g:if>

        <g:if test="${studyBlockInstance?.scaleC}">
            <li class="fieldcontain">
                <span id="scaleC-label" class="property-value"><g:message code="studyBlock.scaleC.label" default="C" /></span>
            </li>
        </g:if>
    </ul>
    <h3>Exercises</h3>

    <g:if test="${studyBlockInstance?.exercises}">
        <p class="property-value" aria-labelledby="exercises-label"><g:fieldValue bean="${studyBlockInstance}" field="exercises"/></p>
    </g:if>
</ol>
