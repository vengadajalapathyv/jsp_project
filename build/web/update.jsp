<%@page import="java.sql.*"%>
<%
       try
       {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); 
            Connection conn=DriverManager.getConnection("jdbc:sqlserver://VENGAT;encrypt=true;TrustServerCertificate=true;databaseName=college","college","admin");
             PreparedStatement pst = null;
             if(request.getParameter("update")!=null)
             {
                 String course = request.getParameter("course");
                 String branch = request.getParameter("branch");
                 String rollno = request.getParameter("rollno");
                 String name = request.getParameter("name");
                 String fatherName = request.getParameter("fatherName");
                 String gender = request.getParameter("gender");
                 
                 String sql = "exec sp_update ?,?,?,?,?,?";   
                 pst = conn.prepareStatement(sql); 
                 pst.setString(1, course);
                 pst.setString(2, branch);
                 pst.setString(3, rollno);
                 pst.setString(4, name);
                 pst.setString(5, fatherName);
                 pst.setString(6, gender);
                  int b =  pst.executeUpdate();
                  if(b==1)
                  {
                       %>
                         <script> alert("Updated Successfully!!!");</script>
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
