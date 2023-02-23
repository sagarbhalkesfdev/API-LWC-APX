/**
 * @description       :
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             :
 * @last modified on  : 02-23-2023
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
 **/
trigger RecipeIngredientsBI on RecipeIngredient__c(
  before insert,
  before update
) {
  System.debug('Before Insert Recipe RecipeIngredientsBI Trigger called');

  List<String> recipeName = new List<String>();
  if (Trigger.isBefore) {
    if (Trigger.IsInsert || Trigger.IsUpdate) {
      for (RecipeIngredient__c recipeIngredient : Trigger.new) {
        recipeName.add(recipeIngredient.Recipe_Name__c);
      }
    }
  }

  List<RecipeIngredient__c> newRecipe = [
    SELECT Id, Recipe_Name__c
    FROM RecipeIngredient__c
    WHERE Recipe_Name__c IN :recipeName
  ];

  for (RecipeIngredient__c recipeIngredient : Trigger.new) {
    if (newRecipe.size() > 0) {
      recipeIngredient.Recipe_Name__c.addError(
        'Recipe with the same name already existing'
      );
    }
  }
}
