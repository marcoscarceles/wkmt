import uk.co.makroos.wkmt.Lesson
import uk.co.makroos.wkmt.Student
import uk.co.makroos.wkmt.StudyBlock

class BootStrap {

    def init = { servletContext ->

        def marcos = new Student(fullName: "Marcos Carceles")
        marcos.save(flush:true)
        def firstLesson = new Lesson()
        firstLesson.date = new Date()
        firstLesson.save(flush:true)
        firstLesson.practiced = new StudyBlock(scaleC: true, exercises: "Table Excercise", lesson: firstLesson)
        firstLesson.homework = new StudyBlock(scaleC: true, scaleAm: true, exercises: "Table Excercise\n Bartok 1-3\n\n --Cliking 'Next Lesson' will create a new Lesson based on this one! :D", lesson: firstLesson)
        marcos.addToLessons(firstLesson)
        marcos.save(flush:true)
    }
    def destroy = {
    }
}
