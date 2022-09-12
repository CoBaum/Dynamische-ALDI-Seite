<!doctype html>
<html>
 <head>
    <asset:stylesheet href="styles.css"/>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <title>ALDI Nord Testsite</title>
 </head>
 <body id="body">
 <header class="header">
    <div class="meta-wrapper">
        <div class="container">
            <div class="meta-inline">
                <span>Beste Qualität zum ALDI Preis.</span>
                <ul class="navigation-meta">
                    <li>
                        <a href="#">Kontakt</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="container">
        <a class="logo" href="http://www.aldi-nord.de">
            <h1></h1>
            <g:img dir="img" file="logo.png" alt="aldinordlogo" />
        </a>
        <ul class="navigation">
            <g:each in="${oberpunkte}" var="oberpunkt">
                <li>
                <g:link action="show">${oberpunkt.name}</g:link>
                <ul>
                    <g:each in="${oberpunkt.unterpunkte.sort {it. id}}" var="unterpunkt">
                        <li>
                        <g:link action="show">${unterpunkt.rowText}</g:link>
                        </li>
                    </g:each>
                </li>
                </ul>
            </g:each>
        </ul>
    </div>
 </header>
 <main class="main">
    <div class="container">
        <section>
            <h1>Willkommen zur offiziellen ALDI Nord Testseite! Es erwarten Sie einmalige Angebote!</h1>
            <h1></h1>
                <a class="teaser" href="/holzbeine">
                    <g:img dir="/img/" file="Illustration.png" alt="holzbeinwerbung"/>
                </a>
            <h2>Außerdem – Jetzt Vorbestellen: Handtaschen für Füße!</h2>
            <h3>Exklusiv bei ALDI Nord!</h3>
        </section>
    </div>
 </main>
 <footer class="footer">
    <div class="container">
        <ul class="navigation-footer">
            <li>
                <a href="#">Unternehmen</a>
            <br />
            <ul>
                <br />
                <li>
                    <a href="#">Über ALDI Nord</a>
                </li>
                <br />
                <li>
                    <a href="#">Unternehmenscharta</a>
                </li>
            </ul>
            </li>
            <br />
            <li>
                <a href="#">Presse</a>
            <br />
            <ul>
                <br />
                <li>
                    <a href="#">Newsroom</a>
                </li>
            <br />
                <li><a href="#">Impressum</a></li>
            </ul>
            </li>
            <br />
            <li>
                <a href="#">Karriere</a>
            <br />
            <ul>
                <br />
                <li>
                    <a href="#">Bewerberportal</a>
                </li>
            <br />
                <li>
                    <a href="#">Erfahrungsberichte</a>
                </li>
            </ul>
            </li>
            <br />
            <li>
                <a href="#">Support</a>
            <br />
            <ul>
                <br />
                <li>
                    <a href="#">FAQ</a>
                </li>
            </ul>
            </li>
        </ul>
    </div>
 </footer>
 </body>
</html>