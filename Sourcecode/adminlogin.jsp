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
String  username=request.getParameter("nm1") ;
String  password=request.getParameter("nm2");


if(username.equals("admin") && password.equals("12345"))
{
%>
<jsp:forward page="/admindash.html"/>
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