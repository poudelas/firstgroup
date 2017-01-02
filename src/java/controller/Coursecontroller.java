/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.coursedao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.coursemodel;

//java program that handels http request from web client and gives response.
public class Coursecontroller extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.setAttribute("retrieve",coursedao.select());
         RequestDispatcher rd = request.getRequestDispatcher("course.jsp");
        rd.forward(request,response);
    }

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        if("delete".equals(request.getParameter("action"))){
            
            int id = Integer.parseInt(request.getParameter("deleteid"));
            coursedao.delete(id);
        }
        else if("update".equals(request.getParameter("action"))){
            int editid = Integer.parseInt(request.getParameter("editid"));
          request.setAttribute("retrieveid",coursedao.select_by_id(editid));
           RequestDispatcher rd = request.getRequestDispatcher("editcourse.jsp");
        rd.forward(request,response);
          
        }
        
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        if(request.getParameter("submit")!=null){
            String title = request.getParameter("title");
            Integer price = Integer.parseInt(request.getParameter("price"));
            String duration = request.getParameter("duration");
            
            coursemodel cm = new coursemodel(0,title,price,duration);
            
            coursedao c = new coursedao();
            
           c.insert(cm);
            
            //controller ko value model maa pass gareko 
//            cm.setTitle(title);
//            cm.setPrice(price);
//            cm.setDuration(duration);
                processRequest(request, response);
        }
        else if(request.getParameter("insert")!=null){
             int id = Integer.parseInt(request.getParameter("id"));
            String title = request.getParameter("title");
            Integer price = Integer.parseInt(request.getParameter("price"));
            String duration = request.getParameter("duration");
            
            coursemodel cm = new coursemodel(id,title,price,duration);
            
            coursedao.edit(cm);
            
           processRequest(request, response);
            
            //controller ko value model maa pass gareko 
//            cm.setTitle(title);
//            cm.setPrice(price);
//            cm.setDuration(duration);
            
        }
       
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
