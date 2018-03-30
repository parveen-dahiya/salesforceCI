trigger AppleWatch on Opportunity (after insert) {
    for (Opportunity opp : Trigger.new) {

    	if (opp.Amount > 50000) {
	        Task t = new Task();
	        t.subject     = 'Apple Watch';
	        t.description = 'Send them one ASAP';
	        t.priority    = 'High';
	        t.whatId      =  opp.Id;
	        insert t;
    	}
    }
}