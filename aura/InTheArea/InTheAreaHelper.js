({
    getLocalList: function(component) {
        var searchTerm = component.get("v.defaultSearch");
        var location = component.get("v.location");
        var action = component.get("c.getLocal");
        location = JSON.parse(location);
        action.setParams({
            "searchTerm": searchTerm,
            "lat": location.coords.latitude,
            "lon": location.coords.longitude
        });
        
        alert('Yaha pahunch gaya1');
        action.setCallback(this, function(response) {
            
            alert('Yaha pahunch gaya2');
            //this.doLayout(response, component);
            var data = response.getReturnValue();
        	//console.log('data'+data);
        	alert('>>>>>>Yahaan Lag Gaye>>>>'+data);
        	component.set("v.restaurantList", data.bizArray);
        	console.log("The Data: ", data); 
             
        });
        $A.enqueueAction(action); 
        alert('Yaha bhi pahunch gaya');
    },
    // add doLayout function
    //doLayout: function(response, component) {
        
        
    //}    
})