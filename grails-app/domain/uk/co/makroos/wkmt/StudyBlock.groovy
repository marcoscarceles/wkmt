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
