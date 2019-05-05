<%-- 
    Document   : login
    Created on : 5 Apr, 2019, 2:08:48 PM
    Author     : Roshan Kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
       <h3>Enter Your Credentials</h3>
        <form action="Login" method="post">
            <label>Email</label>
            <input type="text" name="email" placeholder="Enter your email" autofocus required>
            <br>

            <label>Password</label>
            <input type="password" name="password" placeholder="Enter your password" autofocus required>
            <br>
            <input type="submit" value="Login">
            
        </form>
       <br>
        <a href="index.html">Home</a>
    </body>
</html>
