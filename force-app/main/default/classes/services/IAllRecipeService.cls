/**
 * @description       :
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             :
 * @last modified on  : 02-17-2023
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
 **/
public interface IAllRecipeService {
  List<RecipeIngredient__c> getAllRecipes();
  List<RecipeIngredient__c> serachRecipes(String serachByText);
}
