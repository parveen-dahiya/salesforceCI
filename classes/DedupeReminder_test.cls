@isTest
private class DedupeReminder_test {
	
	@isTest static void updateAccount() {
		Account acc = new Account();
		acc.Name = 'Parveen_DDP';
		insert acc;

		acc.Name = 'Parveen_DDP1';
		update acc;
	}
	
	
	
}