package dynamische.aldi.seite

import com.fasterxml.jackson.annotation.JsonProperty
import grails.persistence.Entity

@Entity
class Teaser {

    String imageUrl
    String teaserUrl
    String name
    String text
    String id
    @JsonProperty("objectID")
    String alt
    boolean showOnHomePage
    static mapWith = "mongo"

    static constraints = {
        name blank: false
        imageUrl blank: false
        text blank: false
        imageUrl url: true
        teaserUrl blank: false
        //teaserUrl url: true
        //name unique: true
        alt blank: false
        showOnHomePage blank: false

            }

    boolean equals(o) {
      if (this.is(o)) return true
      if (getClass() != o.class) return false

      Teaser teaser = (Teaser) o

      if (imageUrl != teaser.imageUrl) return false
      if (name != teaser.name) return false
      if (teaserUrl != teaser.teaserUrl) return false
      if (text != teaser.text) return false

      return true
  }

int hashCode() {
    int result
    result = (imageUrl != null ? imageUrl.hashCode() : 0)
    result = 31 * result + (teaserUrl != null ? teaserUrl.hashCode() : 0)
    result = 31 * result + (name != null ? name.hashCode() : 0)
    result = 31 * result + (text != null ? text.hashCode() : 0)
    return result
}

}
