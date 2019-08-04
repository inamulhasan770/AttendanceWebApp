<%@ page import="java.sql.*" %> 
<%@ page import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Faculty Validation</title>
    </head>
    <body>
        <%
            String u = request.getParameter("usr");
            String p = request.getParameter("pass");
            String i = request.getParameter("code");
            
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","admin");
            
            Statement stm = con.createStatement();
            
            ResultSet rs = stm.executeQuery("SELECT * FROM facultydb");
            int a=0;
            while(rs.next())
            {
                String uname=rs.getString("facusr");
                String pass=rs.getString("passwd");
                String uid=rs.getString("facid");
                String ad=rs.getString("Admin");
                
            if(u.equals(uname) && p.equals(pass) && i.equals(uid) && ad.equals("yes"))
            {
                a = 1;
                out.println("welcome");
                RequestDispatcher rd=request.getRequestDispatcher("adminportal.html");
            rd.forward(request, response);
            }
            }
            if(a==0)
            {
                out.println("Enter valid username or password or Faculty Id");
                Thread.sleep(5000);
            RequestDispatcher rd=request.getRequestDispatcher("adminlog.html");
            rd.forward(request, response);
            }
        %>
    </body>
</html>
