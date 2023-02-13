import { LightningElement } from "lwc";

export default class FirstLwcComponent extends LightningElement {
  greeting = "";

  get getGreetings() {
    return new Date().getHours() < 12
      ? "Good Morning"
      : new Date().getHours() < 18
      ? "Good Afternoon"
      : "Good Evening";
  }
}
