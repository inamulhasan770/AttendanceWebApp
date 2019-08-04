<%@ page import="java.sql.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title> Put Students Attendance Portal </title>

</head>
<body>
<style>
div.up {
	height: 275px;
    width: auto;
    border: 1px solid black;
	background-color: black;
	}
	
        div.container {
            background-color: aqua;
            color: black;
            width: 230px;
        }
</style>
<div class = up><center><h1 style="color: white;">C.A.H.C.E.T CSE Attendance system</h1>
		<img src="logo.jpg" height="180" width="180" alt="CAHCET LOGO">
		</center></div>
		<br>
		</br>
		<br></br>
		<a href="attendanceportal.html"><img src="icon/back.png" height="50" width="80" alt="back"></a>
<br>
</br>
<center><h1>Student Attendance Portal</h1></center>
<br></br>
    <% 
            String d = request.getParameter("Dept");
            String o = request.getParameter("day_order");
            String y = request.getParameter("year");
            String h = request.getParameter("hour");
            String s = request.getParameter("sect");
            
            
            session.setAttribute("sd",d);
            session.setAttribute("so",o);
            session.setAttribute("sy",y);
            session.setAttribute("sh",h);
            session.setAttribute("ss",s);
            
            
            
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","admin");
            
            Statement stm = con.createStatement();
            ResultSet rs1 = null;
            Date dat = new Date();
                     SimpleDateFormat ft =  new SimpleDateFormat ("dd_MM_yyyy");    //date of today with dd:mm:yyyy format
                 String  datnow = ft.format(dat);
                 SimpleDateFormat ft1 =  new SimpleDateFormat ("yyyy-MM-dd");    //date of today with yyyy:mm:dd format
                 String  dt = ft1.format(dat);
            //out.println(datnow); create date
            //out.println(dt);
            PreparedStatement ps1 = null, ps2 =null;
            
            try {
            if(h.equals("I")) //creates a new table if not exist for Ist hour//
            {
               
               String crtnew = "CREATE TABLE "+o+"_"+datnow+" AS SELECT * FROM tempattendance order by roll_no";
           // out.println(crtnew);
            
               ps2 = con.prepareStatement(crtnew);
             ps2.executeUpdate();    //create a new table for respective date as on//
             //out.println("IM executing");
             
             
                //updating all rows with the current date//
            ps1 = con.prepareStatement("UPDATE "+o+"_"+datnow+" SET on_date = ?");
            ps1.setString(1, dt);
             ps1.executeUpdate();
            //out.println("Im also executing");
             stm.executeQuery("COMMIT");
            }
            
            
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
            
            
            
            ResultSet rs = stm.executeQuery("SELECT * FROM tempattendance order by roll_no");           
%>
<center>
<div class = container>
    <form action="storeattn.jsp" method="post"><table cellpadding="8px" border="1px">
            <th>Student Rollno</th>
            <th><%= h %> &nbsp;&nbsp; Hour</th>
<% while(rs.next())
       { 
           String dep = rs.getString("dept");
           String yer = rs.getString("yr");
           String sec = rs.getString("sec");
       if((dep.equals(d)) && (yer.equals(y)) && (sec.equals(s)))
       {
       %>
        <tr>
        <td><%= rs.getString("roll_no") %></td>
        <td><center><input type="checkbox" name="at<%= rs.getString("roll_no")%>"/></center></td>
        </tr>
 <% }
       } %> 
</table>
<br/>
<input type="submit" value="Submit"/>
    </form>
</div>
</center>

</html>
