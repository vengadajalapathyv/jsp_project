<%@page import="java.sql.*"%>
<%@include file="header.jsp"%>
<!DOCTYPE html>
<html>
<title>NCT</title>
<body>
<img src="logo.png"  align="left"width="100" height="100">
<center><img src="nct.jpg" width="100" height="100">
<img src="apj sir.png" align="right"  width="100" height="100"></center>
<div class="w3-container">
  <div class="w3-bar w3-black">
    <button class="w3-bar-item w3-button tablink w3-red" onclick="openCity(event,'London')">Add New Student</button>
    <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Paris')">Insert New Result</button>
     <button class="w3-bar-item w3-button tablink w3" onclick="openCity(event,'London1')">Update Student</button>
    <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Tokyo')">Registered Students</button>
     <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Tokyo1')">All Student Result</button>
     <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Berlin')">Edit Result</button>
     <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'London2')">Delete Student</button>
     <a href="adminLogin.jsp" class="w3-bar-item w3-button tablink">Logout</a>
  </div>
  
  <div id="London" class="w3-container w3-border city">
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
<body>
<main class="my-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Add New Students</div>
                        <div class="card-body">
                            <form name="my-form" onsubmit="return validform()"  method="post">
                                <div class="form-group row">
                                    <label for="full_name" class="col-md-4 col-form-label text-md-right">Course Name</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="course"  required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="email_address" class="col-md-4 col-form-label text-md-right">Branch Name</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="branch" required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="user_name" class="col-md-4 col-form-label text-md-right">Roll Number</label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" name="rollno" required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="phone_number" class="col-md-4 col-form-label text-md-right">Name</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="name" required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="present_address" class="col-md-4 col-form-label text-md-right">Father Name</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="fatherName" required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="permanent_address" class="col-md-4 col-form-label text-md-right">Gender</label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" name="gender" required>
                                    </div>
                                </div>

                                    <div class="col-md-6 offset-md-4">
                                        <button type="submit" class="btn btn-primary" name="submit">
                                        Save
                                        </button>
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
</body> 
  
                  

  <div id="Paris" class="w3-container w3-border city" style="display:none">
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
<body>
<main class="my-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Insert New Result</div>
                        <div class="card-body">
                            <form name="my-form" onsubmit="return validform()"  method="post">
                                <div class="form-group row">
                                    <label for="full_name" class="col-md-4 col-form-label text-md-right">Roll Number</label>
                                    <div class="col-md-6">
                                        <input type="text"class="form-control" name="rollno" required  >
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="email_address" class="col-md-4 col-form-label text-md-right">Engg. Physics-I</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="physics" required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="user_name" class="col-md-4 col-form-label text-md-right">Engg. Chemistry</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="chemistry" required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="phone_number" class="col-md-4 col-form-label text-md-right">Engg. Mathematics-I</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="mathematics" required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="present_address" class="col-md-4 col-form-label text-md-right">Basic Electrical Engg</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="electrical" required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="permanent_address" class="col-md-4 col-form-label text-md-right">Electronic Engg.</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="electronic" required>
                                    </div>
                                </div>
                                
                                 <div class="form-group row">
                                    <label for="permanent_address" class="col-md-4 col-form-label text-md-right">Engg. Chemistry Lab</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="chemistrylab" required>
                                    </div>
                                </div>
                                
                                 <div class="form-group row">
                                    <label for="permanent_address" class="col-md-4 col-form-label text-md-right">Engg. Physics Lab</label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" name="physicslab" required>
                                    </div>
                                </div>
                                
                                    <div class="col-md-6 offset-md-4">
                                        <button type="submit" class="btn btn-primary" name="result">
                                       Save
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
            </div>
        </div>
        <br>
    </div>

</main>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html> 
  </div>

 <div id="London1" class="w3-container w3-border city" style="display:none">
  
 <body>
<main class="my-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Update Student</div>
                        <div class="card-body">
                            <form name="my-form" onsubmit="return validform()"  method="post" action="studentUpdate.jsp">

                                <div class="form-group row">
                                    <label for="user_name" class="col-md-4 col-form-label text-md-right">Roll Number</label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" name="rollno"  >
                                    </div>
                                </div>
                              
                                    <div class="col-md-6 offset-md-4">
                                        <button type="submit" class="btn btn-primary" name="search">
                                        Search
                                        </button>
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
</body> 
</div>



  <div id="Tokyo" class="w3-container w3-border city" style="display:none">
  
<section>
  <!--for demo wrap-->
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
         <th>Course Name</th>
          <th>Branch Name</th>
          <th>Roll Number</th>
          <th>Name</th>
          <th>Father Name</th>
          <th>Gender</th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
          <%
              try
              {
              Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); 
              Connection conn=DriverManager.getConnection("jdbc:sqlserver://VENGAT;encrypt=true;TrustServerCertificate=true;databaseName=college","college","admin");
              PreparedStatement pst = null;
               String sql = "exec sp_fetchstud ";   
                pst = conn.prepareStatement(sql); 
              ResultSet rs = pst.executeQuery();
              while(rs.next())
              {
                
          %>
        <tr>
          <td><%=rs.getString(2)%></td>
          <td><%=rs.getString(3)%></td>
          <td><%=rs.getString(4)%></td>
          <td><%=rs.getString(5)%></td>
          <td><%=rs.getString(6)%></td>
          <td><%=rs.getString(7)%></td>
        </tr>

      </tbody>
      <%
          }    
          }
              catch(Exception e)
              {
              out.println(e);
          }
      %>
    </table>
    
  </div>
