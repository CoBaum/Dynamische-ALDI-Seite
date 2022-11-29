let jsonUrl = 'fetchJSON';

fetch(jsonUrl)
    .then((response) => response.json())
    .then(data => {console.log(data); appendData(data) })


function appendData (data) {
    for (let x in data) {
        let teaser = data[x];
        if (teaser.showOnHomePage == true) {
            const anchor = document.getElementById("anchor");
            const teaserDiv = document.createElement("div");

            const teaserImg = document.createElement("img");
            teaserImg.src = teaser.imageUrl;
            teaserImg.alt = teaser.alt;
            teaserImg.onclick = function() {
                window.location.href = teaser.teaserUrl;
            };
            teaserDiv.appendChild(teaserImg);

            anchor.append(teaserDiv);

            const teaserText = document.createElement("h2");
            teaserText.textContent = teaser.text;

            anchor.append(teaserText);

        }
    }
    }
