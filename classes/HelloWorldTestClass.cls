@isTest
private class HelloWorldTestClass{
    static testmethod void validateHelloWorld(){
        Book__c b = new Book__c(Name='Behind the Cloud', Price__c=100);
        System.debug('Price before inserting: '+ b.Price__c );
        
        //Inser the book
        insert b;
        
        //Retrieve the book
        b = [Select Price__c from Book__c where Id =:b.Id];
        System.debug('Price after Trigger fired: '+ b.Price__c );
        
        //Test the trigger
        System.assertEquals(90, b.Price__c);
    }
}