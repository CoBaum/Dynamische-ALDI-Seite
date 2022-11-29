package dynamische.aldi.seite

import grails.converters.JSON

class Teaser_JSONController {

    def index() {
        render view: "/json"
    }

    def jsonify() {
        def teaserList = Teaser.list().unique()
        respond teaserList, formats: ['json']
    }
}
