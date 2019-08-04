<%@page import="java.io.*"%>
<%@page import="java.net.URL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Store Comment</title>
        <script src="javascript/jquery.js">
        <script>
            $(document).ready(function () {
    // Handler for .ready() called.
    window.setTimeout(function () {
        location.href = "queries.jsp";
    }, 5000);
});
            </script>
    </head>
    <body>
        <%
            String nm = request.getParameter("Name");
            String comm = request.getParameter("comment");
            try {
         File file = new File("C:/Users/User/Documents/NetBeansProjects/Attendance/web/Queries/queryfile.txt");
         file.createNewFile();
         if(file.exists()){
             Writer w = new BufferedWriter(new FileWriter(file, true));
 
             w.append("<br/><h3> "+nm+"</h3>");
             w.append("<br/>"+comm+"<br/><br/><hr/>");
 
             out.println("Your Queries is Stored Successfully Mr/MS "+nm);
             w.flush();
             w.close();
            
         
         }
             else
             out.println("Error Occured");

                      } 
                      catch(Exception e)
                      {
                          out.println(e);
                      }
            
            
            
            
            
            
            %>
    </body>
</html>
