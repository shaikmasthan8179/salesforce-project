public with sharing class CaseService {

    public static void updateCasePriority(List<Case> casesList){

        for(Case cs : casesList){

            if(cs.Origin == 'Phone'){

                cs.Priority = 'High';

            } else {

                cs.Priority = 'Medium';
            }
        }
    }
}