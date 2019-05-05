package controller;

import dao.ContactDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import operation.UserOperation;

public class ContactUsController extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        try{
            ContactDao co=new ContactDao();
            co.setFirst_name(request.getParameter("first_name"));
            co.setLast_name(request.getParameter("last_name"));
            co.setEmail(request.getParameter("email"));
            co.setMobile_no(request.getParameter("mobile_no"));
            co.setQuery(request.getParameter("query"));
              int i=UserOperation.contactUs(co);
                  
              if(i>0)
              {
                  HttpSession session = request.getSession(false);
                  //session.setAttribute("message","Your query has been sent.");
                  response.sendRedirect("contact.jsp"); 
              }
              else
              {
                  HttpSession session=request.getSession(false);
                  //session.setAttribute("message","Query not sent.");
                  response.sendRedirect("contact.jsp");
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
