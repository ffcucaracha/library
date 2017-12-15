package people;


import java.util.*;
//import people.*;
import java.text.*;


/**
 *
 * @author physicsstudent
 */
public class PeopleList {
   private HashMap<Integer,People> PList = new HashMap<Integer, People>();
   private int i;
   private People p1;

      public PeopleList(){
        SimpleDateFormat format = new SimpleDateFormat();
        format.applyPattern("dd.MM.yyyy");
        Date date = new Date();
        String bd = new String("");
        
         i = 1;
        
        bd = "27.10.1995";
        try{
            date = format.parse(bd);
        } catch( ParseException e) {
        };
        People p = new People(i, "Евсин", "Дмитрий", date);
        PList.put(i,p);
        i++;
        
        bd = "20.03.1996";
        try{
            date = format.parse(bd);
        } catch( ParseException e) {
        };
        p = new People(i, "Чемерис", "Степан", date);
        PList.put(i,p);
        i++;
        
        bd = "12.04.1996";
        try{
            date = format.parse(bd);
        } catch( ParseException e) {
        };
        p = new People(i, "Самошилова", "Анна", date);
        PList.put(i,p);
        i++;
        
    }
      
      /*public String getList(){
      
          String answer = new String();
          for(int j =1; j <=3; j++)
          {
              p1 = PList.get(j);
              answer += "<tr><td>"+p1.getName()+"</td><td>"+p1.getSurname()+"</td><td>"+p1.getBirthday()+"</td><td>"
                      + "<form action=\"delete.jsp\"><input hidden=\"\" name=\"i\" value=\""+j+"\"/><input type=\"submit\" value=\"X\"></form></td></tr>";
          }
          return answer;
      }*/
      
      public void addToHashMap(People p1)
      {
          this.PList.put(p1.getId(),p1);
          this.i++;
      }
      
      public int getI()
      {
          return this.i;
      }
      
      public People getPeople(int i)
      {
          return this.PList.get(i);
      }
      
      /*public void deleteFromHashMap(int j)
      {
          try{
              this.PList.remove(j);
              this.i = i-1;
          } catch(Exception e){}
      }*/
                    
}
