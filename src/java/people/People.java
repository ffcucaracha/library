package people;

import java.text.SimpleDateFormat;
import java.util.*;


/**
 *
 * @author physicsstudent
 */
public class People {
    private Integer id;
    private String name="";
    private String surname="";
    private Date birthday;
    private static int counter=0;
    
    public People(Integer i_, String sn_, String n_, Date birthday_)
    {
        this.surname = sn_;
        this.name = n_;
        this.id = i_;
        this.birthday = birthday_;
        counter++;
    }
    
    public String toString()
    {
        return this.surname+"\t"+this.name+"\t";
    }
    
    public Integer getId()
    {
        return this.id;
    }
    
    public String getName()
    {
        return this.name;
    }
    
    public String getSurname()
    {
        return this.surname;
    }
    
    public String getBirthday()
    {
        SimpleDateFormat format = new SimpleDateFormat("dd.MM.yyyy");
        String s = format.format(this.birthday);

        return s;
    }
}
