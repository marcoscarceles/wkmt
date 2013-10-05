package uk.co.makroos.wkmt

class Lesson {

    Date   date
    StudyBlock practiced
    StudyBlock homework

    static belongsTo = [student: Student]
//    static hasOne = [practiced: StudyBlock, homework: StudyBlock]

    static constraints = {
    }

    public String toString() {
        "${id} : ${date}"
    }

    public Lesson createNext() {
        def lesson = new Lesson()
        lesson.practiced = homework.clone()
        lesson.homework = homework.clone()
        lesson
    }
}
