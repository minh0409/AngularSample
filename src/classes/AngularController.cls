global with sharing class AngularController {
   // hardcode an account id for demo purposes
   static String accountId = '00141000008yKcdAAE';
 
   global static String getAccount() {
       return JSON.serialize([select name
           from account where id = :accountId][0]);
   }    
 
   global static String getContacts() {
       return JSON.serialize([select FirstName , LastName, Email
           from contact where accountId = :accountId]);
   }
}