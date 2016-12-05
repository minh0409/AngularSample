global with sharing class AngularController {
   static String accountId = '00141000008yKcdAAE';
 
   global String getAccount() {
       List<Account> lstAccount = [Select Name from account where id = :accountId];        
       return JSON.serialize(lstAccount);
   }    
 
   global String getContacts() {
       return JSON.serialize([select FirstName , LastName, Email, Phone from contact where accountId = :accountId ]);
   }
   

 
}