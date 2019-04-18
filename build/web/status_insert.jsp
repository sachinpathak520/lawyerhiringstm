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
         
            
        
            String status=request.getParameter("status");
            String email=request.getParameter("email");
           
           
            
            try {
                System.out.print("sachin");
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lawyer_hiring_system", "root", "");
                PreparedStatement stmt = con.prepareStatement("update appointment_history set status=? where lawyer_email=? and user_email=?");
                stmt.setString(1, status);
                stmt.setString(2, (String)session.getAttribute("email"));
                stmt.setString(3, email);
                int i=stmt.executeUpdate();
                   if (i > 0)  
                    {
                        out.println("<script type='text/javascript'>  alert('submit successfull');window.location.href='index.jsp';</script>");
                    } 
                    else  
                    {
                        out.println("<script type='text/javascript'>  alert('submit failed');window.location.href='index.jsp';</script>");
                    }
                
               
            } 
            catch (Exception e) 
            {
                e.printStackTrace();
            }
        %>

    </body>
</html>
