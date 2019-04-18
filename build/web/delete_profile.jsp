<%-- 
    Document   : delete_profile
    Created on : 6 Mar, 2019, 10:30:50 PM
    Author     : sachin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,javax.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
       session.invalidate();
       response.sendRedirect("index.jsp");
      
      %>
     
      
    </body>
</html>
