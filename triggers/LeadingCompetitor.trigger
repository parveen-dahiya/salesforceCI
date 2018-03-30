trigger LeadingCompetitor on Opportunity (before insert, before update) {
    for (Opportunity opp: Trigger.new){
        list <String>Competitor = new list<String>();
        Competitor.add('element1');
        Competitor.add('element2');
        Competitor.add('element3');
        
    }
}