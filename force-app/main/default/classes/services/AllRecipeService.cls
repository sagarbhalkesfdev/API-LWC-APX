/**
 * @description       :
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             :
 * @last modified on  : 02-23-2023
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
 **/
public with sharing class AllRecipeService {
  public static List<RecipeIngredient__c> getAllRecipes() {
    return service.getAllRecipes();
  }

  private static IAllRecipeService service {
    get {
      return ((IAllRecipeService) Application.Service.newInstance(
        IAllRecipeService.class
      ));
    }
  }
}
