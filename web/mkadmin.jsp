<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MAKE MEMBER AS AN ADMIN</title>
      
    </head>
    <body>
        <%
            String fid = request.getParameter("facid");
            try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","admin");
            Statement st=con.createStatement();
            ResultSet rs= null;
            PreparedStatement ps;
            int flag = 0;
            String id = null,nm=null;
            rs = st.executeQuery("SELECT * FROM facultydb");
            while(rs.next())
            {
            id = rs.getString(1);
            nm = rs.getString(3);
            if(fid.equals(id)) {
            String updqry = "UPDATE facultydb SET Admin  = ? WHERE facid = ?";                
            ps = con.prepareStatement(updqry);
                ps.setString(1,"yes");
                ps.setString(2,fid);
             ps.executeUpdate();
             out.println("<h3>Mr/Ms/Mrs. "+nm+" Has been Promoted to <b>Admin</b> and ID "+id+"</h3>");
            flag = 1;
            break;
            }
            
            }
            if(flag == 0) {
                out.println("CHECK the FACULTY ID or the Faculty ID not found....");
            }
            }
            catch(Exception e){
                out.println(e);
            }
            
            
            
            %>
            <a href="adminportal.html">Back to AdminPortal</a>
    </body>
</html>
