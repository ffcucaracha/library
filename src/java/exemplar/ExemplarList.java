/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package exemplar;
import java.util.*;
//import people.*;
import java.text.*;
/**
 *
 * @author physicsstudent
 */
// 
public class ExemplarList {
    private Map<Integer, Exemplar> EList = new LinkedHashMap<Integer, Exemplar>();//HashMap - структура данных, которая хранит пары ключ-значение, значение - это экземпляр с инвентарным номером и ценой
    private int i=0; //инвентарный номер
    private Exemplar ex;
        public String getList() //вывод j-го элмента списка
        {
            String answer = new String();
            for(int j: EList.keySet())
            {
                ex=EList.get(j);
                answer +="<tr><td>"+ex.getInv()+"</td><td>"+ex.getPrice()+"</td><td>"+"<form action=\"delete.jsp\"><input hidden=\"\" name=\"i\" value=\""+j+"\"/><input type=\"submit\" value=\"X\"></form></td></tr>";
            }
            return answer;
        }
        public void addToHashMap(Exemplar ex) //добавление экзмепляра в структуру HashMap
        {
            this.EList.put(ex.getInv(), ex);
            this.i++;
            
        }
        public void deleteFromHashMap(int j) //удаление экземпляра из структуры HashMap
        {
            try
            {
                this.EList.remove(j);
                this.i=i-1;
            }
            catch (Exception e){};
        }
        public int getI()
        {
            return this.i;
        }
    
}
