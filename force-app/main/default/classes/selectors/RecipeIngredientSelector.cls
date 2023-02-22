/**
 * @description       :
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             :
 * @last modified on  : 02-21-2023
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
 **/
public with sharing class RecipeIngredientSelector extends fflib_SObjectselector implements IRecipeIngredientSelector {
  public RecipeIngredientSelector() {
    super(true, true, true);
  }

  public List<Schema.SObjectField> getSObjectFieldList() {
    return new List<Schema.SObjectField>{
      RecipeIngredient__c.Id,
      RecipeIngredient__c.Recipe_Name__c,
      RecipeIngredient__c.Ingredients__c
    };
  }

  public Schema.SObjectType getSObjectType() {
    return RecipeIngredient__c.SObjectType;
  }

  public List<RecipeIngredient__c> getAllRecipes() {
    return new List<RecipeIngredient__c>();
  }

  public List<RecipeIngredient__c> searchRecipes(String searchTerm) {
    return new List<RecipeIngredient__c>();
  }
}
