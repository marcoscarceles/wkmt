package uk.co.makroos.wkmt



import static org.springframework.http.HttpStatus.*

class LessonController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Lesson.list(params), model:[lessonInstanceCount: Lesson.count()]
    }

    def show(Lesson lessonInstance) {
        respond lessonInstance
    }

    def create() {
        def lesson = new Lesson(params)
        respond lesson
    }

    def createNext(Lesson lessonInstance) {
        def nextLesson = lessonInstance.createNext()
        respond nextLesson, [view: 'create', model: [lessonInstance: nextLesson]]
    }

    def save(Lesson lessonInstance) {
        if (lessonInstance == null) {
            notFound()
            return
        }

        if (lessonInstance.hasErrors()) {
            respond lessonInstance.errors, view:'create'
            return
        }

        lessonInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'lessonInstance.label', default: 'Lesson'), lessonInstance.id])
                redirect lessonInstance
            }
            '*' { respond lessonInstance, [status: CREATED] }
        }
    }

    def edit(Lesson lessonInstance) {
        respond lessonInstance
    }

    def update(Lesson lessonInstance) {
        if (lessonInstance == null) {
            notFound()
            return
        }

        if (lessonInstance.hasErrors()) {
            respond lessonInstance.errors, view:'edit'
            return
        }

        lessonInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Lesson.label', default: 'Lesson'), lessonInstance.id])
                redirect lessonInstance
            }
            '*'{ respond lessonInstance, [status: OK] }
        }
    }

    def delete(Lesson lessonInstance) {

        if (lessonInstance == null) {
            notFound()
            return
        }

        lessonInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Lesson.label', default: 'Lesson'), lessonInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'lessonInstance.label', default: 'Lesson'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
