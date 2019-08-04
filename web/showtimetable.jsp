<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TIME TABLE</title>
        <style>
            .container {
                background: greenyellow;
                height: inherit;
                width: 900px;
                padding: 6px;
            }
            </style>
    </head>
    <body>
    <center>
        <h1>Time Table</h1></center>
    <%
        String dept,sec,yr,sem;
        
        dept = request.getParameter("dept");
        sec = request.getParameter("sec");
        yr = request.getParameter("year");
        sem = request.getParameter("sem");
        
        Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","admin");
            Statement stm=con.createStatement();
            PreparedStatement ps = null;
            ResultSet rs = null;
            try{
            stm.executeUpdate("CREATE TABLE timetable(dayorder VARCHAR(3),I VARCHAR(20),II VARCHAR(20),III VARCHAR(20),IV VARCHAR(20),V VARCHAR(20),VI VARCHAR(20),VII VARCHAR(20),VIII VARCHAR(20),dept VARCHAR(10),sec VARCHAR(2),yr INTEGER,semester INTEGER);");

            }
            catch(Exception ex1)
            { }

            
            try {
            String selqry;
            selqry = "SELECT * FROM timetable where dept = ? and sec = ? and yr = ? and semester = ?";
            ps = con.prepareStatement(selqry);
                ps.setString(1, dept);
                ps.setString(2, sec);
                ps.setString(3, yr);
                ps.setString(4, sem);

                

               rs = ps.executeQuery();
    %>
    <center>
       <div class="container">
           <table cellpadding="5px" frame="box">
              
               <tr>
                   <td><strong>DEPT : </strong></td><td><b><%=dept %></b></td>
                   <td><strong>|| Section : </strong></td><td><b><%=sec %></b></td>
                   <td><strong>|| Year : </strong></td><td><b><%=yr %></b></td>
                   <td><strong>|| Semester : </strong></td><td><b><%=sem %></b></td>
               </tr>
           </table>
           <br/>
          <center> <h1>TIME TABLE</h1></center>
           <table cellpadding = "5px" border="2px solid black">
               <tr>
                   <th>DayOrder</th>
                   <th>1st Hour</th>
                   <th>2nd Hour</th>
                   <th>3rd Hour</th>
                   <th>4th Hour</th>
                   <th>5th Hour</th>
                   <th>6th Hour</th>
                   <th>7th Hour</th>
                   <th>8th Hour</th>
               </tr>
               
               
               <%
               while(rs.next())   
    {
               %>
              
               
               <tr>
                   <td><%=rs.getString(1) %></td>
                   <td><%=rs.getString(2) %></td>
                   <td><%=rs.getString(3) %></td>
                   <td><%=rs.getString(4) %></td>
                   <td><%=rs.getString(5) %></td>
                   <td><%=rs.getString(6) %></td>
                   <td><%=rs.getString(7) %></td>
                   <td><%=rs.getString(8) %></td>
                   <td><%=rs.getString(9) %></td>
                   
               </tr>
               
          
            <%
        }
               %>
                </table>
            
       
       </div> </center>
               <%
    }
        catch(Exception ex2) {
            out.println(ex2);
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        %>
    </body>
</html>
