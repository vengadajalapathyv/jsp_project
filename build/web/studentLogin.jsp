<%@page import="java.sql.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">   
  <link rel="stylesheet" type="text/css" href="style.css">  
  <style>
  .login-box{
    height: 400px;
}</style>
</head>
<body>
    <form method="post" >
    <div class="login-box">
    <img src="user.png" class="avatar">
        <h1>Student Login</h1>
            <p>Name</p>
            <input type="text" name="name" placeholder="Enter Name" required="required">
            <p>Password</p>
            <input type="password" name="password" placeholder="Enter Password" required="required">
            <input type="submit" name="submit" value="Login">
           
            </form>
             <center><h1><a href="studentRegister.jsp">Register</a></h1></center>
             <center><h1><a href="index.jsp">Back</a></h1></center>
        </div>   
        

    </body>
</html>

<%
     try
     {
      
       Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); 
       Connection conn=DriverManager.getConnection("jdbc:sqlserver://VENGAT;encrypt=true;TrustServerCertificate=true;databaseName=college","college","admin");
       PreparedStatement pst = null;
       if(request.getParameter("submit")!=null)
       {
       String name = request.getParameter("name");
      String password = request.getParameter("password");
       String sql ="exec sp_login ?,?";
       pst = conn.prepareStatement(sql);
       pst.setString(1,name);
       pst.setString(2,password);
       ResultSet rs =pst.executeQuery();
       if(rs.next())
       {
           %><script>alert("Logedin Successfully");</script><%
               response.sendRedirect("view.jsp");
       }
       else
          {
            %><script>alert("Incorrect name or password");</script><%
                response.sendRedirect("studentLogin.jsp");
           }
}
}
catch(Exception e)
{
   out.println(e);
}
   

%>
