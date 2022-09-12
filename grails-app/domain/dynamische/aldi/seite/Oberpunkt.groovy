package dynamische.aldi.seite

class Oberpunkt {
    String name
    static hasMany = [unterpunkte:Unterpunkt]
    static mapWith = "mongo"

    static constraints = {
        name blank: false
        name unique: true
        unterpunkte nullable: true




    }
}