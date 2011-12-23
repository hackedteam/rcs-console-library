package it.ht.rcs.console.controller
{
  import spark.collections.SortField;
  import spark.globalization.SortingCollator;
  
  public class Sort extends spark.collections.Sort
  {
    
    private var collator:SortingCollator;
    
    public function Sort(property:String=null, ignoreCase:Boolean=true, descending:Boolean=false)
    {
      super();
      
      collator = new SortingCollator;
      collator.ignoreCase = ignoreCase;
      
      var field:SortField = new SortField(property ? property : 'name', descending);
      field.compareFunction = sortCompareFunction;
      
      fields = [field];
    }
    
    public function sortCompareFunction(a:String, b:String):int
    {
      return collator.compare(a, b);
    }
    
  }
  
}