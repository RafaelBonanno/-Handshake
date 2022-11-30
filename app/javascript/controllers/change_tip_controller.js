import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="change-tip"
export default class extends Controller {
  static targets = ["tip"]
  static values = {
    tips: Array
  }

  connect() {
    console.log(this.tipsValue)
  }
}
//   changeTip(){
//     console.log("im clicking the button")
//     console.log(this.tipTarget.innerText)
//     console.log(this.tips)
//     this.tipTarget.classList.add('animate__animated', 'animate__bounceOutLeft')
//     .then(this.tipTarget.innerText = this.tips.sample)
//     console.log(this.tipTarget.innerText)
//     this.tipTarget.classList.add('animate__bounceInRight')
//   }
// }
