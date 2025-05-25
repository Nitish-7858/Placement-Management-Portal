<%@ page import="java.io.*, java.sql.*, javax.servlet.http.Part" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>

<html>
<head>
    <title>Image Upload</title>
</head>
<body>
  

    <%
        if (request.getMethod().equalsIgnoreCase("post")) {
            Part filePart = request.getPart("image");
            String fileName = filePart.getSubmittedFileName();
            String savePath = application.getRealPath("/") + "uploads/" + fileName;

            File fileSaveDir = new File(application.getRealPath("/") + "uploads/");
            if (!fileSaveDir.exists()) {
                fileSaveDir.mkdirs();
            }

            filePart.write(savePath);

            // Save to database
            try {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "123456789");
                PreparedStatement pst = con.prepareStatement("INSERT INTO images (image_name, image_path) VALUES (?, ?)");
                pst.setString(1, fileName);
                pst.setString(2, "uploads/" + fileName);
                pst.executeUpdate();
                con.close();
                out.println("<p>File Uploaded Successfully!</p>");
            } catch (Exception e) {
                e.printStackTrace();
                out.println("<p>Error: " + e.getMessage() + "</p>");
            }
        }
    %>
</body>
</html>