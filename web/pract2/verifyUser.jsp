<%
    String userID = request.getParameter("userName");
    String userPwd = request.getParameter("userPassword");
//change accordingly to what the name of the textfield u set on the pages
//loginid and password for html, for jsp is userName and userPassword


//and remember import statement u doofus!
%>

<%@page import = "java.sql.*"%>


<html>
<head><title>Pract2 Part3</title></head>
<body>

    <h3><%=request.getRequestURI()%></h3>
    User Name: <%= userID%> <br>
    User Password: <%= userPwd%> <br><br>
    <%
        if(userID.equals("Lincoln") && userPwd.equals("LincolnISHandsome")){
                out.print("Welcome! "+userID);
        } else {
                out.print("Fail");
                //response.sendRedirect("login.html");
                /*
                Below shows the use of queryString [?login=fail] to append more info such as param 'login' with a value of 'fail' to the redirected site
                */    
                response.sendRedirect("login.jsp?login=fail"); 
        }
        %>
        <br><br>
    <table border="1">
    <%
        for(int i=1; i<=5; i++){
            out.print("<tr><td>" + i + "x5</td>" + " <td>"   +  (i*5) + "</td></tr>");
        }
        
    %>           
    </table>
 
</body>
</html> 