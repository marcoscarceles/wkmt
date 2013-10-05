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
        firstLesson.homework = new StudyBlock(scaleC: true, scaleAm: true, exercises: "Table Excercise\n Bartok 1-3\n\n --Cliking 'Next Lesson' will create a new Lesson based on this one! :D", lesson: firstLesson)
        marcos.addToLessons(firstLesson)
        marcos.save(flush:true)
    }
}