public with sharing class AccountService {

    public static void updateCustomerStatus(List<Account> accounts){

        for(Account acc : accounts){

            if(acc.AnnualRevenue != null &&
               acc.AnnualRevenue > 50000000){

                acc.Active_Customer__c = true;
            } else {
// added comment from github to check fetch & git pull//
//added to test automated deployment//
                acc.Active_Customer__c = false;
            }
        }
    }
}
