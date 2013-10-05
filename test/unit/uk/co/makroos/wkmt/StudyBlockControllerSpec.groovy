package uk.co.makroos.wkmt



import grails.test.mixin.*
import spock.lang.*

@TestFor(StudyBlockController)
@Mock(StudyBlock)
class StudyBlockControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.studyBlockInstanceList
            model.studyBlockInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.studyBlockInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def studyBlock = new StudyBlock()
            studyBlock.validate()
            controller.save(studyBlock)

        then:"The create view is rendered again with the correct model"
            model.studyBlockInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            studyBlock = new StudyBlock(params)

            controller.save(studyBlock)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/studyBlock/show/1'
            controller.flash.message != null
            StudyBlock.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def studyBlock = new StudyBlock(params)
            controller.show(studyBlock)

        then:"A model is populated containing the domain instance"
            model.studyBlockInstance == studyBlock
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def studyBlock = new StudyBlock(params)
            controller.edit(studyBlock)

        then:"A model is populated containing the domain instance"
            model.studyBlockInstance == studyBlock
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            status == 404

        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def studyBlock = new StudyBlock()
            studyBlock.validate()
            controller.update(studyBlock)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.studyBlockInstance == studyBlock

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            studyBlock = new StudyBlock(params).save(flush: true)
            controller.update(studyBlock)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/studyBlock/show/$studyBlock.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            controller.delete(null)

        then:"A 404 is returned"
            status == 404

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def studyBlock = new StudyBlock(params).save(flush: true)

        then:"It exists"
            StudyBlock.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(studyBlock)

        then:"The instance is deleted"
            StudyBlock.count() == 0
            response.redirectedUrl == '/studyBlock/index'
            flash.message != null
    }
}
