import { LightningElement } from "lwc";

export default class FirstLwcComponent extends LightningElement {
  greeting = "Good Afternoon";

  get getGreetings() {
    return this.greeting;
  }
}
