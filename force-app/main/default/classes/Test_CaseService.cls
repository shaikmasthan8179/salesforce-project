@isTest
public class Test_CaseService {

    @isTest
    static void testUpdateCasePriority(){

        Case c1 = new Case(
            Subject='Test Case 1',
            Origin='Phone',
            Status='New'
        );

        Case c2 = new Case(
            Subject='Test Case 2',
            Origin='Web',
            Status='New'
        );

        List<Case> casesList = new List<Case>{c1,c2};

        Test.startTest();

        CaseService.updateCasePriority(casesList);

        Test.stopTest();

        System.assertEquals('High', c1.Priority);
        System.assertEquals('Medium', c2.Priority);
    }
}