<%@page language="java"%>
<%@page import="java.sql.*"%>
<html>
<head>
</head>
<body>
<%
Connection con=null;
Statement stmt=null;
ResultSet res=null;
String name;
try
{
String  aa=request.getParameter("nm1") ;
String  bb=request.getParameter("nm2");



Class.forName("oracle.jdbc.driver.OracleDriver");
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "123456789");
stmt=con.createStatement();

name="select * from company where email='"+aa+"' and password='"+bb+"'";
 
res=stmt.executeQuery(name);
if(res.next())
{
%>
<jsp:forward page="/company.html"/>
<%
}
else
{
%>
<jsp:forward page="/false.html"/>
<%
}
}
catch(Exception s)
{
out.println(s);
}
con.close();
%>
</body>
</html>