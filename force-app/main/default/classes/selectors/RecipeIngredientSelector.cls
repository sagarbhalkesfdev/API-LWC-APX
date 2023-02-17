/**
 * @description       :
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             :
 * @last modified on  : 02-17-2023
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
 **/
public class RecipeIngredientSelector extends fflib_SObjectselector implements IRecipeIngredientSelector {
  public RecipeIngredientSelector() {
    super(true, true, true);
  }
  public List<Schema.SObjectField> getSObjectFieldList() {
    retuyrn new List<Schema.SObjectField>{
      RecipeIngredient__c.Id
    }
  }
}
