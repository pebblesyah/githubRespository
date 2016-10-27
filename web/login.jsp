<html>
<head><title>Login Page</title></head>
    <body>
        <% 
        
        String msg=request.getParameter("login");
        if(msg.equals("fail") && msg)
        %>
        
        
        
        
        
        <form action="verifyUser.jsp" method="post">
             User Name: <input name="loginid" type='text'> <br>
             Password: <input name="password" type='password'> <br>
             <input type="submit" name="btnSubmit" value="ok">
             <input type =""
        </form>
    </body>
</html>
