/**
 * Class containing tests for AngularController
 */
@IsTest(SeeAllData=false) 
public with sharing class AngularControllerTest {
    

	@isTest // with remoting
	private static void getAccount() {
		// create mock account, not depend on system data
		Account mockAccount = new Account(Name='test');
		insert mockAccount;
		
		Account acc = AngularController.getAccountRemoting('test');
		System.assertEquals('test', acc.Name);
	}
	
    @isTest // with remoting
	private static void getContact() {
		
		Account mockAccount = new Account(Name='test');
		insert mockAccount;
		
		List<Contact> contacts = new List<Contact>();
		// create fake 17 contacts
		for(Integer i=0; i < 17; ++i) {
				Contact mockContact = new Contact(LastName=i+'xyz');
				mockContact.AccountId = mockAccount.Id;
				contacts.add(mockContact);
		}
		insert contacts;
		
		List<Contact> mockContact = AngularController.getContactsRemoting('test');
		System.assertEquals(17, mockContact.size());
	}
    
}