package uk.co.makroos.wkmt

import grails.transaction.Transactional

import javax.servlet.ServletContext

@Transactional
class BootstrapService {

    def init(ServletContext servletContext=null) {
        def marcos = new Student(fullName: "Marcos Carceles")
        marcos.save()
        def firstLesson = new Lesson()
        firstLesson.date = new Date()
        firstLesson.save()
        firstLesson.practiced = new StudyBlock(scaleC: true, exercises: "Table Excercise", lesson: firstLesson)
        def exercises = """
Table Exercise
Bartok 1-3

This is just an example of a lesson. Creating the next lesson is as simple as clicking 'Create Next' and it wil autopopulate with the 'Homework' from the previous one
"""
        firstLesson.homework = new StudyBlock(scaleC: true, scaleAm: true, exercises: exercises, lesson: firstLesson)
        marcos.addToLessons(firstLesson)
        marcos.save(flush:true)
    }
}
