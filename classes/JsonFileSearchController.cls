public class JsonFileSearchController {
    
   // public List<Json_Location__c> jsonValues {get; set;}
  public List<Json_Location__c> jsonValuesList {get;set;}
  
  public List<Json_Location__c> jsonValuesListJsonDeserialized {get;set;}

public Json_Location__c jsonValues {get;set;}

public String jsonValuesListJSON {get;set;}

  public JsonFileSearchController (){
  
    jsonValuesList = [select File_Name__c, File_Path__c from Json_Location__c ];

jsonValues = [select File_Name__c, File_Path__c from Json_Location__c where File_Name__c = 'A' LIMIT 1];

for(Json_Location__c location: jsonValuesList){
    system.debug(location.File_Path__c);
  }
  
  String jsonValuesListJSON = JSON.serializePretty(jsonValuesList);
  system.debug(jsonValuesListJSON );
  
  jsonValuesListJsonDeserialized  =  (list<Json_Location__c>) System.JSON.deserialize(jsonValuesListJSON , list<Json_Location__c>.class);


}

}