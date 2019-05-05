<%-- 
    Document   : contact
    Created on : 6 Apr, 2019, 2:47:45 PM
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
	</head>

	<body>
		
<div class="body" style="background-image: url(images/contact.jpg);">
			<h1 align="center">Contact US</h1>
			<div class="form">
  <form action="contactus" onsubmit="myFunction()">
    <label>First Name</label>
    <input type="text" id="firstname" name="first_name" placeholder="Your Firstname.." required>
	
	  <label>Last Name</label>
    <input type="text" id="lastname" name="last_name" placeholder="Your Lastname.." required>
	
	<label>Email</label>
    <input type="text" id="email" name="email" placeholder="Your email.." required>

    <label>Mobile Number</label>
    <input type="text" id="Mobile Number" name="mobile_no" placeholder="Your Mobile Number.." required>

    <label>Your Query</label><br>
    <textarea name="query" rows="10" cols="141" required></textarea>
  
    <input type="submit" value="Submit">
    
    <!--<input type="reset" value="Reset">-->
  </form>
<center><a href="index.html">Return To Home</a></center>
</div>
<script type="text/javascript">
	function myFunction(){
		alert("Your query has been sent. We'll contact you soon.");
	}
</script>
		</div>

		

	</body>
</html>
