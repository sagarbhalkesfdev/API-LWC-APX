import { LightningElement, wire } from "lwc";
import getAllRecipe from "@salesforce/apex/RecipeController.getAllRecipe";
export default class AllRecipes extends LightningElement {
  @wire(getAllRecipe)
  wiredAllRecipe({ data, error }) {
    if (data) {
      console.log("DATA :: " + data);
      console.log("DATA :: " + JSON.stringify(data));
    } else if (error) {
      console.log("ERROR :: " + JSON.stringify(error));
    }
  }
}
