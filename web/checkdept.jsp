<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>VALIDATE THE TIMETABLE dept-wise</title>
    </head>
    <body>
        <%
            String d,s,y,sem;
            d = request.getParameter("dept");
            s = request.getParameter("sec");
            y = request.getParameter("year");
            sem = request.getParameter("sem");
            RequestDispatcher rd;
            
            
            //Session attributes
             session.setAttribute("td",d);
            session.setAttribute("ts",s);
            session.setAttribute("ty",y);
            session.setAttribute("tsem",sem);
            //CSE dept
            try{
          if(d.equals("CSE"))
          {
            if(y.equals("2"))
            {
                if(s.equals("A") && sem.equals("3")) {
                    
                }else if(s.equals("B") && sem.equals("3")){
                    
                }else if(s.equals("A") && sem.equals("4")){
                    
                }
                else if (s.equals("B") && sem.equals("4")){
                    
                }
                else {
                    
                }
                
                
                
            }
            
            if(y.equals("3"))
            {
                if(s.equals("A") && sem.equals("5")) {
                    rd=request.getRequestDispatcher("timetable/CSE_A_3_5.html");
                    rd.forward(request, response);
                }else if(s.equals("B") && sem.equals("5")){
                    rd=request.getRequestDispatcher("timetable/CSE_B_3_5.html");
                    rd.forward(request, response);
                }else if(s.equals("A") && sem.equals("6")){
                    rd=request.getRequestDispatcher("timetable/CSE_A_3_6.html");
                    rd.forward(request, response);
                }
                else if (s.equals("B") && sem.equals("6")){
                    rd=request.getRequestDispatcher("timetable/CSE_B_3_6.html");
                    rd.forward(request, response);
                }
                else {
                    
                }
                
                
            }
            
            if(y.equals("4"))
            {
               if(s.equals("A") && sem.equals("7")) {
                    
                }else if(s.equals("B") && sem.equals("7")){
                    
                }else if(s.equals("A") && sem.equals("8")){
                    
                }
                else if (s.equals("B") && sem.equals("8")){
                    
                }
                else {
                    
                }
                
            }
          }
            
            
            
          
           //ECE dept
          
          if(d.equals("ECE"))
          {
            if(y.equals("2"))
            {
                if(s.equals("A") && sem.equals("3")) {
                    
                }else if(s.equals("B") && sem.equals("3")){
                    
                }else if(s.equals("A") && sem.equals("4")){
                    
                }
                else if (s.equals("B") && sem.equals("4")){
                    
                }
                else {
                    
                }
                
                
                
            }
            
            if(y.equals("3"))
            {
                if(s.equals("A") && sem.equals("5")) {
                    rd=request.getRequestDispatcher("timetable/ECE_A_3_5.html");
                    rd.forward(request, response);
                }else if(s.equals("B") && sem.equals("5")){
                    rd=request.getRequestDispatcher("timetable/ECE_B_3_5.html");
                    rd.forward(request, response);
                }else if(s.equals("A") && sem.equals("6")){
                    rd=request.getRequestDispatcher("timetable/ECE_A_3_6.html");
                    rd.forward(request, response);
                }
                else if (s.equals("B") && sem.equals("6")){
                    rd=request.getRequestDispatcher("timetable/ECE_A_3_6.html");
                    rd.forward(request, response);
                }
                else {
                    out.println("INCORRECT INPUT");
                }
                
                
            }
            
            if(y.equals("4"))
            {
               if(s.equals("A") && sem.equals("7")) {
                    
                }else if(s.equals("B") && sem.equals("7")){
                    
                }else if(s.equals("A") && sem.equals("8")){
                    
                }
                else if (s.equals("B") && sem.equals("8")){
                    
                }
                else {
                    
                }
          }
          }
          
          
          //IT Dept
          if(d.equals("IT"))
          {
             if(y.equals("2"))
            {
                if(s.equals("A") && sem.equals("3")) {
                    
                }else if(s.equals("B") && sem.equals("3")){
                    
                }else if(s.equals("A") && sem.equals("4")){
                    
                }
                else if (s.equals("B") && sem.equals("4")){
                    
                }
                else {
                    
                }
                
                
                
            }
            
            if(y.equals("3"))
            {
                if(s.equals("A") && sem.equals("5")) {
                    
                }else if(s.equals("B") && sem.equals("5")){
                    
                }else if(s.equals("A") && sem.equals("6")){
                    
                }
                else if (s.equals("B") && sem.equals("6")){
                    
                }
                else {
                    
                }
                
                
            }
            
            if(y.equals("4"))
            {
               if(s.equals("A") && sem.equals("7")) {
                    
                }else if(s.equals("B") && sem.equals("7")){
                    
                }else if(s.equals("A") && sem.equals("8")){
                    
                }
                else if (s.equals("B") && sem.equals("8")){
                    
                }
                else {
                    
                }
          }
          }
          
          //EEE dept
          if(d.equals("EEE"))
          {
              if(y.equals("2"))
            {
                if(s.equals("A") && sem.equals("3")) {
                    
                }else if(s.equals("B") && sem.equals("3")){
                    
                }else if(s.equals("A") && sem.equals("4")){
                    
                }
                else if (s.equals("B") && sem.equals("4")){
                    
                }
                else {
                    
                }
                
                
                
            }
            
            if(y.equals("3"))
            {
                if(s.equals("A") && sem.equals("5")) {
                    
                }else if(s.equals("B") && sem.equals("5")){
                    
                }else if(s.equals("A") && sem.equals("6")){
                    
                }
                else if (s.equals("B") && sem.equals("6")){
                    
                }
                else {
                    
                }
                
                
            }
            
            if(y.equals("4"))
            {
               if(s.equals("A") && sem.equals("7")) {
                    
                }else if(s.equals("B") && sem.equals("7")){
                    
                }else if(s.equals("A") && sem.equals("8")){
                    
                }
                else if (s.equals("B") && sem.equals("8")){
                    
                }
                else {
                    
                }
          }
          }
          
          //mech dept
          if(d.equals("MECH"))
          {
            
              
              if(y.equals("2"))
            {
                if(s.equals("A") && sem.equals("3")) {
                    
                }else if(s.equals("B") && sem.equals("3")){
                    
                }else if(s.equals("A") && sem.equals("4")){
                    
                }
                else if (s.equals("B") && sem.equals("4")){
                    
                }
                else {
                    
                }
                
                
                
            }
            
            if(y.equals("3"))
            {
                if(s.equals("A") && sem.equals("5")) {
                    
                }else if(s.equals("B") && sem.equals("5")){
                    
                }else if(s.equals("A") && sem.equals("6")){
                    
                }
                else if (s.equals("B") && sem.equals("6")){
                    
                }
                else {
                    
                }
                
                
            }
            
            if(y.equals("4"))
            {
               if(s.equals("A") && sem.equals("7")) {
                    
                }else if(s.equals("B") && sem.equals("7")){
                    
                }else if(s.equals("A") && sem.equals("8")){
                    
                }
                else if (s.equals("B") && sem.equals("8")){
                    
                }
                else {
                    
                }
          }
          }
          
          //civil dept
          if(d.equals("CIVIL"))
          {
             if(y.equals("2"))
            {
                if(s.equals("A") && sem.equals("3")) {
                    
                }else if(s.equals("B") && sem.equals("3")){
                    
                }else if(s.equals("A") && sem.equals("4")){
                    
                }
                else if (s.equals("B") && sem.equals("4")){
                    
                }
                else {
                    
                }
                
                
                
            }
            
            if(y.equals("3"))
            {
                if(s.equals("A") && sem.equals("5")) {
                    
                }else if(s.equals("B") && sem.equals("5")){
                    
                }else if(s.equals("A") && sem.equals("6")){
                    
                }
                else if (s.equals("B") && sem.equals("6")){
                    
                }
                else {
                    
                }
                
                
            }
            
            if(y.equals("4"))
            {
               if(s.equals("A") && sem.equals("7")) {
                    
                }else if(s.equals("B") && sem.equals("7")){
                    
                }else if(s.equals("A") && sem.equals("8")){
                    
                }
                else if (s.equals("B") && sem.equals("8")){
                    
                }
                else {
                    
                }
          }
          }
          //aero dept
          if(d.equals("AERO"))
          {
             if(y.equals("2"))
            {
                if(s.equals("A") && sem.equals("3")) {
                    
                }else if(s.equals("B") && sem.equals("3")){
                    
                }else if(s.equals("A") && sem.equals("4")){
                    
                }
                else if (s.equals("B") && sem.equals("4")){
                    
                }
                else {
                    
                }
                
                
                
            }
            
            if(y.equals("3"))
            {
                if(s.equals("A") && sem.equals("5")) {
                    
                }else if(s.equals("B") && sem.equals("5")){
                    
                }else if(s.equals("A") && sem.equals("6")){
                    
                }
                else if (s.equals("B") && sem.equals("6")){
                    
                }
                else {
                    
                }
                
                
            }
            
            if(y.equals("4"))
            {
               if(s.equals("A") && sem.equals("7")) {
                    
                }else if(s.equals("B") && sem.equals("7")){
                    
                }else if(s.equals("A") && sem.equals("8")){
                    
                }
                else if (s.equals("B") && sem.equals("8")){
                    
                }
                else {
                    
                }
          }
          
          }
            }
          catch(Exception e){
                  out.println(e);
                  }
            %>
    </body>
</html>
