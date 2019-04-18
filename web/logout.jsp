<%-- 
    Document   : logout
    Created on : 17 Feb, 2019, 7:02:19 PM
    Author     : sachin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>t
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
