<%@page import="java.sql.*"%>
<%@include file="header.jsp"%>
<!DOCTYPE html>
<html>
<title>NCT</title>
<body>
<img src="logo.png"  align="left"width="100" height="100">
<center><img src="nct.jpg" width="100" height="100">
<img src="apj sir.png" align="right"  width="100" height="100"></center>  
<div id="London1" class="w3-container w3-border city">
  <br>
   <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">



    <link rel="icon" href="Favicon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>


 
  
                                  <%   
              if(request.getParameter("search")!=null)
              {    
             
               try
              {
              String rollno = request.getParameter("rollno");
               Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); 
              Connection conn=DriverManager.getConnection("jdbc:sqlserver://VENGAT;encrypt=true;TrustServerCertificate=true;databaseName=college","college","admin");
              PreparedStatement pst = null;
               String sql = "exec sp_fetchtoupdate ?";   
                pst = conn.prepareStatement(sql); 
                pst.setString(1,rollno);
              ResultSet rs = pst.executeQuery();
              while(rs.next())
              {
              %> 
        <body>
<main class="my-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Update Student</div>
                        <div class="card-body">
                            <form name="my-form" onsubmit="return validform()"  method="post" action="update.jsp">

                              
                                <div class="form-group row">
                                    <label for="full_name" class="col-md-4 col-form-label text-md-right">Course Name</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="course"  value="<%=rs.getString(2)%>">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="email_address" class="col-md-4 col-form-label text-md-right">Branch Name</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="branch" value="<%=rs.getString(3)%>">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="user_name" class="col-md-4 col-form-label text-md-right">Roll Number</label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" name="rollno"  value="<%=rs.getString(4)%>">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="phone_number" class="col-md-4 col-form-label text-md-right">Name</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="name"  value="<%=rs.getString(5)%>">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="present_address" class="col-md-4 col-form-label text-md-right">Father Name</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="fatherName" value="<%=rs.getString(6)%>">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="permanent_address" class="col-md-4 col-form-label text-md-right">Gender</label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" name="gender" value="<%=rs.getString(7)%>">
                                    </div>
                                </div>
                                    <div class="col-md-6 offset-md-4">
                                        <button type="submit" class="btn btn-primary" name="update">
                                        Update                                       
                                        </button>                                    
                                    </div>  
                                    
                                    <div class="col-md-6 offset-md-4">                                 
                                        <center><h4><a href="adminHome.jsp">Back</a></h4></center>
                                    </div>  
                                </div>                             
                            </form>
                        </div>
                    </div>
            </div>
        </div>
    </div>
</main>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>          <%
                           response.sendRedirect("adminHome.jsp");
                               }    
          }
             catch(Exception e)
              {
              
          }
        }
           
      %>            

        
             
       
                
          