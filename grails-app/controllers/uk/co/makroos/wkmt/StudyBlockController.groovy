package uk.co.makroos.wkmt



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class StudyBlockController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond StudyBlock.list(params), model:[studyBlockInstanceCount: StudyBlock.count()]
    }

    def show(StudyBlock studyBlockInstance) {
        respond studyBlockInstance
    }

    def create() {
        respond new StudyBlock(params)
    }

    @Transactional
    def save(StudyBlock studyBlockInstance) {
        if (studyBlockInstance == null) {
            notFound()
            return
        }

        if (studyBlockInstance.hasErrors()) {
            respond studyBlockInstance.errors, view:'create'
            return
        }

        studyBlockInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'studyBlockInstance.label', default: 'StudyBlock'), studyBlockInstance.id])
                redirect studyBlockInstance
            }
            '*' { respond studyBlockInstance, [status: CREATED] }
        }
    }

    def edit(StudyBlock studyBlockInstance) {
        respond studyBlockInstance
    }

    @Transactional
    def update(StudyBlock studyBlockInstance) {
        if (studyBlockInstance == null) {
            notFound()
            return
        }

        if (studyBlockInstance.hasErrors()) {
            respond studyBlockInstance.errors, view:'edit'
            return
        }

        studyBlockInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'StudyBlock.label', default: 'StudyBlock'), studyBlockInstance.id])
                redirect studyBlockInstance
            }
            '*'{ respond studyBlockInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(StudyBlock studyBlockInstance) {

        if (studyBlockInstance == null) {
            notFound()
            return
        }

        studyBlockInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'StudyBlock.label', default: 'StudyBlock'), studyBlockInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'studyBlockInstance.label', default: 'StudyBlock'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
