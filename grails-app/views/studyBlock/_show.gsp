<ol class="property-list studyBlock">

<h3>Scales</h3>
<ul>
    <g:each var="scale" in="${['C','Am','F','Dm','Bb','Gm','Eb','Cm','Ab','Fm','Db','Bbm','Fsharp','Ebm','B','Abm','E','Csharpm','A','Fsharpm','D','Bm','G','Em']}">
        <g:if test="${studyBlockInstance["scale${scale}"]}">
            <li class="fieldcontain">
                <span id="scale${scale}-value" class="property-value">${scale}</span>
            </li>
        </g:if>
    </g:each>
</ul>

<h3>Arpeggios</h3>
<ul>
    <g:each var="arp" in="${['C','Am','F','Dm','Bb','Gm','Eb','Cm','Ab','Fm','Db','Bbm','Fsharp','Ebm','B','Abm','E','Csharpm','A','Fsharpm','D','Bm','G','Em']}">
        <g:if test="${studyBlockInstance["arpeggio${arp}"]}">
            <li class="fieldcontain">
                <span id="arpeggio${arp}-value" class="property-value">${arp}</span>
            </li>
        </g:if>
    </g:each>
</ul>

<h3>Exercises</h3>

<g:if test="${studyBlockInstance?.exercises}">
    <ol class="property-value" aria-labelledby="exercises-label">
        <g:each in="${studyBlockInstance.exercises.split('\n')}" var="exercise">
            <g:if test="${exercise?.trim()}">
                <li>${exercise}</li>
            </g:if>
        </g:each>
    </ol>
</g:if>
</ol>
