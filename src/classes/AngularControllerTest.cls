/**
 * Class containing tests for AngularController
 */
@IsTest public with sharing class AngularControllerTest {
    @IsTest static void testGetAccount() 
    {
      AngularController controller = new AngularController();
      String result = controller.getAccount();
      System.assertEquals('Angular 1.6 Sample', result);      
    }
    

    
}