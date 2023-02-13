/**
 * @description       :
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             :
 * @last modified on  : 02-13-2023
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
 **/
trigger RecipeIngredientsBI on RecipeIngredient__c(before insert) {
  System.debug('Before Insert Recipe RecipeIngredientsBI Trigger called');
  for (RecipeIngredient__c riBI : Trigger.new) {
    List<RecipeIngredient__c> newRecipe = [
      SELECT Id, Recipe_Name__c
      FROM RecipeIngredient__c
    ];
    if (newRecipe.size() > 0) {
      riBI.Recipe_Name__c.addError(
        'Recipe with the same name already existing'
      );
    }
  }
}
