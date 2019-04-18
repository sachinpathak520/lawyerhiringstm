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
            String email = request.getParameter("email");
            String pass = request.getParameter("password");
            String type = request.getParameter("type");
            System.out.println(email + pass + type + "sachin pathakoqu3i8 qiuq34t 3vt58uyq");

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lawyer_hiring_system", "root", "");
            Statement stmt = con.createStatement();
            session=request.getSession();
            if (type.equals("Lawyer")) {
                ResultSet rs = stmt.executeQuery("select * from lawyer where email='" + email + "'and pass='" + pass + "'");

                if (rs.next()) {
                    
                    String name = rs.getString(2);
                    session.setAttribute("email", email);
                  
                    session.setAttribute("type", type);
                    session.setAttribute("name", name);
                    out.println("<script type='text/javascript'>alert('login successfull');window.location.href='index.jsp';</script>");
                } else {
                    out.println("<script type='text/javascript'>alert('login failed');window.location.href='index.jsp';</script>");
                }
            } else {

                ResultSet rs = stmt.executeQuery("select * from user where email='" + email + "'and pass='" + pass + "'");

                if (rs.next()) {
                    String name = rs.getString(2);
                    session.setAttribute("email", email);
                   
                    session.setAttribute("name", name);
                    session.setAttribute("type", type);
                    out.println("<script type='text/javascript'>alert('login successfull');window.location.href='index.jsp';</script>");
                } else {
                    out.println("<script type='text/javascript'>alert('login failed');window.location.href='index.jsp';</script>");
                }
            }
        %>
    </body>
</html>
