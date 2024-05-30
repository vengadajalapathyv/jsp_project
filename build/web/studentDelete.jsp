<%@page import="java.sql.*"%>

<%
      try
      {      
             String delete=request.getParameter("delete");
             Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); 
              Connection conn=DriverManager.getConnection("jdbc:sqlserver://VENGAT;encrypt=true;TrustServerCertificate=true;databaseName=college","college","admin");
              PreparedStatement pst = null;
              if(request.getParameter("delete")!=null){          
              String sql = "exec sp_delete ";   
              pst=conn.prepareStatement(sql);
             int i = pst.executeUpdate();         
              if(i==1)
              {
              %><script>alert("Deleted Successfully");</script><%
              }
               response.sendRedirect("adminHome.jsp");  
   }

}
      
      catch(Exception e)
      {
        out.println(e);
       }
%>