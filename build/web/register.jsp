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
            String name = request.getParameter("name");
            String gender = request.getParameter("Who");
            String dob = request.getParameter("dob");
            String address = request.getParameter("address");
            String mobile = request.getParameter("mobile");
            String email = request.getParameter("email");
            String pass = request.getParameter("password");
            String type = request.getParameter("type");
            String avtime="null";

            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lawyer_hiring_system", "root", "");
                Statement stmt = con.createStatement();
                if (type.equals("Lawyer")) {
                    int i = stmt.executeUpdate("insert into lawyer(name,gender,dob,address,mobile,email,pass,available_time)values('" + name + "','" + gender + "','" + dob + "','" + address + "','" + mobile + "','" + email + "','" + pass + "','" + avtime + "')");
                    if (i > 0) {
                        out.println("<script type='text/javascript'> window.location.href='index.jsp';</script>");
                    } else {
                        out.println("<script type='text/javascript'> window.location.href='index.jsp';</script>");
                    }
                } else {
                    int i = stmt.executeUpdate("insert into user(name,gender,dob,address,mobile,email,pass)values('" + name + "','" + gender + "','" + dob + "','" + address + "','" + mobile + "','" + email + "','" + pass + "')");
                    if (i > 0) {
                        out.println("<script type='text/javascript'> alert('registered');window.location.href='index.jsp';</script>");
                    } else {
                        out.println("<script type='text/javascript'> alert('failed');window.location.href='index.jsp';</script>");
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>

    </body>
</html>
