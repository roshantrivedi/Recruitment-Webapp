<%-- 
    Document   : userdashboard
    Created on : 5 Apr, 2019, 3:14:29 PM
    Author     : Roshan Kumar
--%>
<%@page import="java.util.Date"%>
<%@page import="dao.ApplyDao"%>
<%@page import="dao.UserDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%UserDao user=(UserDao)session.getAttribute("user"); %>
<%ApplyDao ap=(ApplyDao)session.getAttribute("ap"); %>
<html>
    
    <head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <style>    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
  </style>
</head>
<body>

        <%
            Date d=new Date();
            
        %>
    
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand">hire Me</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="messages.jsp">Messages</a></li>
      </ul>
      <form class="navbar-form navbar-right" role="search">
        <div class="form-group input-group">
          <input type="text" class="form-control" placeholder="Search..">
          <span class="input-group-btn">
            <button class="btn btn-default" type="button">
              <span class="glyphicon glyphicon-search"></span>
            </button>
          </span>        
        </div>
      </form>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="completeprofile.jsp"><span class="glyphicon glyphicon-user"></span> Update Profile</a></li>
        <li><a href="Logout"><span></span> Logout</a></li>
      </ul>
    </div>
  </div>
</nav>
  
<div class="container text-center">    
  <div class="row">
    <div class="col-sm-3 well">
      <div class="well">
        <p><a href="profile.jsp">My Resume</a></p>
        <img src="ninja.png" class="img-circle" height="75" width="75" alt="Avatar"><br><br>
        <p><b><i><%=user.getFirst_name()+" "+user.getLast_name()%></i></b></p>
      </div>
      <div class="well">
        <p>Skills</p>
        <p>
          <span class="label label-default">C</span>
          <span class="label label-primary">C++</span>
          <span class="label label-success">Java</span>
          <span class="label label-info">HTML</span>
          <span class="label label-warning">CSS</span>
          <span class="label label-danger">Javascript</span>
        </p>
      </div>
      <div class="alert alert-success fade in">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
        <p><strong>Ey!</strong></p>
        Recruiters are looking at your profile. Find out who.
      </div>
      <p><a href="#">Link</a></p>
      <p><a href="#">Link</a></p>
      <p><a href="#">Link</a></p>
    </div>
    <div class="col-sm-7">
    
      <div class="row">
        <div class="col-sm-12">
          <div class="panel panel-default text-left">
            <div class="panel-body">
              <p contenteditable="true">Status: Feeling Blue</p>
              <button type="button" class="btn btn-default btn-sm">
                <span class="glyphicon glyphicon-thumbs-up"></span> Like
              </button>     
            </div>
          </div>
        </div>
      </div>
      
      <div class="row">
        <div class="col-sm-3">
          <div class="well">
           <p></p>
           <img src="date2.png" class="img-circle" height="55" width="55" alt="Avatar">
          </div>
        </div>
        <div class="col-sm-9">
          <div class="well">
              <p><i><%=d%></i></p>
          </div>
        </div>
      </div>    
        
        <!--  -->
    </div>
    <div class="col-sm-2 well">
      <div class="thumbnail">
        <p>Upcoming Job fare:</p>
        <!--<img src="paris.jpg" alt="Paris" width="400" height="300">-->
        <p><strong>Bangalore</strong></p>
        <p>Fri. 27 April 2019</p>
        <button class="btn btn-primary">Info</button>
      </div>      
      <div class="well">
          <marquee><p>ADS</p><br></marquee>
          <p>Upcoming</p>
      </div>
      <div class="well">
          <marquee><p>ADS</p><br></marquee>
          <p>Upcoming</p>
      </div>
    </div>
  </div>
</div>

<footer class="container-fluid text-center">
    <p>hire Me Pvt. Ltd.</p><br>
    <p>Established: 2019</p><br>
    <p>All Rights Reserved</p>
</footer>

</body>

    
</html>
