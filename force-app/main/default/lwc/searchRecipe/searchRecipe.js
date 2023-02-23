import { LightningElement } from "lwc";

export default class SearchRecipe extends LightningElement {
  allRecipes = true;
  searchRecipe = false;

  handleClick() {
    this.allRecipes = false;
    this.searchRecipe = true;

    console.log("handleClick CLICKED");
  }

  showAllRecipes() {
    this.allRecipes = true;
    this.searchRecipe = false;

    console.log("handleClick CLICKED");
  }
}
