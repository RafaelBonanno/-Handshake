import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="flip-phrases"
export default class extends Controller {
  static targets = ["phrase"]
  connect() {
    console.log(this.contentTarget)
    console.log("HEYYYY WHATSGOOD BROTHER")
  }
}
