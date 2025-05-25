<%@ page language="java" import="java.net.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<html>
<body>
<% 
String s1 = request.getParameter("nm1");
 
Connection con = null;
Statement s = null;
try
{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "123456789");


PreparedStatement ps = con.prepareStatement("delete from company where companyname='"+s1+"'");
 
 
ps.executeUpdate();
}
catch(Exception se){out.println(se);}
con.close();
%>
<p style="background: linear-gradient(red,blue);background-clip: text;color: transparent;font-size: 50px;margin-top: 60px;text-align: center;"> your record have been Deleted succefully</p>
</body>
</html>