/*******************************************************************
 * Custom controller for the "Reacting to URL Parameters" recipe.
 * Executes a search if a parameter is present in the URL.
 *******************************************************************/
public with sharing class SearchFromURLController 
{
    // the name to search for
    public String name {get; set;}
    
    // the matching accounts
    public List<Account> accounts {get; set;}
    
    // indicator that a search has taken place
    public Boolean searched {get; set;}
    
    
    // constructor - extracts the parameter from the URL and, if present,
    // executes the search
    public SearchFromURLController()
    {
        searched=false;
        String nameStr=ApexPages.currentPage().getParameters().get('name');
        system.debug('@@@@@' + nameStr);
        system.debug('first@@@@@'+ searched);
        if (null!=nameStr)
        {
            name=nameStr;
            executeSearch();
        }
    }
    
    // action method to execute the search
    public PageReference executeSearch()
    {
        searched=true;
        system.debug('first@@@@@'+ searched);
        String searchStr='%' + name + '%';
        system.debug('variable name@@@@@'+ name);
        accounts=[select id, Name, Industry, Type from Account where name LIKE :searchStr];
        
        return null;
    }
}