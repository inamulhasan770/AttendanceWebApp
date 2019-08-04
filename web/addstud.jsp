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
            String n = request.getParameter("stdname");
            String r = request.getParameter("rollno");
            String b = request.getParameter("stdbranch");
            String s = request.getParameter("stdsec");
            String y = request.getParameter("year");
            String sem = request.getParameter("semester");
            String dt = "2018-01-01";
            String yr = null;
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","admin");
            Statement st=con.createStatement();
            try{
            st.executeUpdate("CREATE TABLE IF NOT EXISTS studentdb(rollno VARCHAR(40) PRIMARY KEY, studname VARCHAR(40) NOT NULL,branch CHAR(10) NOT NULL, section CHAR(4) NOT NULL, YEAR VARCHAR(4) NOT NULL, semester VARCHAR(4) NOT NULL,no_of_days INT,total_present FLOAT, percentage FLOAT)");
            st.executeUpdate("INSERT INTO studentdb VALUES('"+r+"','"+n+"','"+b+"','"+s+"','"+y+"','"+sem+"','"+0+"','"+0+"','"+0+"')");
            st.executeQuery("COMMIT");
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
            
                         //if the input of the student is given in a number then... cast it into roman //
            if(y.equals("1"))
                    yr = "I";
                    
            else if(y.equals("2"))
                    yr = "II";
            
            else if(y.equals("3"))
                    yr = "III";
            else
                    yr = "IV";
            
            
            try{
                st.executeUpdate("CREATE TABLE IF NOT EXISTS tempattendance(roll_no VARCHAR(10) REFERENCES studentdb(rollno),dayorder INTEGER,on_date DATE,I BOOLEAN NOT NULL,II BOOLEAN NOT NULL,III BOOLEAN NOT NULL,IV BOOLEAN NOT NULL,V BOOLEAN NOT NULL,VI BOOLEAN NOT NULL,VII BOOLEAN NOT NULL,VIII BOOLEAN NOT NULL, dept VARCHAR(6), yr VARCHAR(6),sec VARCHAR(3))");
                st.executeUpdate("INSERT INTO tempattendance VALUES('"+r+"','"+1+"','"+dt+"','"+0+"','"+0+"','"+0+"','"+0+"','"+0+"','"+0+"','"+0+"','"+0+"','"+b+"','"+yr+"','"+s+"')");
                //out.println("Im executing");
            
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
            st.executeQuery("COMMIT");
            out.println("1 row updated");
        %>
    </body>
</html>

