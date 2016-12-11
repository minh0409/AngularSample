global with sharing class AngularController {
  

   @RemoteAction
   global static Account getAccountRemoting(String name) {
   		return [select name from account where Name = :name limit 1];
   }
   
    @RemoteAction
   global static List<Contact> getContactsRemoting(String name) {
   		return [select FirstName , LastName, Email, Phone from contact where account.Name = :name ];
 
   }
 
 
}