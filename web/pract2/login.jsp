<%@page import = "java.sql.*"%>


<html>
<head>
    <title>SEP Pract2 Part3</title>
</head>
<body>
    <h1>SEP Pract2 Part3</h1>
    <h3><%=request.getRequestURI()%></h3>
    
<%
    String msg=request.getParameter("login");
    
    //if(msg.equals("fail") && msg!=null){  
 /* 
    The above 'if' condition will not work when the JSP page first loaded. 
    This is due to short-circuit evaluation in java in which the second condition will only be evaluated if the first one fails.
    See reference: https://en.wikipedia.org/wiki/Short-circuit_evaluation
    In the above case, when the page first loaded, msg is null therefore a null pointer exception will be generated when evaulating the String comparison.
    Hence one way to overcome this issue, we suggest two methods:
    Method I: re-arrange the conditional statement. 
    Method II: check if msg is not null before proceeding to another if condition to evaluate the String comparison. 
 */
 
 /*
    //Method I: re-arrange the conditional statement. 
    if(msg!=null && msg.equals("fail")){  
        out.print("Sorry Login Fail");
        out.print("===>"+msg);
    }
 */
    //Method II: check if msg is not null before proceeding to another if condition to evaluate the String comparison.
    if(msg!=null){
        if(msg.equals("fail")){
            out.print("Sorry Login Fail");
            out.print("===>"+msg);        
        }
    }else{
        //do nothing since msg is null when the page first loaded.
    }

%>
<form action="verifyUser.jsp" name="form1" method="post">
     User: <input type="text" name="userName" size="32"><br>
     Password: <input type="text" name="userPassword" size="32"><br>
     <input type="submit" name="submit" value="Login">
     <input type="reset" name="submit" value="Reset">
</form>

                        
</body>
</html>
