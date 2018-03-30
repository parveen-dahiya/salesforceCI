public with sharing class conValExtension {

    private final Contact cont;
    private ApexPages.StandardController std ;
    Integer i = 10;
   
    
    // The extension constructor initializes the private member
    // variable acct by using the getRecord method from the standard
    // controller.
    public conValExtension(ApexPages.StandardController stdController) {
        this.cont = (Contact)stdController.getRecord();
        integer i=20;
        std = stdController;
    }

    public PageReference save() {
    PageReference pr;
    
        if((String.IsBlank(cont.Email)) && (String.IsBlank(cont.Phone))){
        cont.email.addError('Please enter an email address or phone number');
        cont.phone.addError('Please enter a phone number or email address');
        }
        else
        {
        pr = std.save();
        }
        return pr;
        
        
        
    }
}