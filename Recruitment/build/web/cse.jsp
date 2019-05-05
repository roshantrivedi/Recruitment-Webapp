<%-- 
    Document   : cse
    Created on : 13 Apr, 2019, 4:46:52 PM
    Author     : Roshan Kumar
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Date"%>
<%@page import="dao.ApplyDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%ApplyDao ap=(ApplyDao)session.getAttribute("user"); %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CSE Page</title>
    </head>
    
    <jsp:useBean id="c1" class="operation.ProfileOperation"></jsp:useBean>
    
    <body>
        <%
            Date d=new Date();
        %>
        <h1>Jobs for CSE</h1>
        <br><br>
        These are the available jobs for now as of <%=d%>
        
        <% ResultSet rs=c1.showAllJobs();
                while(rs.next()){
                    %>
        
        <p> <%=ap.getLink()%> </p>
        
        <% } %>
        
        
    </body>
</html>
