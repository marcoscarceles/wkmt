import uk.co.makroos.wkmt.Lesson
import uk.co.makroos.wkmt.Student
import uk.co.makroos.wkmt.StudyBlock

class BootStrap {

    def bootstrapService

    def init = { servletContext ->

        bootstrapService.init(servletContext)

    }
    def destroy = {
    }
}
