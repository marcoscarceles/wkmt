package uk.co.makroos.wkmt

class Lesson {

    Date   date
    
    static belongsTo = [student: Student]
    static hasOne = [practiced: StudyBlock, homework: StudyBlock]

    static constraints = {
    }
}
