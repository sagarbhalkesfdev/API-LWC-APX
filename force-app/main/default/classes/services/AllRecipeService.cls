/**
 * @description       :
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             :
 * @last modified on  : 02-17-2023
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
 **/
public with sharing class AllRecipeService {
  public AllRecipeService() {
  }

  List<RecipeIngredient__c> getAllRecipes() {
    return service.getAllRecipes();
  }

  private static IAllRecipeService service {
    get {
      return (IAllRecipeService) Application.Service.newInstance(
        IAllRecipeService.class
      );
    }
  }
}
