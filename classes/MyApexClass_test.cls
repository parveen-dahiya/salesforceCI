@isTest
private class MyApexClass_test {
	
	@isTest static void appleWatch() {
		Opportunity newOpp = new Opportunity();
		newOpp.Name = 'Parveen_Test';
		newOpp.CloseDate = Date.today();
		newOpp.StageName = 'Prospecting';
		insert newOpp;
	}
	
	
}