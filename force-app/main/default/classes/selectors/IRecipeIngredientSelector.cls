/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 02-17-2023
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public interface IRecipeIngredientSelector extends fflib_SObjectselector {
    public IRecipeIngredientSelector() {
        List<RecipeIngredient__c> getAllRecipes();
        List<RecipeIngredient__c> searchRecipes(String searchTerm);
    }
}