<%-- 
    Document   : displayMTable
    Created on : Jul 17, 2016, 5:25:18 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

 <% String userInput = request.getParameter("numInput"); 
 %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        
        <h1>Practical 2 pt 5</h1>
        <table border="1">
    <%
        
        int n =  Integer.parseInt(userInput);
        for(int i=1; i<=10; i++){
            out.print("<tr><td>" + i + "x "+n+" </td>" + " <td>"   +  (i*n) + "</td></tr>");
        }
        
    %>           
    </table>
       
  
    </body>
</html>
