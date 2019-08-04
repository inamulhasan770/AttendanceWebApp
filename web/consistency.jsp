<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check Consistency</title>
    </head>
    <body>
        <%
        Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","admin");
            
            Statement stm1 = con.createStatement();
             Statement stm2 = con.createStatement();
            try{
            ResultSet rs1 = stm1.executeQuery("SELECT rollno FROM studentdb order by rollno");
            ResultSet rs2 = stm2.executeQuery("SELECT roll_no FROM tempattendance order by roll_no");
            String r1,r2;
            int flag=0;
            int i=0,j=0;
            while(true)
            {   
                rs1.next();
                i++;
                rs2.next();
                j++;
                r1=rs1.getString("rollno");
                
                r2=rs2.getString("roll_no");
                if(r1 != r2)
                   out.println("Some data's are Missing...");
            }  
            }
            catch(Exception e)
            {
                out.println(e);
            }
            out.println("DATAS are consistent....... NOT TO WORRY");
        %>
    </body>
</html>
