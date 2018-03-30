/*******************************************************************
 * Custom controller for the "Custom Lookup" recipe. Executes a 
 * search based on a query string entered by a user. 
 *******************************************************************/
public with sharing class LookupController 
{

    public Account accounts { get; set; }

    public String doneLookup { get; set; }

    public PageReference runQuery() {
        return null;
    }


    public String query { get; set; }
   
    
}