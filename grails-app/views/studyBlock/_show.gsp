<ol class="property-list studyBlock">

<h3>Scales</h3>
<ul>

<g:if test="${studyBlockInstance?.scaleC}">
    <li class="fieldcontain">
        <span id="scaleC-value" class="property-value">Scale C</span>
    </li>
</g:if>

<g:if test="${studyBlockInstance?.scaleAm}">
    <li class="fieldcontain">
        <span id="scaleAm-value" class="property-value">Scale Am</span>
    </li>
</g:if>

<g:if test="${studyBlockInstance?.scaleF}">
    <li class="fieldcontain">
        <span id="scaleF-value" class="property-value">Scale F</span>
    </li>
</g:if>
    </ul>
<g:if test="${studyBlockInstance?.scaleDm}">
    <li class="fieldcontain">
        <span id="scaleDm-value" class="property-value">Scale Dm</span>
    </li>
</g:if>

<g:if test="${studyBlockInstance?.scaleBb}">
    <li class="fieldcontain">
        <span id="scaleBb-value" class="property-value">Scale Bb</span>
    </li>
</g:if>

<g:if test="${studyBlockInstance?.scaleGm}">
    <li class="fieldcontain">
        <span id="scaleGm-value" class="property-value">Scale Gm</span>
    </li>
</g:if>

<g:if test="${studyBlockInstance?.scaleEb}">
    <li class="fieldcontain">
        <span id="scaleEb-value" class="property-value">Scale Eb</span>
    </li>
</g:if>

<g:if test="${studyBlockInstance?.scaleCm}">
    <li class="fieldcontain">
        <span id="scaleCm-value" class="property-value">Scale Cm</span>
    </li>
</g:if>

<g:if test="${studyBlockInstance?.scaleAb}">
    <li class="fieldcontain">
        <span id="scaleAb-value" class="property-value">Scale Ab</span>
    </li>
</g:if>

<g:if test="${studyBlockInstance?.scaleFm}">
    <li class="fieldcontain">
        <span id="scaleFm-value" class="property-value">Scale Fm</span>
    </li>
</g:if>

<g:if test="${studyBlockInstance?.scaleDb}">
    <li class="fieldcontain">
        <span id="scaleDb-value" class="property-value">Scale Db</span>
    </li>
</g:if>

<g:if test="${studyBlockInstance?.scaleBbm}">
    <li class="fieldcontain">
        <span id="scaleBbm-value" class="property-value">Scale Bbm</span>
    </li>
</g:if>

<g:if test="${studyBlockInstance?.scaleFsharp}">
    <li class="fieldcontain">
        <span id="scaleFsharp-value" class="property-value">Scale F#</span>
    </li>
</g:if>

<g:if test="${studyBlockInstance?.scaleEbm}">
    <li class="fieldcontain">
        <span id="scaleEbm-value" class="property-value">Scale Ebm</span>
    </li>
</g:if>

<g:if test="${studyBlockInstance?.scaleB}">
    <li class="fieldcontain">
        <span id="scaleB-value" class="property-value">Scale B</span>
    </li>
</g:if>

<g:if test="${studyBlockInstance?.scaleAbm}">
    <li class="fieldcontain">
        <span id="scaleAbm-value" class="property-value">Scale Abm</span>
    </li>
</g:if>

<g:if test="${studyBlockInstance?.scaleE}">
    <li class="fieldcontain">
        <span id="scaleE-value" class="property-value">Scale E</span>
    </li>
</g:if>

<g:if test="${studyBlockInstance?.scaleCsharpm}">
    <li class="fieldcontain">
        <span id="scaleCsharpm-value" class="property-value">Scale C#m</span>
    </li>
</g:if>

<g:if test="${studyBlockInstance?.scaleA}">
    <li class="fieldcontain">
        <span id="scaleA-value" class="property-value">Scale A</span>
    </li>
</g:if>

<g:if test="${studyBlockInstance?.scaleFsharpm}">
    <li class="fieldcontain">
        <span id="scaleFsharpm-value" class="property-value">Scale F#m</span>
    </li>
</g:if>

<g:if test="${studyBlockInstance?.scaleD}">
    <li class="fieldcontain">
        <span id="scaleD-value" class="property-value">Scale D</span>
    </li>
</g:if>

<g:if test="${studyBlockInstance?.scaleBm}">
    <li class="fieldcontain">
        <span id="scaleBm-value" class="property-value">Scale Bm</span>
    </li>
</g:if>

<g:if test="${studyBlockInstance?.scaleG}">
    <li class="fieldcontain">
        <span id="scaleG-value" class="property-value">Scale G</span>
    </li>
</g:if>

<g:if test="${studyBlockInstance?.scaleEm}">
    <li class="fieldcontain">
        <span id="scaleEm-value" class="property-value">Scale Em</span>
    </li>
</g:if>

<h3>Exercises</h3>

<g:if test="${studyBlockInstance?.exercises}">
    <ol class="property-value" aria-labelledby="exercises-label">
        <g:each in="${studyBlockInstance.exercises.split('\n')}" var="exercise">
            <g:if test="${exercise}">
                <li>${exercise}</li>
            </g:if>
        </g:each>
    </ol>
</g:if>
</ol>
