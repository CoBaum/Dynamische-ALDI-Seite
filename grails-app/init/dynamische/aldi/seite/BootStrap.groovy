package dynamische.aldi.seite

class BootStrap {

    def init = { servletContext ->
        new Oberpunkt(name: "Onlineshop", id: 1)
                .addToUnterpunkte(rowText: "Produkte", rowUrl: "localhost:8080/test", id: 1)
                .addToUnterpunkte(rowText: "Angebote", rowUrl: "localhost:8080/test", id: 2)
                .addToUnterpunkte(rowText: "Exklusiv: Die neue ALDI Nord Lebensversicherung", rowUrl: "localhost:8080/test", id: 3).save()

        new Oberpunkt(name: "Ratgeber & Tipps", id: 2)
                .addToUnterpunkte(rowText: "10 Dinge, die Sie nicht mit Ihrem Einkaufswagen tun sollten", rowUrl: "localhost:8080/test", id: 4)
                .addToUnterpunkte(rowText: "3 Gründe, warum Theodor Albrecht ein süßeres Baby war als sein Bruder", rowUrl: "localhost:8080/test", id: 5)
                .addToUnterpunkte(rowText: "Ihre ALDI Nord Filiale wird von einer Sphinx bewacht? Klicken Sie hier!", rowUrl: "localhost:8080/test", id: 6).save()


        new Oberpunkt(name: "Rezepte", id: 3)
                .addToUnterpunkte(rowText: "Erdbeermarmeladenbrot mit Honig", rowUrl: "localhost:8080/test", id: 7)
                .addToUnterpunkte(rowText: "Coole Explosionen für Daheim", rowUrl: "localhost:8080/test", id: 8)
                .addToUnterpunkte(rowText: "In Pepsi gekochte Krabbe, serviert mit Baguette", rowUrl: "localhost:8080/test", id: 9).save()


        new Oberpunkt(name: "Filialfinder", id: 4)
                .addToUnterpunkte(rowText: "Schatzkarten zum Ausdrucken", rowUrl: "localhost:8080/test", id: 10)
                .addToUnterpunkte(rowText: "... Alternativ gibt es auch Google Maps", rowUrl: "localhost:8080/test", id: 11).save()

    }
    def destroy = {
    }

}