<%-- 
    Document   : addnewstud
    Created on : 6 Aug, 2018, 9:11:32 PM
    Author     : INAM p
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Student</title>
        <style>
            div.container {
	height: auto;
	width: 500px;
	border: 2px solid black;
	shadow: 2px black;
	background-color: grey;
	color: white;
	font-style: bold;
	padding: 50px;
	}
	
</style>
    </head>
    <body>
    <center> <h1>Add New Student Details</h1></center>
    </br>
    <center>
    <div class = container>
<center>
	<form action="addstud.jsp"  method="post">
	<table>
	<tr>
	<td><p>Student Name : </p></td>
	<td><input type="text" placeholder="Enter Student name" name="stdname" id="stdname" required></td></tr>
        <tr>
	<td><p>Enter Student Rollno : </p></td>
	<td><input type="text" placeholder="Enter Student Rollno" name="rollno" id="rollno" required></td></tr>
	<tr>
	<td><p>Enter Student Branch : </p></td>
	<td><select name="stdbranch" id="stdbranch">
                <option value="CSE">CSE</option>
                <option value="ECE">ECE</option>
                <option value="IT">IT</option>
                <option value="EEE">EEE</option>
                <option value="Mech">MECH</option>
                <option value="Civil">CIVIL</option>
                <option value="Aero">AERO</option>
            </select>
        
        </td></tr>
        <tr>
	<td><p>Enter Student Section : </p></td>
	<td><select name="stdsec" id="stdsec">
                <option value="A">A</option>
                <option value="B">B</option>
        </select>
        </td></tr>
	<tr>
	<td><p>Enter Year : </p></td>
	<td><select name="year" id="year" >
        <option value="2">II YEAR</option>
        <option value="3">III YEAR</option>
        <option value="4">IV YEAR</option>
        
        
        </td></tr>
        <tr>
	<td><p>Enter Semester : </p></td>
	<td><select   name="semester" id="semester">
             <option value="1">I</option>
<option value="2">II</option>
<option value="3">III</option>
<option value="4">IV</option>
<option value="5">V</option>
<option value="6">VI</option>
<option value="7">VII</option>
<option value="8">VIII</option>
    </select>   
        
        </td></tr>
	</table>
	<center><button type="submit" class="btn" value="Submit">Submit <style="color: white"></button></center>
	</form>
</center>
</div>
</center>
    
    </body>
</html>
