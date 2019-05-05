package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        doPost(request,response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            response.setContentType("text/html");  
//            PrintWriter out=response.getWriter();  

            HttpSession session=request.getSession();  
            session.invalidate();
            response.sendRedirect("index.html");   
            //RequestDispatcher rd=request.getRequestDispatcher("index.html");
              //request.getRequestDispatcher("/index.html").forward(request, response);
           // out.print("You are successfully logged out!");  
           //rd.forward(request,response);
              
    }



    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
