package dynamische.aldi.seite

import grails.persistence.Entity

@Entity
class Unterpunkt {
    String rowText
    String rowUrl
    String id
    static belongsTo = [oberpunkt: Oberpunkt]
    static mapWith = "mongo"

    static constraints = {
        rowText unique: true
        rowText blank: false
        rowUrl nullable: true
        rowUrl url: true

    }

    static mapping = {
        id column: 'unterpunkt_id'
        type: 'string'
        generator: 'identity'

    }

}