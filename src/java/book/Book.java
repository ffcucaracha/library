/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package book;

/**
 *
 * @author Анна Самошилова
 */
public class Book {
   private int id;
   private String title;
   private int author_id;
 
   public void setId( int id )
   {
     this.id = id;
   }
 
   public int getId()
   {
     return id;
   }
 
   public void setTitle( String title )
   {
     this.title = title;
   }
 
   public String getTitle()
   {
     return title;
   }
 
   public void setAuthor_id( int id )
   {
     this.author_id = id;
   }
 
   public float getAuthor_id()
   {
     return author_id;
   }
   
   public String toString()
    {
        return this.id+" "+this.title+"\t";
    }
}
