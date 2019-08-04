<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html" session="true" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Store Attendance</title>
    </head>
    <body>
        <%
            String d=(String)session.getAttribute("sd"); //dept//
            String o=(String)session.getAttribute("so"); //dayorder//
            String y=(String)session.getAttribute("sy"); //year//
            String h=(String)session.getAttribute("sh"); //hour//
            String s=(String)session.getAttribute("ss"); //semester//
            String temp;
             boolean results =  false;
            int h1,h2,h3,h4,h5,h6,h7,h8,total,count = 0,nod = 0;
            double avg, tp = 0, perc = 0;
            
            Date dat = new Date();
                     SimpleDateFormat ft =  new SimpleDateFormat ("dd_MM_yyyy");    //date of today with dd:mm:yyyy format
                 String  datnow = ft.format(dat);
                 SimpleDateFormat ft1 =  new SimpleDateFormat ("yyyy-MM-dd");    //date of today with dd:mm:yyyy format
                 String  dt = ft1.format(dat);
            //out.println(datnow);
           // out.println(dt);
            int a=0;
            String roll = null;
            String tlname = o+"_"+datnow;
            out.println("Attendance is stored in the table "+tlname);
            String ry;
        if(y.equals("I"))
            ry = "1";
        else if(y.equals("II"))
            ry = "2";
        else if(y.equals("III"))
            ry = "3";
        else
            ry = "4";
        
        %>
        <br/>
        <br/>
          <%  
            try {
                
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","admin");
            
            Statement stm = con.createStatement();
            ResultSet rs1 = null;
            PreparedStatement ps = null;
            String qr0 = "SELECT * FROM tempattendance where dept = ? and sec = ? and yr = ? order by roll_no";
            ps = con.prepareStatement(qr0);
            ps.setString(1, d);
            ps.setString(2, s);
            ps.setString(3, y);

            rs1 = ps.executeQuery();        //selects the respective dept and sec values from table//
                       
           
              out.println("<h4>Attendance Result</h4><br/>");
            while(rs1.next())
            {
                
                roll = rs1.getString("roll_no");
                String qry1 = "UPDATE "+tlname+" set "+h+" = 1 where roll_no = "+roll;   //updates as per the date
                String qry2 = "UPDATE "+tlname+" set "+h+" = 0 where roll_no = "+roll;
                //Dynamic roll allocation
                String tempr = "at"+roll;
                String at = null;
                out.println("<br/>");
                at = request.getParameter(tempr);
            if(at != null)
                a = 1;
            else
                a = 0;
                            
               if(a == 1)
                {
                 stm.executeUpdate(qry1); 
                 out.println(roll+" Updated as 1");
                }
               else
               {
                   stm.executeUpdate(qry2);
                   out.println(roll+" Updated as 0");
               }
               a = 0;
                }
                    
                    
            stm.executeQuery("COMMIT");
            
           stm.close();
           rs1.close();
           con.close();
            }
			
            catch (Exception e)
{
out.println("Exception Occured : "+e);

}
   
               %> 
               
                <br/> <br/>
               
       
               
               
               <%
            if(h.equals("VIII"))
            {
            out.println("<h2> Storing the Result in the Student table </h2>");

             try {
              
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","admin");
            
            Statement stm = con.createStatement();
            ResultSet rs2, rs3;
            ResultSet rs1;
            
            PreparedStatement ps1 = null;
            PreparedStatement ps2 = null;
        
            String qr1 = "SELECT * FROM "+tlname+" where dept = ? and sec = ? and yr = ? order by roll_no";
            String qr2 = "SELECT * FROM studentdb where branch = ? and section = ? and year = ? order by rollno";
            String qr3 = "SELECT * FROM studentdb order by rollno";
            
               //Mark
            ps1 = con.prepareStatement(qr1);   //get details from respective table
            ps1.setString(1, d);
            ps1.setString(2, s);
            ps1.setString(3, y);
            
            rs1 = ps1.executeQuery();  
            

            
            
             ps2 = con.prepareStatement(qr2);   //get Studentdb table
            ps2.setString(1, d);
            ps2.setString(2, s);
            ps2.setString(3, ry);
            rs2 = ps2.executeQuery();
            
           
          while(true)
            {  
             rs1.next();   
             rs2.next();
             if(rs1 == null || rs2 == null)
                 break;
             else
             {
              roll = rs1.getString("roll_no");
              
              temp = rs2.getString(7);
                 //out.println("<h2>"+temp+"</h2>");
                  count = Integer.parseInt(temp);
                count++;
                out.println("<br/>"+"Total No. of days = "+count);
                String qryupd = "UPDATE studentdb set no_of_days = "+count+" where rollno = "+roll;
                stm.executeUpdate(qryupd);
                stm.executeUpdate("COMMIT");
              //get the values from another table//
              nod = Integer.parseInt(rs2.getString("no_of_days"));
              tp = Float.parseFloat(rs2.getString("total_present"));
              
              out.println("<br/>Previous Percentage : "+tp);
            
             
              h1 = Integer.parseInt(rs1.getString("I"));      //Assign the attendance value of the students
              h2 = Integer.parseInt(rs1.getString("II"));
              h3 = Integer.parseInt(rs1.getString("III"));
              h4 = Integer.parseInt(rs1.getString("IV"));
              h5 = Integer.parseInt(rs1.getString("V"));
              h6 = Integer.parseInt(rs1.getString("VI"));
              h7 = Integer.parseInt(rs1.getString("VII"));
              h8 = Integer.parseInt(rs1.getString("VIII"));
              
              total = h1+h2+h3+h4+h5+h6+h7+h8;
              avg = (float)total / 8;
              
              out.println("<b>"+roll+"</b>");  //test cases
              out.println(total);
              out.println(avg);
              
              tp = tp + avg;      // calculate the total days of present
              perc = tp / count;
              perc = perc * 100;// calcuate the percentage of present
             out.println("<br/>Total Present : "+tp);
             out.println("<br/>Percentage : "+perc);
              
              String qryperc = "UPDATE studentdb set percentage = "+perc+" where rollno = "+roll;
              String qrytotal = "UPDATE studentdb set total_present = "+tp+" where rollno = "+roll;
           
              stm.executeUpdate(qryperc);
              stm.executeUpdate(qrytotal);
               
              out.println("<br/>");
 
        }
            }  
             }
              catch (Exception e)
{
e.printStackTrace();
out.println("Exception Occured : "+e);

}
            }
            %>
         <br/>
         <br/>
         <br/>
    <center>
        <a href="index.html"><img src="icon/quit.gif" alt="QUIT"  height="50" width="150"/></a>
    </center>
    </body>
</html>
