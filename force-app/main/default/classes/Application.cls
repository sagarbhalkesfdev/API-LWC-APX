/**
 * @description       :
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             :
 * @last modified on  : 02-23-2023
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
 **/
@namespaceAccessible
public class Application {
  @namespaceAccessible
  public static final fflib_Application.UnitOfWorkFactory UnitOfWork = new fflib_Application.UnitOfWorkFactory(
    new List<SObjectType>{ user.SObjectType, RecipeIngredient__c.sObjectType }
  );

  @namespaceAccessible
  public static final fflib_Application.ServiceFactory Service = new fflib_Application.ServiceFactory(
    new Map<Type, Type>{ IAllRecipeService.class => AllRecipeServiceImpl.class }
  );

  @namespaceAccessible
  public static final fflib_Application.SelectorFactory Selector = new fflib_Application.SelectorFactory(
    new Map<SObjectType, Type>{
      RecipeIngredient__c.SObjectType => RecipeIngredientSelector.class
    }
  );
}
