package controller;

import dao.ProfileDao;
import dao.UserDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import operation.UserOperation;

public class ProfileController extends HttpServlet {

    

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         try{
            ProfileDao pr=new ProfileDao();
            pr.setFull_name(request.getParameter("full_name"));
            pr.setEmail(request.getParameter("email"));
            pr.setMobile_no(request.getParameter("mobile_no"));
            pr.setAltMobile_no(request.getParameter("altmobile_no"));
            pr.setFathers_name(request.getParameter("fathers_name"));
            pr.setMothers_name(request.getParameter("mothers_name"));
            pr.setAddress(request.getParameter("address"));
            pr.setDegree(request.getParameter("degree"));
            pr.setY1(request.getParameter("y1"));
            pr.setInstitution(request.getParameter("institution"));
            pr.setY2(request.getParameter("y2"));
            pr.setP1(request.getParameter("p1"));
            pr.setY3(request.getParameter("y3"));
            pr.setP2(request.getParameter("p2"));
            pr.setExp(request.getParameter("exp"));
            pr.setOrg(request.getParameter("org"));
            pr.setYoe(request.getParameter("yoe"));
            pr.setSkills(request.getParameter("skills"));
            
            int i=UserOperation.addProfile(pr);
              if(i>0)
              {
                  System.out.println(i);
                  HttpSession session = request.getSession(false);
                  response.sendRedirect("userdashboard.jsp"); 
              }
              else
              {
                  HttpSession session=request.getSession(false);
                  response.sendRedirect("userdashboard.jsp");
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
