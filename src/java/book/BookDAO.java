/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package book;

 import java.io.*;
 import java.sql.*;
 import java.util.*;
 
 //import org.apache.commons.dbcp.*;
 //import org.apache.commons.pool.impl.*;

/**
 *
 * @author Анна Самошилова
 */
public class BookDAO {
   private final Connection con;
 
   public BookDAO( Connection con )
   {
     this.con = con;
   }
 
   private Book getBookFromDB(ResultSet rs)
   {
     Book result = new Book();
 
     try{
     result.setId( rs.getInt( "id" ) );
     result.setTitle( rs.getString( "title" ) );
     result.setAuthor_id( rs.getInt( "author_id" ) );
     } catch (Exception e)
     {
        result.setId(0);
        result.setTitle("No Title");
        result.setAuthor_id(0);
     }
     return result;
   }
 
   public Book getContract( int id )
   {
     Book result = null;
     try
     {
       PreparedStatement ps = con.prepareStatement( "SELECT * FROM books WHERE id=?" );
       ps.setInt( 1, id );
 
       ResultSet rs = ps.executeQuery();
       if( rs.next() )
       {
         result = getBookFromDB( rs );
       }
       ps.close();
     }
     catch( SQLException e )
     { 
       e.printStackTrace(); 
     }
 
     return result;
   }
 
   public List<Book> getBookList()
   {
     List<Book> result = new ArrayList<Book>();
     try
     {
       ResultSet rs = con.createStatement().executeQuery( "SELECT * FROM books" );
       while( rs.next() )
       {
         result.add( getBookFromDB( rs ) );
       }
       rs.close();
     }
     catch( SQLException e )
     { 
       e.printStackTrace(); 
     }
 
     return result;
   }
 
   public void updateContract( Book contract )
   {
     try
     {
       PreparedStatement ps;
       if ( contract.getId() > 0 )
       {
         ps = con.prepareStatement( "UPDATE books SET title=?, author_id=? WHERE id=?" );
         ps.setInt( 3, contract.getId() );
       }
       else 
       {
         ps = con.prepareStatement( "INSERT INTO books (title, author_id) VALUES (?,?)" );
       }
 
       ps.setString( 1, contract.getTitle() );
       ps.setFloat( 2, contract.getAuthor_id() );
       ps.executeUpdate();
       ps.close();
     }
     catch( SQLException e )
     { 
       e.printStackTrace(); 
     }
   }
 
   
   public void deleteBook( int id )
   {
     try
     {
       PreparedStatement ps = con.prepareStatement( "DELETE FROM books WHERE id=?" );
       ps.setInt( 1, id );
       ps.executeUpdate();
     }
     catch( SQLException e )
     { 
       e.printStackTrace(); 
     }
   }
}
