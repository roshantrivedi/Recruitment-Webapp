package controller;

import dao.ApplyDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import operation.UserOperation;


public class ApplyController extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        doPost(request,response);
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

           ApplyDao ap=new ApplyDao();
           ap.setField(request.getParameter("field"));
           ap.setLink(request.getParameter("link"));   
           ap=UserOperation.applyFor(ap);          
           PrintWriter out=response.getWriter();
    
           if(ap!=null&&ap.getField().equalsIgnoreCase("cse"))    
           {
               HttpSession session=request.getSession(true);
               
               session.setAttribute("user", ap);
               response.sendRedirect("cse.jsp");    
           }
           else if(ap!=null&&ap.getField().equalsIgnoreCase("ece"))
           {
               HttpSession session=request.getSession(true);
               
               session.setAttribute("user",ap);
               response.sendRedirect("ece.jsp");   
           }
           else if(ap!=null&&ap.getField().equalsIgnoreCase("ce"))
           {
               HttpSession session=request.getSession(true);
               
               session.setAttribute("user", ap);
               response.sendRedirect("ce.jsp");   
           }
           
           else
           {
               //out.println("Sorry, uid or password error!");  
               response.sendRedirect("userdashboard.jsp");  
           }      
    }
    
    
    
    
    
}
