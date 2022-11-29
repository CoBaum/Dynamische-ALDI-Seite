<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/instantsearch.css@7.4.5/themes/satellite-min.css" integrity="sha256-TehzF/2QvNKhGQrrNpoOb2Ck4iGZ1J/DI4pkd2oUsBc=" crossorigin="anonymous">
    <asset:stylesheet href="styles.css"/>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <title>Teaser Details</title>
    <style>
            input {
                margin-bottom: -5px;
                width:20%;
            }

            #hits
            {
                text-align: center;
            }

            #pagination
            {
                margin-left: 49%
            }

            #teaserImg {
                height: 250px;
                width: 300px;
                border: gray solid thin;
                background: white;
            }

            .text,
            .url {
                font-size: 1.875rem;
                font-weight: 403;
                line-height: 6.25rem;

            }

            body {
                font-family: sans-serif; padding: 1em;
            }

    </style>
</head>
<body id="body">
<main class="main" style="padding-bottom: 95px; padding-top: 95px;">
    <div class="container" id="searchbox"></div>
    <div class="container" id="hits"></div>
    <div class="container" id="pagination"></div>
    <div class="container">
    </div>
</main>
<footer class="footer" style="height: 50%">
</footer>
<script src="https://cdn.jsdelivr.net/npm/algoliasearch@4.14.2/dist/algoliasearch-lite.umd.js" integrity="sha256-dImjLPUsG/6p3+i7gVKBiDM8EemJAhQ0VvkRK2pVsQY=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/instantsearch.js@4.49.1/dist/instantsearch.production.min.js" integrity="sha256-3s8yn/IU/hV+UjoqczP+9xDS1VXIpMf3QYRUi9XoG0Y=" crossorigin="anonymous"></script>
<script type="module" <asset:javascript src='algolia.js'/>
</script>
</body>
</html>