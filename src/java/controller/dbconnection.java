
package controller;

import java.sql.Connection;
import java.sql.DriverManager;


public class dbconnection {
    
   
    public static Connection makeconnection(){
     try{
         Class.forName("com.mysql.jdbc.Driver");
     }catch(Exception e){
         System.out.println("Driver not loaded"+e);
     }
      Connection con=null;
    try{
       con=DriverManager.getConnection("jdbc:mysql://localhost/practice","root","");
       
    }catch(Exception e){
        System.out.println("not conencted to databse"+e);
    }
   
    return con;
 
}
}