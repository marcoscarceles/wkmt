package uk.co.makroos.wkmt

class Student {

    String fullName

    static hasMany= [lessons: Lesson]

    static constraints = {
    }

    public String toString() {
        fullName
    }
}
