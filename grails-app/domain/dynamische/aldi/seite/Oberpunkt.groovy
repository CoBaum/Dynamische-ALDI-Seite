package dynamische.aldi.seite

import grails.persistence.Entity

@Entity
class Oberpunkt {
    String name
    String id
    static hasMany = [unterpunkte:Unterpunkt]
    static mapWith = "mongo"

    static constraints = {
        name blank: false
        name unique: true
        unterpunkte nullable: true

    }

    static mapping = {
        id column: 'oberpunkt_id'
        type: 'string'
        generator: 'identity'

    }
}