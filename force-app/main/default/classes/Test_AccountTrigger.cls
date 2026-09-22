@isTest
public class Test_AccountTrigger {

    @isTest
    static void testTriggerInsert(){

        Account acc = new Account(
            Name = 'Honda Test Account',
            AnnualRevenue = 5000000
        );

        Test.startTest();

        insert acc;

        Test.stopTest();

        Account result = [
            SELECT Id,
                   Active_Customer__c
            FROM Account
            WHERE Id = :acc.Id
        ];

        System.assertEquals(
            true,
            result.Active_Customer__c
        );
    }

    @isTest
    static void testBulkInsert(){

        List<Account> accList =
            new List<Account>();

        for(Integer i=0; i<200; i++){

            accList.add(
                new Account(
                    Name='Account '+i,
                    AnnualRevenue=2000000
                )
            );
        }

        Test.startTest();

        insert accList;

        Test.stopTest();

        Integer countAcc = [
            SELECT Count()
            FROM Account
            WHERE Active_Customer__c = true
        ];

        System.assertEquals(
            200,
            countAcc
        );
    }
}