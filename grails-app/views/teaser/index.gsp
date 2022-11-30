<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <asset:stylesheet href="styles.css"/>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <title>Teaser Details</title>
    <style>
        input {
            margin-bottom: -5px;
            width:20%;
    }
        #searchbox
         {
            margin-left: 40%;
        }

    </style>
</head>
<body id="body">
<main class="main" style="padding-bottom: 95px; padding-top: 95px;">
    <form action="/suche" method="get">
        <input id="searchbox" placeholder="Search Teasers..." type="text" name="test_index[query]">
    </form>
        <section>
            <h1></h1>
            <f:table collection="${teaserList}"/>
            <h1></h1>
            <h3></h3>
        </section>
</main>
<footer class="footer" style="height: 50%">
</footer>
</body>
</html>