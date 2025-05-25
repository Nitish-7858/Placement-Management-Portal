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
 

   Class.forName("oracle.jdbc.driver.OracleDriver");
    con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "123456789");
 
 
stmt=con.createStatement();

xx="select * from studreg  ";
 
res=stmt.executeQuery(xx); %>
<center>
    <h1>All Registered Students </h1><br>
<table border=1 bgcolor="pink">
<tr>
<th>NAME</th>
<th>COURSE</th>
<th>DEPARTMENT</th>
<th>SEMESTER</th>
<th>ENROLLMENT</th>
<th>SESSION</th>
<th>GENDER</th>
<th>DATE OF BIRTH</th>
<th>PHONE</th>
<th>EMAIL</th>
<th>ADDRESS</th>
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

<style>
    h1{
      background: linear-gradient(90deg,#4b6cb7,#c576cb);
      background-clip: text;
      color: transparent;
    }
    table{
      background-color: rgba(227, 227, 65, 0.712);
      text-align: center;
      width: 80%;
      height: 30%;
    }
    tr:hover{
      background-color: rgba(69, 84, 244, 0.829);
      color: whitesmoke;
    }
    </style>
</body></html>
