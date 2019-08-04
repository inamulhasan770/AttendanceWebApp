<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add TIME TABLE</title>
        <style>
            .container {
                background-color: magenta;
                color: white;
                width: 600px;
                height: inherit;
                padding: 20px;
                border: 3px solid black;
                box-shadow: 3px 3px 3px antiquewhite;
                margin-top: 300px;
                
            }
        </style>
    </head>
    <body>
                   <center>

        <div class="container">
            <center>TIME TABLE</center>
            <form action="checkdept.jsp" method="post">
                <table cellpadding="5px">
                    <tr>
                        <th>Department</th>
                        <th>Section</th>
                        <th>Year</th>
                        <th>Semester</th>
                    </tr>
                    <tr>
                        <td><select name="dept">
                                <option value="CSE">CSE</option>
                                <option value="ECE">ECE</option>
                                <option value="IT">IT</option>
                                <option value="EEE">EEE</option>
                                <option value="Mech">MECH</option>
                                <option value="Civil">CIVIL</option>
                                <option value="Aero">AERO</option>
                            </select></td>
                        <td><select name="sec">
                             <option value="A">A</option>
                <option value="B">B</option>
                            </select></td>
                            
                        <td><select name="year">
                            <option value="2">II YEAR</option>
                            <option value="3">III YEAR</option>
                            <option value="4">IV YEAR</option>
                            </select></td>
                            
                        <td><select name="sem">
                            <option value="1">I</option>
                            <option value="2">II</option>
                            <option value="3">III</option>
                            <option value="4">IV</option>
                            <option value="5">V</option>
                            <option value="6">VI</option>
                            <option value="7">VII</option>
                            <option value="8">VIII</option>
                            </select></td>
                    </tr>
                </table>
                <br/><br/>
                <center>
                    <input type="Submit" value="Submit">
                </center>
            </form>
        </div>
            </center>
            
            
            
            
            
            
            
            
            
            
            
            
           
    </body>
</html>
