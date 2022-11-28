<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/instantsearch.css@7.4.5/themes/reset-min.css" integrity="sha256-QlHlZdbSVxaYkUHxhMFhAj/L3pJiW1LuomSCONXBWms=" crossorigin="anonymous">
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
    <div id="hits"></div>
        <section>
            <h1></h1>
            <f:table collection="${teaserList}"/>
            <h1></h1>
            <h3></h3>
        </section>
</main>
<footer class="footer" style="height: 50%">
</footer>
<script src="https://cdn.jsdelivr.net/npm/algoliasearch@4.14.2/dist/algoliasearch-lite.umd.js" integrity="sha256-dImjLPUsG/6p3+i7gVKBiDM8EemJAhQ0VvkRK2pVsQY=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/instantsearch.js@4.49.1/dist/instantsearch.production.min.js" integrity="sha256-3s8yn/IU/hV+UjoqczP+9xDS1VXIpMf3QYRUi9XoG0Y=" crossorigin="anonymous"></script>
<script type="module" <asset:javascript src='algolia.js'/>
</script>
</body>
</html>