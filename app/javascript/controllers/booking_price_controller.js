import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="booking-price"
export default class extends Controller {
  static targets = ["start_time", "end_time", "price"];
  static values = { price: Number };

  update() {
    const pricePerHour = parseInt(this.priceValue, 10);
    const cleaningFee = 150
    const potifyFee = 200
    console.log(pricePerHour)
        // make sure the user has chosen a start date and end date
    if (
      this.start_timeTarget.value !== "" &&
      this.end_timeTarget.value !== ""
    ) 
    {
      // calculating the time from the values in the HTML
      console.log(this.end_timeTarget.value)
      const diffInHours =
        parseInt(this.end_timeTarget.value.split(":")[0], 10) -
        parseInt(this.start_timeTarget.value.split(":")[0], 10);
      // const diffInHours = diffInMs / (1000 * 60 * 60 * 24);
      console.log(diffInHours)
      if (diffInHours > 0) {
        // displays the total price per hour 
        this.priceTarget.innerHTML = `<span>¥${(
          diffInHours * pricePerHour + cleaningFee + potifyFee
        ).toLocaleString()} Total</span>`;
      } else if (diffInHours === 0) {
        // displays 1-night minimum if end date is same as start date

        this.priceTarget.innerHTML =
          "<span class='text-danger fw-light'>1-hour mininum</span>";
      } else {
        // displays invalid if the end date is before the start or not overnight

        this.priceTarget.innerHTML =
          "<span class='text-danger fw-light'>Invalid times</span>";
      }
    }
  }
}
