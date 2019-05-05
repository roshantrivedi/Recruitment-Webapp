package controller;

import dao.UserDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import operation.UserOperation;


public class LoginController extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
           UserDao user=new UserDao();
           user.setEmail(request.getParameter("email"));
           user.setPassword(request.getParameter("password"));   
           user=UserOperation.login(user);          
           PrintWriter out=response.getWriter();
    
           if(user!=null&&user.getUser_type().equalsIgnoreCase("admin"))    
           {
               HttpSession session=request.getSession(true);
               
               session.setAttribute("user", user);
               response.sendRedirect("admindashboard.jsp");    
           }
           else if(user!=null&&user.getUser_type().equalsIgnoreCase("user"))
           {
               HttpSession session=request.getSession(true);
              
               session.setAttribute("user", user);
               response.sendRedirect("userdashboard.jsp?id="+session.getId());   
           }
           
           else
           {
               //out.println("Sorry, uid or password error!");  
               response.sendRedirect("index.html");  
           }

    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
