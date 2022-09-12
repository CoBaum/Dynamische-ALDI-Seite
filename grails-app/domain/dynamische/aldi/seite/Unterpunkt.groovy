package dynamische.aldi.seite

class Unterpunkt {
    String rowText
    String rowUrl
    static belongsTo = [oberpunkt: Oberpunkt]
    static mapWith = "mongo"

    static constraints = {
        rowText unique: true
        rowText blank: false
        rowUrl nullable: true
        rowUrl url: true




    }
}