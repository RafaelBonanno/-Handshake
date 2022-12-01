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

  changeTip() {
    console.log("im clicking the button");
    // this.tip1Target.classList.toggle('animate__animated', 'animate__flash')
    // this.tip1.tip1Target.classList.toggle('display');
    const tipContent = this.#sampleTipsFromArray();
    this.tipTarget.innerText = tipContent;
    // this.tipTarget.classList.toggle('animate__animated', 'animate__bounceInRight');

    // setTimeout(() => {
    // this.tip2Target.classList.toggle('animate__animated', 'animate__flash')
    // this.tip2Target.innerText = tipContent2;
    // const tipContent2 = this.#sampleTipsFromArray();

    // }, 1000)
    // this.tipTarget.innerText = tipContent;
    // this.tipTarget.classList.add('animate__animated', 'animate__bounceInRight')
    // .then(this.tipTarget.innerText = this.tips.sample)
    // console.log(this.tipTarget.innerText)
    // this.tipTarget.classList.add('animate__bounceInRight')
  }
  #sampleTipsFromArray(){
    var tip = this.tipsValue[Math.floor(Math.random()*this.tipsValue.length)];
    // if (tip != tip) {
      return tip
    // } else {
    //   var tip = this.tipsValue[Math.floor(Math.random()*this.tipsValue.length)];
    //   return tip
    // }
  }
  }
