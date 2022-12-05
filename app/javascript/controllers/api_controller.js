import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="api"
export default class extends Controller {
  static targets = ["sound"]
  connect() {
    console.log("Hello from the API controller")
    console.log(this.soundTarget)
  }

  fetchSpeech(query) {
    console.log("I just clicked to ask the API")
    console.log(this.soundTarget.textContent)
    query = this.soundTarget.textContent
    fetch(`http://api.voicerss.org/?key=475e01e01a48448189640b5842ece531&hl=en-us&src=${query}`, {
    method: "GET",
    })
}
    // http://api.voicerss.org/?key=475e01e01a48448189640b5842ece531&hl=en-us&src=`${ }`
  }