</section>
</div>
<div id="Tokyo1" class="w3-container w3-border city" style="display:none">
   
<section>
  <!--for demo wrap-->
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>Roll Number</th>
          <th>Engg. Physics-I</th>
          <th>Engg. Chemistry</th>
          <th>Engg. Mathematics-I</th>
          <th>Basic Electrical Engg</th>
          <th>Electronic Engg.</th>
          <th>Engg. Chemistry Lab</th>
          <th>Engg. Physics Lab</th>
          
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
      <form method="post">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
          <%
     try
          {
             Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); 
              Connection conn=DriverManager.getConnection("jdbc:sqlserver://VENGAT;encrypt=true;TrustServerCertificate=true;databaseName=college","college","admin");
              PreparedStatement pst = null;
              String sql = "exec sp_fetchresult ";   
               pst = conn.prepareStatement(sql); 
              ResultSet rs = pst.executeQuery();
           while(rs.next())
           {
          %>
        <tr>
          <td><%=rs.getString(2)%></td>
          <td><%=rs.getString(3)%></td>
          <td><%=rs.getString(4)%></td>
          <td><%=rs.getString(5)%></td>
          <td><%=rs.getString(6)%></td>
          <td><%=rs.getString(7)%></td>
          <td><%=rs.getString(8)%></td>
          <td><%=rs.getString(9)%></td>
          
        </tr>
        <%
          }
         }
          catch(Exception e)
         {
              out.println(e);
         }
      %>
      </tbody>
      
    </table>
  </form>
  </div>
</section>

</div>
      
       <div id="Berlin" class="w3-container w3-border city" style="display:none">
<main class="my-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Edit result</div>
                        <div class="card-body">
                            <form name="my-form" onsubmit="return validform()"  method="post" action="edit.jsp">

                                <div class="form-group row">
                                    <label for="user_name" class="col-md-4 col-form-label text-md-right">Roll Number</label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" name="rollno"  >
                                    </div>
                                </div>
                              
                                    <div class="col-md-6 offset-md-4">
                                        <button type="submit" class="btn btn-primary" name="search">
                                        Search
                                        </button>
                                    </div>
                                </div>
                      
                            </form>
                        </div>
                    </div>
            </div>
        </div>
    </div>
   
 <div id="London2" class="w3-container w3-border city" style="display:none">
<main class="my-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Delete Student</div>
                        <div class="card-body">
                            <form name="my-form" onsubmit="return validform()"  method="post" action="delete.jsp">

                                <div class="form-group row">
                                    <label for="user_name" class="col-md-4 col-form-label text-md-right">Roll Number</label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" name="rollno"  >
                                    </div>
                                </div>
                              
                                    <div class="col-md-6 offset-md-4">
                                        <button type="submit" class="btn btn-primary" name="search">
                                        Search
                                        </button>
                                    </div>
                                </div>
                      
                            </form>
                        </div>
                    </div>
            </div>
        </div>
    </div>
</main>
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
                 String course = request.getParameter("course");
                 String branch = request.getParameter("branch");
                 String rollno = request.getParameter("rollno");
                 String name = request.getParameter("name");
                 String fatherName = request.getParameter("fatherName");
                 String gender = request.getParameter("gender");
                 
                 String sql = "exec sp_addNewStudent ?,?,?,?,?,?";   
                 pst = conn.prepareStatement(sql); 
                 pst.setString(1, course);
                 pst.setString(2, branch);
                 pst.setString(3, rollno);
                 pst.setString(4, name);
                 pst.setString(5, fatherName);
                 pst.setString(6, gender);
                  int i =  pst.executeUpdate();
                  if(i==1)
                  {
                       %>
                         <script> alert("Added Successfully!!!");</script>
                           <%
                               response.sendRedirect("adminHome.jsp");
                  }
                 else
                  {
                         %>
                         <script> alert("failed!!!");</script>
                           <%
                               response.sendRedirect("adminHome.jsp");
                  }
               
              }
        }
        catch(Exception e)
        {
                
        }

%>

<%
           try
            {
                 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); 
                 Connection conn=DriverManager.getConnection("jdbc:sqlserver://VENGAT;encrypt=true;TrustServerCertificate=true;databaseName=college","college","admin");
                 PreparedStatement pst = null;
                 
                 if(request.getParameter("result")!=null)
                 {
                    String rollno = request.getParameter("rollno");
                    String physics = request.getParameter("physics");
                    String chemistry = request.getParameter("chemistry");
                    String mathematics = request.getParameter("mathematics");
                    String electrical = request.getParameter("electrical");
                    String electronic = request.getParameter("electronic");
                    String chemistrylab = request.getParameter("chemistrylab");
                    String physicslab = request.getParameter("physicslab");
                    
                     String sql = "exec sp_result ?,?,?,?,?,?,?,?";   
                     pst = conn.prepareStatement(sql); 
                     pst.setString(1, rollno);
                     pst.setString(2, physics);
                     pst.setString(3, chemistry);
                     pst.setString(4, mathematics);
                     pst.setString(5, electrical);
                     pst.setString(6, electronic);
                     pst.setString(7, chemistrylab);
                     pst.setString(8, physicslab);
                     
                     int a = pst.executeUpdate();
                     if(a==1)
                  {
                       %>
                         <script> alert(" Result Added!!!");</script>
                           <%
                               response.sendRedirect("adminHome.jsp");
                  }
                 else
                  {
                         %>
                         <script> alert("failed!!!");</script>
                           <%
                               response.sendRedirect("adminHome.jsp");
                  }
                }
            }
          catch(Exception e)
            {
             
              }

%>

 
 
                 
                 
    
             