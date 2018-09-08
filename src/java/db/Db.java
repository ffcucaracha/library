/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.sql.SQLException;
import java.util.*;
import java.text.SimpleDateFormat;
import exemplar.*;
import java.sql.*;
import javax.sql.*;
import oracle.jdbc.*;
import oracle.jdbc.pool.*;
/**
 *
 * @author Анна Самошилова
 */
public class Db {

    public static Connection conn;

    /*public static void main(String[] args) throws ClassNotFoundException, SQLException {
		conn.Conn();
		conn.CreateDB();
		conn.WriteDB();
		conn.ReadDB();
		conn.CloseDB();
    }*/
    /* */
    public Db(String type)
    {
        switch(type) {
            case "SQLite": 
                getSQLiteConnection();
                break;
            case "Oracle": 
                getOracleConnection();
                break;
            default: 
                getSQLiteConnection();
                break;
        }
    }
        
    public void getOracleConnection()
    {
        OracleDataSource ods = new OracleDataSource(); 
        try{
            ods = new OracleDataSource(); 
            ods.setServerName("paralab"); 
            ods.setServiceName("lab.univer.omsk.su"); 
            ods.setPortNumber(1521); 
            ods.setUser("AnnaS"); 
            ods.setPassword("1");
            ods.setDriverType("thin"); 
            ods.setNetworkProtocol("tcp");       
        
            this.conn = ods.getConnection();
        } catch(Exception e) {
             
        } finally {
           // try{st.close();} catch(Exception e){}
            //try{c.close();} catch(Exception e){}      
        }
        //return conn;
    }
    
    public void getSQLiteConnection()
    {
        Class.forName("org.sqlite.JDBC");
        this.conn = DriverManager.getConnection("jdbc:sqlite:TEST.s3db");
    }
    
}
