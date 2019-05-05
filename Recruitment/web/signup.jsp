<%-- 
    Document   : signup
    Created on : 5 Apr, 2019, 2:09:27 PM
    Author     : Roshan Kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
		<link rel="stylesheet" type="text/css" href="style.css">
		<style type="text/css">
			.body{
				
			}
			
			input[type=text], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type=submit] {
    width: 100%;
    background-color: #4c86af;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=reset] {
    width: 100%;
    background-color: #af7e4c;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #264458;
}

input[type=reset]:hover {
    background-color: #543e27;
}

.form {
    border-radius: 5px;
    background-color: #f2f2f2;
    color: black;
    margin-left: 150px;
    margin-right: 150px;
    padding: 20px;
}
		</style>
	<script type="text/javascript">
	function func(){
		var a=document.getElementById("fname").value;
		var aa=a.length;
		var b=document.getElementById("lname").value;
		var bb=b.length;
		var d=document.getElementById("email").value;
		var e=d.length;
		var e=document.getElementById("phone").value;
		
		var str=d.search("@");
		
		else if(str==-1)
			window.alert("Enter Valid Email Address");
		else if(e<10)
		{
			window.alert("Password minimum of 10 char");
		}
		else if(document.getElementById("phone").value.length !=10)
		{
			
			window.alert("Enter Correct Phone Number");
		}
		
	}
	</script>
	</head>

	<body>
	 <div>
            <% if(session.getAttribute("message")!=null){ %>
            <%=session.getAttribute("message") %>
            <% } %>
            
        </div>
		
		<div class="body" style="background-image: url();">
		<h1 align="center">Registration Info</h1>
			<div class="form">
  <form action="Adduser" method="post" onsubmit="myFunction()">
    <label for="fname">First Name</label>
    <input type="text" id="fname" name="first_name" placeholder="Your first name.." required="firstname">

    <label for="lname">Last Name</label>
    <input type="text" id="lname" name="last_name" placeholder="Your last name.." required="lastname">
	
	<label for="email">Email</label>
    <input type="text" id="email" name="email" placeholder="Your email.." required="Email">
	
	<label for="phone">Mobile No</label>
    <input type="text" id="phone" name="mobile_no" placeholder="Your mobile no..">
	
	 <label for="username">Username</label>
    <input type="text" id="uname" name="username" placeholder="Enter your username"  required="username">

    <label for="Passport No">Create Password</label>
    <input type="text" id="Passport No" name="password" placeholder="Create password..">


	<input type="submit" value="Submit">
     <center><a href="index.html">Back To Home</a></center>
  </form>
</div>

<script type="text/javascript">
	function myFunction(){
		alert("You have been registered successfully.");
	}
</script>
		</div>

    </body>
</html>
