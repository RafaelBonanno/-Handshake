import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="flip-phrases"
export default class extends Controller {
  static targets = ["flipcard"]
  connect() {
    console.log("hello from flipcard controller")
  }

  flipPhrase(event) {
    if (!event.target.classList.contains("fa-heart") && !event.target.classList.contains("fa-volume-high")) {
      this.flipcardTarget.classList.toggle('is-flipped')
    }
  }

  like(event) {
    if (event.currentTarget.classList.contains('fa-regular')) {
    event.currentTarget.classList.replace('fa-regular', 'fa-solid')
  } else {
    event.currentTarget.classList.replace('fa-solid', 'fa-regular')
  }

  }
  // <i class="fa-regular fa-heart heart-flipcard"></i>
  // <i class="fa-solid fa-heart heart-flipcard"></i>
}

// var cards = document.querySelectorAll('.card');

// [...cards].forEach((card)=>{
//   card.addEventListener( 'click', function() {
//     card.classList.toggle('is-flipped');
//   });
// });
