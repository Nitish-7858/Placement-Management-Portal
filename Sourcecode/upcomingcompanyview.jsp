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

xx="select * from upcompany ";
 
res=stmt.executeQuery(xx); %>
<center>
  <h1>Upcoming Companies Details</h1><br>
<table border=1 >
<tr>
  <th>COMPANY NAME</th>
  <th>CONTACT PERSON</th>
  <th>NUMBER OF VACANCIES</th>
  <th>PACKAGE RANGE</th>
  <th>DATE OF HIRE</th>
  <th>VENUE</th>
  <th>EMAIL</th>
  <th>POST</th>
  <th>QUALIFICATION</th>
  <th>EXAM PATTERN</th>
  <th>APPLY NOW</th>

 
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
<td><a href="apply.html" style="text-decoration: none; color: red;">Apply Now</a></td>
</tr>
<%
}
}
catch(ClassNotFoundException e)
{

}
con.close();
%>

 <style>
    h1{
    background: linear-gradient(90deg,orange,#182848);
    background-clip: text;
    color: transparent;
  }
  table{
    background-color: lightgreen;
    text-align: center;
    width: 90%;
    height: 20%;
  }
  tr:hover{
    background-color: rgba(69, 84, 244, 0.829);
    color: whitesmoke;
  }
 </style> </body></html>
