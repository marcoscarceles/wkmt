package uk.co.makroos.wkmt

class StudyBlock {

    boolean scaleC
    boolean scaleAm
    boolean scaleF
    boolean scaleDm
    boolean scaleBb
    boolean scaleGm
    boolean scaleEb
    boolean scaleCm
    boolean scaleAb
    boolean scaleFm
    boolean scaleDb
    boolean scaleBbm
    boolean scaleFsharp
    boolean scaleEbm
    boolean scaleB
    boolean scaleAbm
    boolean scaleE
    boolean scaleCsharpm
    boolean scaleA
    boolean scaleFsharpm
    boolean scaleD
    boolean scaleBm
    boolean scaleG
    boolean scaleEm

    boolean arpeggioC
    boolean arpeggioAm
    boolean arpeggioF
    boolean arpeggioDm
    boolean arpeggioBb
    boolean arpeggioGm
    boolean arpeggioEb
    boolean arpeggioCm
    boolean arpeggioAb
    boolean arpeggioFm
    boolean arpeggioDb
    boolean arpeggioBbm
    boolean arpeggioFsharp
    boolean arpeggioEbm
    boolean arpeggioB
    boolean arpeggioAbm
    boolean arpeggioE
    boolean arpeggioCsharpm
    boolean arpeggioA
    boolean arpeggioFsharpm
    boolean arpeggioD
    boolean arpeggioBm
    boolean arpeggioG
    boolean arpeggioEm

    String exercises

    static belongsTo = [lesson: Lesson]

    static constraints = {
        scaleC()
        scaleAm()
        scaleF()
        scaleDm()
        scaleBb()
        scaleGm()
        scaleEb()
        scaleCm()
        scaleAb()
        scaleFm()
        scaleDb()
        scaleBbm()
        scaleFsharp()
        scaleEbm()
        scaleB()
        scaleAbm()
        scaleE()
        scaleCsharpm()
        scaleA()
        scaleFsharpm()
        scaleD()
        scaleBm()
        scaleG()
        scaleEm()

        arpeggioC()
        arpeggioAm()
        arpeggioF()
        arpeggioDm()
        arpeggioBb()
        arpeggioGm()
        arpeggioEb()
        arpeggioCm()
        arpeggioAb()
        arpeggioFm()
        arpeggioDb()
        arpeggioBbm()
        arpeggioFsharp()
        arpeggioEbm()
        arpeggioB()
        arpeggioAbm()
        arpeggioE()
        arpeggioCsharpm()
        arpeggioA()
        arpeggioFsharpm()
        arpeggioD()
        arpeggioBm()
        arpeggioG()
        arpeggioEm()

        exercises nullable: true, blank: false
    }

    public StudyBlock copy() {
        def block = new StudyBlock()

        block.scaleC = scaleC
        block.scaleAm = scaleAm
        block.scaleF = scaleF
        block.scaleDm = scaleDm
        block.scaleBb = scaleBb
        block.scaleGm = scaleGm
        block.scaleEb = scaleEb
        block.scaleCm = scaleCm
        block.scaleAb = scaleAb
        block.scaleFm = scaleFm
        block.scaleDb = scaleDb
        block.scaleBbm = scaleBbm
        block.scaleFsharp = scaleFsharp
        block.scaleEbm = scaleEbm
        block.scaleB = scaleB
        block.scaleAbm = scaleAbm
        block.scaleE = scaleE
        block.scaleCsharpm = scaleCsharpm
        block.scaleA = scaleA
        block.scaleFsharpm = scaleFsharpm
        block.scaleD = scaleD
        block.scaleBm = scaleBm
        block.scaleG = scaleG
        block.scaleEm = scaleEm

        block.exercises = this.exercises
        block
    }

    public String toString() {
        "Scales: [ ${scaleC ? 'C ':''} ${scaleAm ? 'Am ':''}], Exercises: ${exercises}"
    }
}
