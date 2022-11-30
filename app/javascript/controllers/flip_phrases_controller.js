import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="flip-phrases"
export default class extends Controller {
  static targets = ["flipcard"]
  connect() {
    console.log("hello from flipcard controller")
  }

  flipPhrase() {
    this.flipcardTarget.classList.toggle('is-flipped')
    console.log("hello from flipcard controller")
  }

}

// var cards = document.querySelectorAll('.card');

// [...cards].forEach((card)=>{
//   card.addEventListener( 'click', function() {
//     card.classList.toggle('is-flipped');
//   });
// });
