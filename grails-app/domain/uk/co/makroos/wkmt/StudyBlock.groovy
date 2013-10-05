package uk.co.makroos.wkmt

class StudyBlock implements Cloneable {

    boolean scaleC
    boolean scaleAm

    String exercises

    static belongsTo = [lesson: Lesson]

    static constraints = {
        exercises nullable: true, blank: false
    }

    public StudyBlock clone() {
        def block = new StudyBlock()
        block.scaleAm = scaleAm
        block.scaleAm = scaleAm
        block.exercises = exercises
        block.lesson = block.lesson
        block
    }
}
