public with sharing class Manage_Rate_Controller {

    public PageReference save() {
        return null;
    }


    public String account { get; set; }

    
    public List<Rate__c> RateList{
    get{
        if(RateList == null){
           RateList = [Select Name, Company_Name__c, Expiring_Premium__c, Tier__c from Rate__c order by name]; 
        }
        return RateList;
    }
    set;
    
    }
    
    


public class Account{

String LastName = '10';

}
}