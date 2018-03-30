@isTest
    private class AppleWatch_Test {
        
        @isTest static void afterinsert() 

        
        {
            Opportunity opp = new Opportunity();
            opp.Name      = 'Renu';
            opp.CloseDate = Date.today();
            opp.StageName = 'Qualification';
            opp.Amount    = 55000;
            insert opp;
        }
        
        
        
    }