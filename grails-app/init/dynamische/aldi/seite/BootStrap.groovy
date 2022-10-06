package dynamische.aldi.seite

class BootStrap {

    def init = { servletContext ->
        new Oberpunkt(name: "Onlineshop", id: 1)
                .addToUnterpunkte(rowText: "Produkte", id: 1)
                .addToUnterpunkte(rowText: "Angebote", id: 2)
                .addToUnterpunkte(rowText: "Exklusiv: Die neue ALDI Nord Lebensversicherung", id: 3).save(flush: true)

        new Oberpunkt(name: "Ratgeber & Tipps", id: 2)
                .addToUnterpunkte(rowText: "10 Dinge, die Sie nicht mit Ihrem Einkaufswagen tun sollten", id: 4)
                .addToUnterpunkte(rowText: "3 Gründe, warum Theodor Albrecht ein süßeres Baby war als sein Bruder", id: 5)
                .addToUnterpunkte(rowText: "Ihre ALDI Nord Filiale wird von einer Sphinx bewacht? Klicken Sie hier!", id: 6).save(flush: true)


        new Oberpunkt(name: "Rezepte", id: 3)
                .addToUnterpunkte(rowText: "Erdbeermarmeladenbrot mit Honig", id: 7)
                .addToUnterpunkte(rowText: "Coole Explosionen für Daheim", id: 8)
                .addToUnterpunkte(rowText: "In Pepsi gekochte Krabbe, serviert mit Baguette", id: 9).save(flush: true)


        new Oberpunkt(name: "Filialfinder", id: 4)
                .addToUnterpunkte(rowText: "Schatzkarten zum Ausdrucken", id: 10)
                .addToUnterpunkte(rowText: "... Alternativ gibt es auch Google Maps", id: 11).save(flush: true)


        new Teaser(imageUrl: 'https://i.postimg.cc/YMcngCY5/Illustration.png', teaserUrl: 'http://localhost:8080/holzbeine', name: "mainTeaser", text: "Außerdem – Jetzt Vorbestellen: Handtaschen für Füße!", alt: 'holzbeinTeaser', showOnHomePage: true).save()


    }

    def destroy = {

    }


}