package order;

import people.*;
import java.util.*;
import java.text.SimpleDateFormat;
import exemplar.*;

public class Order {
    private Integer id;
    private Integer reader_id;
    private Integer librarian_id;
    private Integer exemplar_id;
    private Date order_date;
    
    public Order(Integer id_, Integer reader_id_, Integer librarian_id_, Integer exemplar_id_, Date order_date_)
    {
        this.id = id_;
        this.reader_id = reader_id_;
        this.librarian_id = librarian_id_;
        this.exemplar_id = exemplar_id_;
        this.order_date = order_date_;
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
