<%@page import="java.sql.*"%>
<%
       try
       {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); 
            Connection conn=DriverManager.getConnection("jdbc:sqlserver://VENGAT;encrypt=true;TrustServerCertificate=true;databaseName=college","college","admin");
             PreparedStatement pst = null;
             if(request.getParameter("newresult")!=null)
             {
                 String rollno = request.getParameter("rollno");
                 String physics = request.getParameter("physics");
                 String chemistry = request.getParameter("chemistry");
                 String mathematics = request.getParameter("mathematics");
                 String electrical = request.getParameter("electrical");
                 String electronic = request.getParameter("electronic");
                 String chemistrylab = request.getParameter("chemistrylab");
                 String physicslab = request.getParameter("physicslab");
                 
                 String sql = "exec sp_newresult ?,?,?,?,?,?,?,?";   
                 pst = conn.prepareStatement(sql); 
                 pst.setString(1, rollno);
                 pst.setString(2, physics);
                 pst.setString(3, chemistry);
                 pst.setString(4, mathematics);
                 pst.setString(5, electrical);
                 pst.setString(6, electronic);
                  pst.setString(7, chemistrylab);
                   pst.setString(8, physicslab);
                  int n =  pst.executeUpdate();
                  if(n==1)
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
               out.println(e);
        }

%>
