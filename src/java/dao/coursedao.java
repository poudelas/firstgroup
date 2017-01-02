/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import com.mysql.jdbc.Connection;
import controller.dbconnection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import model.coursemodel;

/**
 *
 * @author poudelas
 */
public class coursedao {
    
     public void insert(coursemodel o){
        
       Connection con = (Connection) dbconnection.makeconnection();
       
        String sql="insert into course(title,price,duration)values('"+o.getTitle()+"','"+o.getPrice()+"','"+o.getDuration()+"')";
            try{
                Statement st = con.createStatement();
               st.executeUpdate(sql); 
            }
            catch(Exception e){
               
            }
    }
     
     
     
      public static ArrayList<coursemodel> select(){
        
        ArrayList<coursemodel> al = new ArrayList<coursemodel>();
        
        Connection con = (Connection) dbconnection.makeconnection();
        String sql="select * from course";
         try{
                Statement st = con.createStatement();
              ResultSet rs =  st.executeQuery(sql); 
              while(rs.next()){
                  al.add(new coursemodel(rs.getInt("id"),rs.getString("title"),rs.getInt("price"),rs.getString("duration")));
              }
              
            }
            catch(Exception e){
               
            }
         return al;
    }
    
    public static void delete(int deleteid){
        
        Connection con = (Connection) dbconnection.makeconnection();
        String sql = "delete from course where id="+deleteid;
        try{
            Statement st = con.createStatement();
            st.executeUpdate(sql);
        }
        catch(Exception e){
            
        }
    }
     public static void edit(coursemodel cm){
       Connection con = (Connection) dbconnection.makeconnection();
       String sql="update course set title='"+cm.getTitle()+"',price='"+cm.getPrice()+"',duration='"+cm.getDuration()+"' where id="+cm.getId()+" ";
       try{
            Statement st = con.createStatement();
            st.executeUpdate(sql);
        }
        catch(Exception e){
            
        }
   
   }
     public static ArrayList<coursemodel> select_by_id(int id){
        
        ArrayList<coursemodel> al = new ArrayList<coursemodel>();
        
        Connection con = (Connection) dbconnection.makeconnection();
        String sql="select * from course where id ="+id;
         try{
                Statement st = con.createStatement();
              ResultSet rs =  st.executeQuery(sql); 
              while(rs.next()){
                  al.add(new coursemodel(rs.getInt("id"),rs.getString("title"),rs.getInt("price"),rs.getString("duration")));
              }
              
            }
            catch(Exception e){
               
            }
         return al;
    }
}
