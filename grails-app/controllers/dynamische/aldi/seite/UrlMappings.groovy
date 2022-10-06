package dynamische.aldi.seite

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: 'Teaser', action: 'test')
        "/500"(view:'/error')
        "/404"(view:'/notFound')
        "/holzbeine"(view: '/holzbeine')
        "/test"(controller: 'Oberpunkt')
        "/teasers"(controller: 'Teaser')
        "/render"(controller: 'Teaser', action: 'render')
    }
}




