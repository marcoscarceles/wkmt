package uk.co.makroos.wkmt

class StudyBlock {

    boolean scaleC
    boolean scaleAm

    String exercises

    static belongsTo = [lesson: Lesson]

    static constraints = {
    }
}
