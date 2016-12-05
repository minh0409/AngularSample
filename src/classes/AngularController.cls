global with sharing class AngularController {
   static String accountId = '00141000008yKcdAAE';
 
   global String getAccount() {
         return JSON.serialize([select name from account where id = :accountId][0]);
   }    
 
   global String getContacts() {
       return JSON.serialize([select FirstName , LastName, Email, Phone from contact where accountId = :accountId ]);
   }
   

 
}