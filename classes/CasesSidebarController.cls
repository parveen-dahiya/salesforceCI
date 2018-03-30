/*******************************************************************
 * Custom controller for the "Visualforce in the Sidebar" recipe.
 * Retrieves the count of open cases and groups by status.
 *******************************************************************/
public with sharing class CasesSidebarController 
{
    // map of number of cases keyed by state
    public Map<String, Integer> caseCountByStatus {get; set;}
    
    // constructor - queries the database for all open cases and stores them
    // in a map
    public CasesSidebarController()
    {
        List<String> closedLabels=new List<String>();
        for (CaseStatus cand : [select MasterLabel from CaseStatus where IsClosed=true])
        {
            closedLabels.add(cand.MasterLabel);
        }
        System.debug('closedLabels '+closedLabels);
        for(String cl : closedLabels){
        System.debug(cl);            
        }
         System.debug('testing'); 
        caseCountByStatus=new Map<String, Integer>();
        System.debug('select status, count(id) caseCount from Case where status NOT IN '+closedLabels+' GROUP BY status');
        for (AggregateResult ar : [select status, count(id) caseCount from Case where status NOT IN :closedLabels GROUP BY status])
        {

            caseCountByStatus.put((String)ar.get('status'), (Integer) ar.get('caseCount'));
        }
    }
}