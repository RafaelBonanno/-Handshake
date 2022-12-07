import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="quiz"
export default class extends Controller {
  static targets = ["button"]

  rightAnswer(event) {
    console.log(event.currentTarget.dataset)
    console.log(this.buttonTarget)
    if (event.currentTarget.dataset.correctAnswer === "true") {
      event.currentTarget.classList.remove("btn-primary")
      event.currentTarget.classList.add("btn-success")
      this.buttonTarget.classList.remove("buttonwin")
    } else {
      event.currentTarget.classList.remove("btn-primary")
      event.currentTarget.classList.add("btn-danger")
    }
  }

}
