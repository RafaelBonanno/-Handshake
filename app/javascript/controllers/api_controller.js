import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="api"
export default class extends Controller {
  static targets = ["sound"]
  connect() {
    console.log("Hello from the API controller")
    console.log(this.soundTarget)
  }

  fetchSpeech(event) {
    console.log("I just clicked to ask the API")
    console.log(this.soundTarget.textContent)
    let query = this.soundTarget.textContent
    let code = event.currentTarget.dataset.lang
    fetch(`http://api.voicerss.org/?key=475e01e01a48448189640b5842ece531&hl=${code}&src=${query}`)
      .then(response => new Audio(response.url).play())
}
    // http://api.voicerss.org/?key=475e01e01a48448189640b5842ece531&hl=en-us&src=`${ }`
  }
