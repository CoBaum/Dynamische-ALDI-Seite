package dynamische.aldi.seite

import com.algolia.search.DefaultSearchClient
import com.algolia.search.SearchClient
import com.algolia.search.SearchIndex

class AlgoliaJob {
    static triggers = {
      simple repeatInterval:  5000l // execute job once in 5 seconds
    }

    def execute() {
        // execute job
        SearchClient client = DefaultSearchClient.create("IFFPK7P3LE", "facba47b502a84d0b92d387936d4b71f")

        SearchIndex<Teaser> index = client.initIndex("test_index", Teaser.class)
        List<Teaser> teaserList = Teaser.list().unique()
        for (Teaser teaser in teaserList) {
                index.saveObject(teaser).waitTask()
        }


    }
}
