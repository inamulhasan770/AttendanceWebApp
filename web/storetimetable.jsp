<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>STORE TIMETABLE</title>
    </head>
    <body>
        <%
            int i=0,j=0;
            String ord="",hr="",k1,k2,temp1,temp2,intz= null,h = null;
            String d=(String)session.getAttribute("td"); //dept//
            String s=(String)session.getAttribute("ts"); //section//
            String y=(String)session.getAttribute("ty"); //year//
            String sem=(String)session.getAttribute("tsem"); //semester//
            Statement stm;
            PreparedStatement ps;
            ResultSet rs;
            try {
                
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","admin");
            stm = con.createStatement();
 
            stm.executeUpdate("CREATE TABLE timetable(dayorder VARCHAR(3),I VARCHAR(20),II VARCHAR(20),III VARCHAR(20),IV VARCHAR(20),V VARCHAR(20),VI VARCHAR(20),VII VARCHAR(20),VIII VARCHAR(20),dept VARCHAR(10),sec VARCHAR(2),yr INTEGER,semester INTEGER)");

            
            }
            catch(Exception e)
            {
            }
            try {
                 Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","admin");
            stm = con.createStatement();
               
               for(i=1;i<=6;i++)
            {   
                k1 = Integer.toString(i);
                ord = 'o'+k1;
                
                temp1 = request.getParameter(ord);
                //out.println(temp1+" IM executing");
                stm.executeUpdate("INSERT INTO timetable VALUES('"+temp1+"','"+intz+"','"+intz+"','"+intz+"','"+intz+"','"+intz+"','"+intz+"','"+intz+"','"+intz+"','"+d+"','"+s+"','"+y+"','"+sem+"')");
                stm.executeUpdate("COMMIT");
                
                
                for(j=1;j<=8;j++)
                {
                   k2 = Integer.toString(j);
                   hr = 'd'+k1+k2;
                 temp2 = request.getParameter(hr);
                 
                      if(k2.equals("1"))
                         h = "I";
                      else if(k2.equals("2"))
                         h = "II";
                      else if(k2.equals("3"))
                         h = "III";
                      else if(k2.equals("4"))
                         h = "IV";
                      else if(k2.equals("5"))
                         h = "V";
                      else if(k2.equals("6"))
                         h = "VI";
                      else if(k2.equals("7"))
                         h = "VII";
                      else if(k2.equals("8"))
                         h = "VIII";
                
                String upd = "UPDATE timetable set "+h+"= ? where dayorder = ? and dept = ? and sec = ? and yr = ? and semester = ?";
                ps = con.prepareStatement(upd);
                ps.setString(1, temp2);
                ps.setString(2, temp1);
                ps.setString(3, d);
                ps.setString(4, s);
                ps.setString(5, y);
                ps.setString(6, sem);
                

               ps.executeUpdate();
                  stm.executeUpdate("COMMIT");
                }
                
            } 
                out.println("<h3>TIME TABLE UPDATED SUCCESSFULLY</h3>");
            }
            catch(Exception e1)
            {
                out.println(e1);
            }
            
            
            %>
            <br/>
            <br/>
            <a href="adminportal.html">Back to AdminPortal</a>
    </body>
</html>
