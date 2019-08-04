<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<%@page import="java.net.URL"%>
    <!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Queries and Comments</title>
        <style>
            .comarea {
                width: 80%;
                height: inherit;
                background-color: greenyellow;
                border: 2px solid orange;
                box-shadow: 2px 2px 2px yellow;
            }
            
            a:hover {
                background-color: black;
                box-shadow: 3px 3px 3px grey;
                border-radius: 5px;
                
            }
        </style>
        
        <script>
             window.onload = timedRefresh(5000);
        </script>
    </head>
    <body>
    <center><h1>Submit your Queries</h1></center>
    <br/>
    <a href="index.html"><img src="icon/back.png" width="100" height="55"/></a><br/><br/>
    <div align="right"><a href="queries.jsp"><img src="icon/refresh.gif" alt="Refresh" width="100" height="100"></a>Click this icon to Refresh</div>
    <center>
    <div><form action="submitquery.jsp" method="post">
        <table>
            <tr>
                <td>Enter Your Name</td>
                <td><input type="text" name="Name" required/></td>
            </tr>
                        <tr>
                <td>Comment</td>
                <td><textarea name="comment" rows="10" cols="60" required></textarea></td>
            </tr>
        </table>
        <center>
            <input type="submit" value="Submit"/>
        </center>
    </form>
    </div>
        <br/>
        <br/>
        <div class="comarea">
            <%
                       
                      try {
         File file = new File("C:/Users/User/Documents/NetBeansProjects/Attendance/web/Queries/queryfile.txt");
         file.createNewFile();
         if(file.exists()){
             BufferedReader reader = new BufferedReader(new FileReader(file));
            //BufferedReader br = new InputStreamReader(new FileInputStream(file));
            StringBuilder sb = new StringBuilder();
            String line;

            while((line = reader.readLine())!= null){
               out.println(line+"<br/>");
            }
            
         
         }
             else
             out.println("Error Occured");

                      } 
                      catch(Exception e)
                      {
                          out.println(e);
                      }
               
                
                
                
                
                
                
                %>
        </div>
    </center>
    <br/>
    <br/>
</body>
</html>
