import uk.co.makroos.wkmt.Student

class BootStrap {

    def init = { servletContext ->

        def marcos = new Student(fullName: "Marcos Carceles").save(flush:true)

    }
    def destroy = {
    }
}
