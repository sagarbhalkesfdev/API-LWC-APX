/**
 * @description       :
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             :
 * @last modified on  : 02-23-2023
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
 **/
public with sharing class RecipeController {
  @AuraEnabled(cacheable=true)
  public static List<RecipeIngredient__c> getAllRecipe() {
    try {
      return AllRecipeService.getAllRecipes();
    } catch (Exception e) {
      throw new AuraHandledException(e.getMessage());
    }
  }
}
