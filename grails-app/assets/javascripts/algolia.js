const searchClient = algoliasearch('IFFPK7P3LE', '9b1fa6f2a1970aedf5729c71b3fe5a54');

const search = instantsearch({
    indexName: 'test_index',
    searchClient,
    routing: true
});

search.addWidgets([
    instantsearch.widgets.searchBox({
        container: '#searchbox',
        searchAsYouType: false,
        placeholder: 'Search Teasers...',

    }),

        instantsearch.widgets.hits({
            container: '#hits',
            templates: {
                item: `
                <div>
                <img src="{{imageUrl}}" align="left" alt="{{alt}}" id="teaserImg"/>
                <b><div class="hit-name" align="right" style="line-height: 50px; margin-left: 1290px; font-size: 2rem;">
                    {{#helpers.highlight}}{ "attribute": "name" }{{/helpers.highlight}}
                </div></b>
                 <div class="border" style="border: gray solid thin;"/>
                </div>
                <div class="text">
                    <b>Text:</b> {{#helpers.highlight}}{ "attribute": "text" }{{/helpers.highlight}}
                </div>
                <div class="url">
                    <b>URL:</b> {{#helpers.highlight}}{ "attribute": "teaserUrl" }{{/helpers.highlight}}
                </div>
                </div>
                `,
            },
        }),

    instantsearch.widgets.pagination({
        container: '#pagination'
    })

]);


search.start();

console.log("Hello");
