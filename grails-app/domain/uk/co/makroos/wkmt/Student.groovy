package uk.co.makroos.wkmt

class Student {

    String fullName
    List<Lesson> lessons

    static hasMany= [lessons: Lesson]

    static constraints = {
    }

    public String toString() {
        fullName
    }
}
