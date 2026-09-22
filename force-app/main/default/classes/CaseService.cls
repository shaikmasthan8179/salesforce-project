public with sharing class CaseService {

    public static void updateCasePriority(List<Case> casesList){

        for(Case cs : casesList){

            if(cs.Origin == 'Phone'){

                cs.Priority = 'High';

            } else if(cs.Origin == 'Email') {

                cs.Priority = 'Low';

            } else {

                cs.Priority = 'Medium';
            }
        }
    }
}
