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


public class AddUserController extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        
         try{
            UserDao user=new UserDao();
            user.setFirst_name(request.getParameter("first_name"));
            user.setLast_name(request.getParameter("last_name"));
            user.setEmail(request.getParameter("email"));
            user.setMobile_no(request.getParameter("mobile_no"));
            user.setUsername(request.getParameter("username"));
            user.setUser_type("User");
            user.setPassword(request.getParameter("password"));
            int i=UserOperation.addUser(user);
                  
              if(i>0)
              {
                  HttpSession session = request.getSession(false);
                  //session.setAttribute("message","User Added Successfully");
                  response.sendRedirect("index.html"); 
              }
              else
              {
                  HttpSession session=request.getSession(false);
                  //session.setAttribute("message","User Not Added");
                  response.sendRedirect("index.html");
              }
        }
         catch(Exception e)
        {
            e.printStackTrace();
        }
        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
