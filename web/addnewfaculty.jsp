<%-- 
    Document   : addnewfaculty
    Created on : 5 Aug, 2018, 10:03:23 PM
    Author     : INAM p
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add New Faculty</title>
        <script type="text/javascript">
            function myfn() {
        var passwd1 = document.getElementById("pass1").value;
        var passwd2 = document.getElementById("pass2").value;
        if(passwd1 == passwd2)
            return true;
        else {
        alert("Enter the passwords correctly...UR password didn't match");
        return false;
            }
        }
        </script>
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
	div.up {
	height: 275px;
    width: auto;
    border: 1px solid black;
	background-color: black;
	}
</style>
    </head>
    <body>
        <div class = up><center><h1 style="color: white;">C.A.H.C.E.T CSE Attendance system</h1>
		<img src="logo.jpg" height="180" width="180" alt="CAHCET LOGO">
            </center></div></br>
    <center> <h1> Add new Faculty </h1></center>
    <br/>
    <center>
    <div class = container>
<center>
	<form onsubmit="return myfn()" action="addfaculty.jsp"  method="post">
	<table>
	<tr>
	<td><p>Faculty Name : </p></td>
	<td><input type="text" placeholder="Enter faculty name" name="name" id="name" required></td></tr>
        <tr>
	<td><p>Faculty Username : </p></td>
	<td><input type="text" placeholder="Enter faculty Username" name="usr" id="usr" required></td></tr>
	<tr>
	<td><p>Faculty Password : </p></td>
	<td><input type="password" placeholder="Enter faculty Password" name="pass1" id="pass1" required></td></tr>
        <tr>
	<td><p>Re-enter Faculty Password : </p></td>
	<td><input type="password" placeholder="Enter faculty Password" name="pass2" id="pass2" required></td></tr>
	<tr>
	<td><p>Enter Faculty code : </p></td>
	<td><input type="text" placeholder="Enter the faculty code" name="code" id="code" required></td></tr>
	</table>
	<center><button type="submit" class="btn" value="Submit">Submit <style="color: white"></button></center>
	</form>
</center>
</div>
</center>
    </body>
</html>
