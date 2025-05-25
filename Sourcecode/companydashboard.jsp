<%@page language="java"%>
<%@page import="java.sql.*"%>
<html>
    <body>
        <%
Connection con=null;
Statement stmt=null;
ResultSet res=null;
String xx;
try
{
  String  s1=request.getParameter("nm1") ;
  String  s2=request.getParameter("nm2");

   Class.forName("oracle.jdbc.driver.OracleDriver");
    con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "123456789");
 
 
stmt=con.createStatement();

xx="select * from company ";
 
res=stmt.executeQuery(xx); %>
<center>
  <h1>All Registered Companies </h1><br>
<table border=1>
<tr>
  <th>COMPANY NAME</th>
  <th>COMPANY TAN NUMBER</th>
  <th>YEAR OF ESTABLISHMENT</th>
  <th>COMPANY CEO</th>
  <th>HEAD OFFICE</th>
  <th>PHONE NUMBER</th>
  <th>EMAIL</th>
  <th>NO OF EMPLOYEES</th>
  <th>NO OF BRANCHES</th>
  <th>ADDRESS</th>
  <th>WEBSITE</th>
  <th>PASSWORD</th>

 
</tr>
<% while(res.next())
{ %>

<tr>
<td><%=res.getString(1)%></td>
<td><%=res.getString(2)%></td>
<td><%=res.getString(3)%></td>
<td><%=res.getString(4)%></td>
<td><%=res.getString(5)%></td>
<td><%=res.getString(6)%></td>
<td><%=res.getString(7)%></td>
<td><%=res.getString(8)%></td>
<td><%=res.getString(9)%></td>
<td><%=res.getString(10)%></td>
<td><%=res.getString(11)%></td>
<td><%=res.getString(12)%></td>
</tr>
<%
}
}
catch(ClassNotFoundException e)
{

}
%>

 </table></center>

 
<style>
  h1{
    background: linear-gradient(90deg,#4b6cb7,#182848);
    background-clip: text;
    color: transparent;
  }
  table{
    background-color: skyblue;
    text-align: center;
    width: 50%;
    height: 30%;
  }
  tr:hover{
    background-color: rgba(69, 84, 244, 0.829);
    color: whitesmoke;
  }
</style>
</body></html>
