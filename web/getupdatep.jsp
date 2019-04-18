<%-- 
    Document   : getupdatep
    Created on : 3 Apr, 2019, 7:44:17 PM
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
                 
            String name=request.getParameter("txtname");
            String gender=request.getParameter("txtgender");
            String dob=request.getParameter("txtdob");
            String address=request.getParameter("txtaddress");
            String phone=request.getParameter("txtmobile");
            String email=request.getParameter("txtemail");
            String expert=request.getParameter("txtexpert");
            String court=request.getParameter("txtcourt");
            String avtime=request.getParameter("txttime");
            
             Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lawyer_hiring_system","root","");
                Statement stmt=con.createStatement();
                int i=stmt.executeUpdate("update lawyer set name='"+name+"',gender='"+gender+"',dob='"+dob+"',address='"+address+"',mobile='"+phone+"',email='"+email+"',expertise='"+expert+"',court='"+court+"',available_time='"+avtime+"' where email='"+email+"'");
                session.setAttribute("name",name);
                if(i>0){
                    out.println("<script type='text/javascript'>alert('data Updated');window.location.href='profile.jsp';</script>");
                    
                }
                else
                {
                  out.println("<script type='text/javascript'>alert('data not updated');window.location.href='index.jsp';</script>");  
                }
            
  %>
    </body>
</html>
