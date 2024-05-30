<%@page import="java.sql.*"%>

<%
  try
  {
  
      String rollno = request.getParameter("rollno");
      
     Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); 
     Connection conn=DriverManager.getConnection("jdbc:sqlserver://VENGAT;encrypt=true;TrustServerCertificate=true;databaseName=college","college","admin");
     PreparedStatement pst = null;
     String sql = "exec sp_viewresult ? ";   
     pst = conn.prepareStatement(sql); 
     pst.setString(1, rollno);
      ResultSet rs = pst.executeQuery();
      if(rs.next())
      {
      
%>
<img src="logo.png"  align="left"width="150" height="150">
<center><img src="nct.jpg" width="150" height="150">
<img src="apj sir.png" align="right"  width="150" height="150"></center>
    <a href="view.jsp">Back</a>
  <hr class="new1">
<style>
table{
  width:100%;
  table-layout: fixed;
}
th{
  padding: 20px 15px;
  text-align: left;
  font-weight: 500;
  font-size: 12px;
  color: #fff;
  text-transform: uppercase;
 border: 2px solid rgba(255,255,255,0.3);
}


/* demo styles */

@import url(https://fonts.googleapis.com/css?family=Roboto:400,500,300,700);
body{
  background: -webkit-linear-gradient(left, #25c481, #25b7c4);
  background: linear-gradient(to right, #25c481, #25b7c4);
  font-family: 'Roboto', sans-serif;
}

</style>
  <!--for demo wrap-->
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>institution Name: NCT</th>
          <th>Course Name: <%=rs.getString(2)%></th>
          <th>Branch Name:<%=rs.getString(3)%></th>
          <th><center>RollNo:<%=rs.getString(4)%></center></th>
        </tr>
      </thead>
      <thead>
        <tr>
          <th>Name: <%=rs.getString(5)%></th>
          <th>Father Name: <%=rs.getString(6)%></th>
          <th>Gender: <%=rs.getString(7)%></th>
          <th><a titlt="print screen" alt="print screen" onclick="window.print();" target="_blank" style="cursor:pointer;"><center><img src="print.png"></center></a></th>
        </tr>
      </thead>
    </table>
  </div>
<style>
html {
  font-family:arial;
  font-size: 25px;
}

td {
  border: 2px solid #726E6D;
  padding: 15px;
  color:black;
  text-align:center;
}

thead{
  font-weight:bold;
  text-align:center;
  background: #625D5D;
  color:white;
}

table {
  border-collapse: collapse;
}

.footer {
  text-align:right;
  font-weight:bold;
}

tbody >tr:nth-child(odd) {
  background: #D1D0CE;
}

</style>
<head>
  <hr class="new1">
</head>
<body>
  <table>
    <thead>
      <tr>
        <td colspan="3">Course</td>
        <td rowspan="2">Type</td>
        <td rowspan="2">Full Marks</td>
        <td rowspan="2">Passing Marks</td>
        <td rowspan="2">Obtained Marks</td>
        <td rowspan="2">Pass/Fail</td>
        
      </tr>
      <tr>
        <td>Code </td>
        <td colspan="2"> Name </td>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>NAS101</td>
        <td colspan="2">Engg. Physics-I </td>
        <td>Theory</td>
        <td>100</td>
        <td> 30 </td>
        <td><%=rs.getString(10)%></td>
        <td><%
               if(rs.getInt(10)>=30){
            out.println("Pass");
            }
            else{
            out.println("Fail");
            }
            %></td>
      </tr>
      <tr>
        <td>NAS102</td>
        <td colspan="2">Engg. Chemistry</td>
        <td>Theory</td>
        <td>100</td>
        <td>30</td>
        <td><%=rs.getString(11)%> </td>
        <td><%
               if(rs.getInt(11)>=30){
            out.println("Pass");
            }
            else{
            out.println("Fail");
            }
            %></td>
      </tr>
      <tr>
        <td>NAS103</td>
        <td colspan="2">Engg. Mathematics-I </td>
        <td>Theory</td>
        <td>100</td>
        <td> 30 </td>
        <td> <%=rs.getString(12)%></td>
        <td><%
               if(rs.getInt(12)>=30){
            out.println("Pass");
            }
            else{
            out.println("Fail");
            }
            %></td>
      </tr>
      <tr>
        <td>NEE101</td>
        <td colspan="2">Basic Electrical Engg. </td>
        <td>Theory</td>
        <td>100</td>
        <td> 30 </td>
        <td> <%=rs.getString(13)%></td>
        <td><%
               if(rs.getInt(13)>=30){
            out.println("Pass");
            }
            else{
            out.println("Fail");
            }
            %></td>
      </tr>
      <tr>
        <td>NEC101</td>
        <td colspan="2">Electronic Engg.</td>
        <td>Theory</td>
        <td>100</td>
        <td> 30 </td>
        <td> <%=rs.getString(14)%> </td>
        <td><%
               if(rs.getInt(14)>=30){
            out.println("Pass");
            }
            else{
            out.println("Fail");
            }
            %></td>
      </tr>
      <tr>
        <td>NAS152</td>
        <td colspan="2">Engg. Chemistry Lab</td>
        <td>Practical</td>
        <td>100</td>
        <td>30</td>
        <td> <%=rs.getString(15)%> </td>
        <td><%
               if(rs.getInt(15)>=30){
            out.println("Pass");
            }
            else{
            out.println("Fail");
            }
            %></td>
      </tr>
      <tr>
        <td>NAS151</td>
        <td colspan="2">Engg. Physics Lab</td>
        <td>Practical</td>
        <td>100</td>
        <td>30</td>
        <td> <%=rs.getString(16)%> </td>
        <td><%
               if(rs.getInt(16)>=30){
            out.println("Pass");
            }
            else{
            out.println("Fail");
            }
            %></td>
      </tr>
    </tbody>
    <tfoot>
      <tr>
        <td colspan="4" class="footer">Total Marks</td>
        <td>700</td>
        <td>210</td>
        <td><%int sum=rs.getInt(10)+rs.getInt(11)+rs.getInt(12)+rs.getInt(13)+rs.getInt(14)+rs.getInt(15)+rs.getInt(16); out.println(sum);%> </td>
      </tr>
      <tr>
        <td colspan="4" class="footer">Percentage</td>
        <td colspan="3"><%out.println((sum*100)/700);%></td>
      </tr>
  </table>
    
</body>

<% 
    }

     else{
             response.sendRedirect("errorView.jsp");
          }
}

catch(Exception e)
{
     out.println(e);
  }

%>


