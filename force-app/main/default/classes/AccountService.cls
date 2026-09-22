public with sharing class AccountService {

    public static void updateCustomerStatus(List<Account> accounts){

        for(Account acc : accounts){

            if(acc.AnnualRevenue != null &&
               acc.AnnualRevenue > 50000000){

                acc.Active_Customer__c = true;
//added comment to test git pull and it fetch)
            } else {

                acc.Active_Customer__c = false;
            }
        }
    }
}
