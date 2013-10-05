package uk.co.makroos.wkmt

class FixtureController {

    def bootstrapService

    def bootstrap() {
        bootstrapService.init()
        render text: "OK!"
    }
}
