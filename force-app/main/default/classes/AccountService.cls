public with sharing class AccountService {

    public static void updateCustomerStatus(List<Account> accounts){

        for(Account acc : accounts){

            if(acc.AnnualRevenue != null &&
               acc.AnnualRevenue > 10000000){

                acc.Active_Customer__c = true;

            } else {

                acc.Active_Customer__c = false;
            }
        }
    }
}