public class fridge {
    private String modelNumber;
	private Integer numberInStock = 100;
    private String test;
    
    public Integer updateStock (Integer justSold) {
      return  numberInStock = numberInStock - justSold;
    }
    
    public void setModelNumber (String theModelNumber){
        modelNumber = theModelNumber;
    }
    
    public String getModelNumber(){
        return modelNumber;
    }
     public void setTest (String theTest){
        test = theTest;
    }
    
    public String getTest(){
        return test;   
    }
    
   /* public void setnumberInStock (Integer theNumberInStock){
      numberInStock = theNumberInStock;
    }
   public Integer getnumberInStock(){
     return numberInStock;
   } */
    
    public Fridge (){
        modelNumber = 'XX-XX';
        test = 'gt that';
    }
    
   public Fridge(String theModelNumber, Integer theNumberInStock, String theTest){
     modelNumber = theModelNumber;
     numberInStock = theNumberInStock;
     test = theTest;  
 }

}