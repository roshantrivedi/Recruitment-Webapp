<%-- 
    Document   : profile
    Created on : 15 Apr, 2019, 3:16:43 AM
    Author     : Roshan Kumar
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="dao.UserDao"%>
<%@page import="dao.ProfileDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%UserDao user=(UserDao)session.getAttribute("user"); %>
<html>
    <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
		<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
		<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <title>Profile Page</title>
        <link rel="stylesheet" href="css2.css">
    </head>
     <jsp:useBean id="c1" class="operation.ProfileOperation"></jsp:useBean>
    
     <body>
		
<div class="container emp-profile">
            <form method="post">
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-img">
                            <img src="avatar.jpg" alt=""/>
                            
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="profile-head">
                                    <h5>
                                       ${user.getFirst_name()}  ${user.getLast_name()}
                                    </h5>
                                   
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Resume</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                   
                </div>
              
		<% ResultSet rs=c1.showProfile(user.getEmail());
                if(rs.next()){
                    %>
			  
                    <div class="col-md-8">
                        <div class="tab-content profile-tab" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                        
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Name</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p> <%=rs.getString("full_name")%> </p>
                                            </div>
                                        </div>
                                            
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Email</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><%=rs.getString("email")%></p>
                                            </div>
                                        </div>
                                            
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Mobile No</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p> <%=rs.getString("mobile_no")%> </p>
                                            </div>
                                        </div>
                                            
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Alternate Mobile No</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p> <%=rs.getString("altmobile_no")%> </p>
                                            </div>
                                        </div>
                                            
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Father's Name</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p> <%=rs.getString("fathers_name")%> </p>
                                            </div>
                                        </div>
                                                        
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Mother's Name</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p> <%=rs.getString("mothers_name")%> </p>
                                            </div>
                                        </div>  
                                            
                                            <div class="row">
                                            <div class="col-md-6">
                                                <label>Address</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p> <%=rs.getString("address")%> </p>
                                            </div>
                                        </div>  
                                            
                                            <div class="row">
                                            <div class="col-md-6">
                                                <label>Degree</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p> <%=rs.getString("degree")%> </p>
                                            </div>
                                        </div>  
                                            
                                            <div class="row">
                                            <div class="col-md-6">
                                                <label>Graduation Year</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p> <%=rs.getString("y1")%> </p>
                                            </div>
                                        </div>  
                                            
                                            <div class="row">
                                            <div class="col-md-6">
                                                <label>Institution</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p> <%=rs.getString("institution")%> </p>
                                            </div>
                                        </div>  
                                            <div class="row">
                                            <div class="col-md-6">
                                                <label>12TH Passing Year</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p> <%=rs.getString("y2")%> </p>
                                            </div>
                                        </div>  
                                            <div class="row">
                                            <div class="col-md-6">
                                                <label>12TH %</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p> <%=rs.getString("p1")%> </p>
                                            </div>
                                        </div>  
                                            <div class="row">
                                            <div class="col-md-6">
                                                <label>10TH Passing Year</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p> <%=rs.getString("y3")%> </p>
                                            </div>
                                        </div>  
                                            <div class="row">
                                            <div class="col-md-6">
                                                <label>10TH %</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p> <%=rs.getString("p2")%> </p>
                                            </div>
                                        </div>  
                                            <div class="row">
                                            <div class="col-md-6">
                                                <label>Previous Work Experience</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p> <%=rs.getString("exp")%> </p>
                                            </div>
                                        </div>  
                                            <div class="row">
                                            <div class="col-md-6">
                                                <label>Organizations worked for</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p> <%=rs.getString("org")%> </p>
                                            </div>
                                        </div>  
                                            <div class="row">
                                            <div class="col-md-6">
                                                <label>Years of Experience</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p> <%=rs.getString("yoe")%> </p>
                                            </div>
                                        </div>  
                                            <div class="row">
                                            <div class="col-md-6">
                                                <label>Skills</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p> <%=rs.getString("skills")%> </p>
                                            </div>
                                        </div>  
  
                            </div>
                            
                        </div>
                    </div>
					
                <% } %>
					
                </div>
            </form>           
        </div>
 
    </body>
     
     
</html>
