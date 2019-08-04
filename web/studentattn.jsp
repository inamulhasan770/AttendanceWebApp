<%@ page import="java.sql.*" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Track Students Attendance :: Attendance Details </title>
<style>
div.up {
	height: 275px;
    width: auto;
    border: 1px solid black;
	background-color: black;
	}

div.details {
	height: auto;
	width: inherit;
	border: 1px solid grey;
	padding: 10px;
	background-color: lime;
	border-radius: 2px;
	shadow: 2px grey;
	}
.btn {
    background-color: black;
    color: white;
    padding: 16px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 200px;
    opacity: 0.9;
}

.attn {
        
	height: auto;
	width: 600px;
	border: 1px solid grey;
	padding: 10px;
	background-color: khaki;
	border-radius: 2px;
	shadow: 2px grey;
	
}
</style>
</head>
<body>
<div class = up><center><h1 style="color: white;">C.A.H.C.E.T CSE Attendance system</h1>
		<img src="logo.jpg" height="180" width="180" alt="CAHCET LOGO">
		</center></div>
		<br>
		</br>
		<br></br>
		<a href="checkattn.html"><img src="icon/back.png" height="50" width="80" alt="back"></a>
          
                             
<center>
<br>
</br>
<center><h1>Student Details and Attendance Percentage</h1></center>
<div class = details>
    
    <%
    String roll = request.getParameter("rollno");
    
     Class.forName("com.mysql.jdbc.Driver");
     
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","admin");
     
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery("SELECT * FROM studentdb;");                       
%>
    
    <table border="2px solid black" cellpadding="10px">
        <tr>
        <th>Rollno</th>
        <th>Student Name</th>
        <th>Branch</th>
        <th>Year</th>
        <th>Semester</th>
        </tr>
       <% while(rs.next())
       { 
           String temp = rs.getString("rollno");
       if(temp.equals(roll))
       {
       %>
        <tr>
        <td><%= rs.getString(1) %></td>
        <td><%= rs.getString(2) %></td>
        <td><%= rs.getString(3) %></td>
        <td><%= rs.getString(5) %></td>
        <td><%= rs.getString(6) %></td>
        </tr>
        </table>
</div>
<br/>
<br/>

<div class="attn">
    <h3>Your Attendance Details</h3>
    <table cellpadding="8px" border="2px solid black">
        <tr>
            <th>No of days</th>
            <th>Total Present</th>
            <th>Percentage</th></tr>
        <tr>
         <td><%= rs.getString(7) %></td>
        <td><%= rs.getString(8) %></td>
        <td><%= rs.getString(9) %></td>        
      <%
       }
       }
       %>
    </tr>   
    </table>
</div>



</body>
</html>
