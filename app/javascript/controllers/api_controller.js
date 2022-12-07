import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="api"
export default class extends Controller {
  static targets = ["sound"]
  connect() {
    console.log("Hello from the API controller")
    console.log(this.soundTarget)
  }

  fetchSpeech(event) {
    let query = this.soundTarget.outerText
    let code = event.currentTarget.dataset.lang
    console.log(query)
    fetch(`https://api.voicerss.org/?key=475e01e01a48448189640b5842ece531&hl=${code}&src=${query}`)
      .then(response => new Audio(response.url).play())
}
    // http://api.voicerss.org/?key=475e01e01a48448189640b5842ece531&hl=en-us&src=`${ }`
  }
