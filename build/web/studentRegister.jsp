<%@page import="java.sql.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">   
  <link rel="stylesheet" type="text/css" href="style.css">  
  <style>
  .login-box{
    height: 650px;
}</style>
</head>
<body>
    <form method="post" >
    <div class="login-box">
    <img src="user.png" class="avatar">
        <h1>Student Register</h1>
            <p>Name</p>
            <input type="text" name="name" placeholder="Enter Name" required="required">
            <p>Password</p>
            <input type="password" name="password" placeholder="Enter Password" required="required">
             <p>Email</p>
            <input type="text" name="email" placeholder="Enter Email" required="required">
             <p>Course</p>
            <input type="text" name="course" placeholder="Enter Course" required="required">
             <p>Branch</p>
            <input type="text" name="branch" placeholder="Enter Branch" required="required">
            <input type="submit" name="submit" value="Register">
             
            </form>
             <center><h1><a href="studentLogin.jsp">Login</a></h1></center>
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
    String email = request.getParameter("email");
    String course = request.getParameter("course");
    String branch = request.getParameter("branch");
     String sql = "exec sp_register ?,?,?,?,?";
     pst = conn.prepareStatement(sql); 
     pst.setString(1,name);
     pst.setString(2,password);
     pst.setString(3,email);
     pst.setString(4,course);
     pst.setString(5,branch);
     int i = pst.executeUpdate();
     if(i==1)
     {
          %>
                <script> alert("Registered Successfully!!!");</script>
              <%
             response.sendRedirect("studentLogin.jsp");
      }
     else
       {
             %>
             <script>alert("Failed!");</script>
             <%
                 response.sendRedirect("studentRegister.jsp");
       }
}
  
    }
catch(Exception e)
{
   out.println(e);
}
%>
