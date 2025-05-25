<%@ page language="java" import="java.net.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<html>
<body>
<% 
String s1 = request.getParameter("nm1");
String s2 = request.getParameter("nm2");
String s3 = request.getParameter("nm3");
String s4 = request.getParameter("nm4");
String s5 = request.getParameter("nm5");
String s6 = request.getParameter("nm6");
String s7 = request.getParameter("nm7");
String s8 = request.getParameter("nm8");
String s9 = request.getParameter("nm9");
String s10 = request.getParameter("nm10");
String s11 = request.getParameter("nm11");
String s12 = request.getParameter("nm12");
Connection con = null;
Statement s = null;
try
{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "123456789");


PreparedStatement ps = con.prepareStatement("update studreg set course='"+s2+"',department='"+s3+"',semester='"+s4+"',enrollment='"+s5+"',sessions='"+s6+"',gender='"+s7+"',dob='"+s8+"',phone='"+s9+"',email='"+s10+"',address='"+s11+"',password='"+s12+"'  where name='"+s1+"'");
 
 
ps.executeUpdate();
}
catch(Exception se){out.println(se);}
con.close();
%>
<p style="background: linear-gradient(red,blue);background-clip: text;color: transparent;font-size: 50px;margin-top: 60px;text-align: center;"> your record have been updated succefully</p>
</body>
</html>