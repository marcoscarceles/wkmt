package uk.co.makroos.wkmt

class StudyBlock {

    boolean scaleC
    boolean scaleAm

    String exercises

    static belongsTo = [lesson: Lesson]

    static constraints = {
        exercises nullable: true, blank: false
    }

    public StudyBlock copy() {
        def block = new StudyBlock()
        block.scaleC = this.scaleC
        block.scaleAm = this.scaleAm
        block.exercises = this.exercises
        block
    }

    public String toString() {
        "Scales: [ ${scaleC ? 'C ':''} ${scaleAm ? 'Am ':''}], Exercises: ${exercises}"
    }
}
