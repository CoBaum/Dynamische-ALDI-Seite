package dynamische.aldi.seite


class TeaserController {

    static scaffold = Teaser


    def index() {
        def teaserList = Teaser.list().unique()
        render view: "index", model: [teaserList : teaserList]


    }

    def delete(String id) {
        def teaser = Teaser.get(id)
        teaser.delete()
        redirect(controller: 'Teaser', action: 'index')
    }

    def test() {
        def teaserList = Teaser.list().unique()
        render view: "/index", model:[teaserList: teaserList]
    }

    def render() {
        def teaserList = Teaser.list().unique()
        render view: "/rendering", model: [teaserList : teaserList]


    }

    }

