package order;

import java.util.*;
import java.text.*;

public class OrderList {
 
    private Map<Integer,Order> oList = new LinkedHashMap<Integer, Order>();
    private Integer total_count;
    private Integer init = 10;
    private Order o;

    
    public OrderList()
    {
        SimpleDateFormat format = new SimpleDateFormat();
        format.applyPattern("dd.MM.yyyy");
        Date date = new Date();
        String d = new String("");
        
        Integer j = 1;
        Integer r = 1;
        
        for(int k = 1; k < this.init; k++){
            d = "25.11.2017";
            try{
                date = format.parse(d);
            } catch( ParseException e) {
            }
             
            r = j%3+1;
            Order o1 = new Order(k, 3, r, 2*j, date);
            oList.put(k,o1);
            j++;
            r++;
        }
        this.total_count = this.init;
    }
    
    public Integer getTotalCount()
    {
        return this.total_count;
    }
    
      
      public String getList(){
      
          String answer = new String();
          for(int j = 1; j < this.getTotalCount(); j++)
          {
              try{
                    o = oList.get(j);
                    answer += o.toString();
                } catch (Exception e) { answer += e.getMessage();}
          }
          
          return answer;
      }
      
      public void addToHashMap(Order o)
      {
          this.oList.put(o.getId(),o);
          this.total_count++;
      }
     
      
      public void deleteFromHashMap(int j)
      {
          try{
              this.oList.remove(j);
              this.total_count--;
          } catch(Exception e){}
      }
      
      public Collection<Order> values()
      {
          return this.oList.values();
      }
                   
    
}
