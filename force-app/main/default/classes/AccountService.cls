public with sharing class AccountService {

    public static void updateCustomerStatus(List<Account> accounts){

        for(Account acc : accounts){
//Added Comment//
            if(acc.AnnualRevenue != null &&
               acc.AnnualRevenue > 10000000){

                acc.Active_Customer__c = true;
            }
        }
    }
}