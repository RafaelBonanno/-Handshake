import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="quiz"
export default class extends Controller {

  rightAnswer(event) {
    console.log(event.currentTarget.dataset)
    if (event.currentTarget.dataset.correctAnswer === "true") {
      event.currentTarget.classList.remove("btn-primary")
      event.currentTarget.classList.add("btn-success")
    } else {
      event.currentTarget.classList.remove("btn-primary")
      event.currentTarget.classList.add("btn-danger")
    }
  }

}
