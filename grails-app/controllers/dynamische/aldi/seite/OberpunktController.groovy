package dynamische.aldi.seite

class OberpunktController {


    def index() {
        def oberpunkte = Oberpunkt.list()
        render (view: '/test', model: [oberpunkte:oberpunkte])

    }


        def show() {
            render (view: '/show', model: [oberpunkte : Oberpunkt.list()])
        }
    }


