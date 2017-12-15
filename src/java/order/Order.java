package order;

import people.*;
import java.util.*;
import java.text.SimpleDateFormat;
import exemplar.*;
import java.sql.*;
import javax.sql.*;
import oracle.jdbc.*;
import oracle.jdbc.pool.*;

public class Order {
    private Integer id;
    private Integer reader_id;
    private Integer librarian_id;
    private Integer exemplar_id;
    private java.util.Date order_date;
    private Connection c = null; 
    private Statement st = null; 
    private ResultSet rs = null;
    
    public Order(Integer id_, Integer reader_id_, Integer librarian_id_, Integer exemplar_id_, java.util.Date order_date_)
    {
        this.id = id_;
        this.reader_id = reader_id_;
        this.librarian_id = librarian_id_;
        this.exemplar_id = exemplar_id_;
        this.order_date = order_date_;
    }
    
    public Order(Integer id_)
    {
        try{
        OracleDataSource ods = new OracleDataSource(); 
        ods.setServerName("paralab"); 
        ods.setServiceName("lab.univer.omsk.su"); 
        ods.setPortNumber(1521); 
        ods.setUser("AnnaS"); 
        ods.setPassword("1");
        ods.setDriverType("thin"); 
        ods.setNetworkProtocol("tcp");       
        
            c = ods.getConnection();
            st=c.createStatement();
            
            String sql = "select * from tbl_order where id = "+id_;
            rs = st.executeQuery(sql);
    
            this.reader_id = rs.getInt(2);
            this.librarian_id = rs.getInt(3);
            this.reader_id = rs.getInt(2);
            this.librarian_id = rs.getInt(3);
 
        } catch(Exception e) {
            this.reader_id = null;
            this.librarian_id = null;
            this.reader_id = null;
            this.librarian_id = null;
        } finally {
            try{st.close();} catch(Exception e){}
            try{c.close();} catch(Exception e){}
        }
    }
        
    public Integer getId()
    {
        return this.id;
    }
    
    public Integer getReaderId()
    {
        return this.reader_id;
    }
    
    public String getReader(PeopleList PList, int i)
    {
        People p = PList.getPeople(i);
        return p.toString();
    }
    
    public Integer getLibrarianId()
    {
        return this.librarian_id;
    }
    
    public Integer getExemplarId()
    {
        return this.exemplar_id;
    }
    
    public String getDate()
    {
        SimpleDateFormat format = new SimpleDateFormat("dd.MM.yyyy");
        String s = format.format(this.order_date);
        return s;
    }
}
