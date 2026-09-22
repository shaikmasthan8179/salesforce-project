@isTest
public class Test_AccountService {

    @isTest
    static void testUpdateCustomerStatus(){

        Account acc = new Account(
            Name = 'Test Account',
            AnnualRevenue = 2000000
        );

        List<Account> accList = new List<Account>();
        accList.add(acc);

        AccountService.updateCustomerStatus(accList);

        System.assertEquals(
            true,
            acc.Active_Customer__c
        );
    }
}