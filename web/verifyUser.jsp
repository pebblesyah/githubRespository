<% 
 String userID = request.getParameter("loginid");
String userPwd = request.getParameter("password");
%>


<html>
    
    <head><title>Practical 2</title></head>
    <body>
        User Name: <%=userID%> <br/>
        Password: <%=userPwd%> <br/>

<%


 if (userID.equals("Lincoln") && userPwd.equals("LincolnISHandsome")) {
    out.print("Login Success");
   // response.sendRedirect("login_okay.jsp");   // Brings user to another webpage
    out.print("Welcome!");
}  else { 
    out.print("Login Failed");
  //  response.sendRedirect("login_bad.jsp"); // Brings user to another webpage
 
  response.sendRedirect("login.jsp?login=fail");
}

%>
</body
</html