<%-- 
    Document   : completeprofile
    Created on : 9 Apr, 2019, 12:00:33 AM
    Author     : Roshan Kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
		<style type="text/css">
		.body{
				
			}
			
			input[type=text], select {
    width: 50%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}
.input-group-addon
{
    background-color: rgb(50, 118, 177);
    border-color: rgb(40, 94, 142);
    color: rgb(255, 255, 255);
}
.form-control:focus
{
    background-color: rgb(50, 118, 177);
    border-color: rgb(40, 94, 142);
    color: rgb(255, 255, 255);
}
input[type=submit] {
    width: 20%;
    background-color: skyblue;
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

	.form {
    border-radius: 5px;
    background-color: #f2f2f2;
    color: black;
    margin-left: 150px;
    margin-right: 150px;
    padding: 20px;
}

</style>
<body>
	<div class="body" style="background-image: url(pets-lg.jpg);">
		<h1 align="center">Add Your Details</h1>
		<br>
		<br>
		<h3 align="center">Personal Details</h3>
		
			<div class="form">
			
    <form action="Addprofile" method="post" onsubmit="myFunction()">
    <label for="fullname">Full Name</label>
    <input type="text" id="fullname" name="full_name" placeholder="Your Fullname.." required="fullname"><br>

    <label for="Pemail">Primary Email</label>
    <input type="text" id="Pemail" name="email" placeholder="Primary email" required="Pemail"><br>
	
	<label for="phone">Mobile No</label>
    <input type="text" id="phone" name="mobile_no" placeholder="Phone No.." required="phone"><br>
	
	<label for="aphone"> Alternate Mobile No</label>
    <input type="text" id="aphone" name="altmobile_no" placeholder="Alternate Mobile No.."><br>
	
	<label for="Fathername">Father's Name</label>
    <input type="text" id="Fathername" name="fathers_name" placeholder="Father's Name"><br>
	
	<label for="Mothername">Mother's Name</label>
    <input type="text" id="Mothername" name="mothers_name" placeholder="Mother's Name"><br>
	
	<label for="Residence">Residence Address</label>
    <input type="text" id="Residence" name="address" placeholder="Residence Address"><br>
	
	<h3 align="center">Qualification Details</h3>

	<label for="degree">Highest Degree</label>
    <input type="text" id="degree" name="degree" placeholder="Highest Degree" required="degree"><br>

    <label for="completion">Completion Year</label>
    <input type="text" id="completion" name="y1" placeholder="Completion Year" required="completion"><br>

	<label for="Institution">Institution Name</label>
    <input type="text" id="Institution" name="institution" placeholder="Institution Name" required="Institution"><br>	
	
	<label for="12passing">12th Passing Year</label>
    <input type="text" id="12passing" name="y2" placeholder="12th Passing Year" required="12passing"><br>
	
	<label for="12%">12th %</label>
    <input type="text" id="12%" name="p1" placeholder="%" required="12%"><br>
	
	<label for="10passing">10th Passing Year</label>
    <input type="text" id="10passing" name="y3" placeholder="10th passing" required="10passing"><br>
	
	<label for="10%">10th %</label>
    <input type="text" id="10%" name="p2" placeholder="%" required="10%"><br>
	
	<h3 align="center">Work Experience Details</h3>
	Previous Work Experience<br>
	  <input type="radio" name="exp" value="yes" > Yes<br>
  <input type="radio" name="exp" value="yes"> No<br>
  
  <label for="organisation">Organisation Worked For</label>
    <input type="text" id="organisation" name="org" placeholder="" required="Organisation"><br>
	
	<label for="Year">Year Of Experience</label>
    <input type="text" id="Year" name="yoe" placeholder="" required="Year"><br>
	
	<label for="skills">Skills</label>
    <input type="text" id="skills" name="skills" placeholder="" required="skills"><br>
	
<center><input type="submit" value="submit" ></div></center>

    </form>
    
 <script>
function myFunction() {
  alert("Details Added Successfully.");
}
</script>       
        
        
    </body>
</html>
