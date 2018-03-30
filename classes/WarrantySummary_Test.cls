@isTest
private class WarrantySummary_Test {
	
	@isTest static void createCase() {
		Case newCase = new Case();
        newCase.Product_Total_Warranty_Days__c = 5;
        newCase.Product_has_Extended_Warranty__c = true;
        newCase.Product_Purchase_Date__c = Date.today() - 2;
        insert newCase;
	}
	
	
}