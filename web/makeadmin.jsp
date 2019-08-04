<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MAKE ADMIN</title>
        <style>
            .container {
                position: absolute;
                margin-top: 300px;
                background: coral;
                padding: 20px;
                margin-left: 40%;
            }
        </style>
        <script>
            function myfn() {
  var txt;
  if (confirm("Are You Sure, Do you Want to Continue!!")) {
    return 1;
  } else {
    return 0;
  }
}
            </script>
    </head>
    <body>
    <center>
        <div class="container">
            <form onsubmit = "myfn()" action="mkadmin.jsp" method="post">
        <table>
            <tr>
                <td>
                    <b>Enter Faculty ID : </b>
                </td>
                <td>
                    <input type="text" placeholder="Enter Faculty ID" name="facid" required/>
                </td>
                
            </tr>
          
        </table>
                <br/>
                <input type="submit" value="Submit"/>
                </form>
</div>
        </center>
    </body>
</html>
