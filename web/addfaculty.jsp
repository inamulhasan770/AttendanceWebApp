<%@ page import="java.sql.*" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add a New Faculty Details</title>
    </head>
    <body>
        <%
            String u = request.getParameter("usr");
            String p = request.getParameter("pass1");
            String i = request.getParameter("code");
            String n = request.getParameter("name");
            String ad = "no";
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","admin");
            Statement st=con.createStatement();
            st.executeUpdate("CREATE TABLE IF NOT EXISTS facultydb(facid VARCHAR(20)PRIMARY KEY, facusr VARCHAR(40) UNIQUE, facname VARCHAR(40) NOT NULL, passwd VARCHAR(30) NOT NULL, Admin VARCHAR(5) NOT NULL)");
            st.executeUpdate("INSERT INTO FACULTYDB VALUES('"+i+"','"+u+"','"+n+"','"+p+"','"+ad+"')");
            st.executeUpdate("COMMIT");
            out.println("1 row updated");
        %>
    </body>
</html>
