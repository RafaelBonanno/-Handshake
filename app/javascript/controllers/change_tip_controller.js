import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="change-tip"
export default class extends Controller {
  static targets = ["tip"]

  connect() {
    console.log(this.tipsValue)
  }

  changeTip() {
    console.log("im clicking the button")
    this.tipTarget.classList.add('animate__animated', 'animate__bounceOutLeft')
    // .then(this.tipTarget.innerText = this.tips.sample)
    // console.log(this.tipTarget.innerText)
    // this.tipTarget.classList.add('animate__bounceInRight')
  }
}
