/**
 * @description       :
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             :
 * @last modified on  : 02-23-2023
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
 **/
public class AllRecipeServiceImpl implements IAllRecipeService {
  public List<RecipeIngredient__c> getAllRecipes() {
    return selector.getAllRecipes();
  }

  public List<RecipeIngredient__c> serachRecipes(String serachByText) {
    return new List<RecipeIngredient__c>();
  }

  private IRecipeIngredientSelector selector {
    get {
      return ((IRecipeIngredientSelector) Application.Selector.newInstance(
        RecipeIngredient__c.sObjectType
      ));
    }
  }
}
