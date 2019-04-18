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
            String date = request.getParameter("date");
            
            
            String time = request.getParameter("time");
            String useremail = (String)session.getAttribute("email");
            String usercity; 
            String userphone;
            String username;
            
            String lawyeremail = request.getParameter("lemail");
            String lawyercity = request.getParameter("lcity");
            String case_type = request.getParameter("case");
            String status="no response";
           
           
            
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lawyer_hiring_system", "root", "");
                Statement stmt = con.createStatement();
                ResultSet s=stmt.executeQuery("select * from user where email='"+useremail+"'");
                s.next();
                       usercity=s.getString(5);
                        userphone=s.getString(6);
                        username=s.getString(2);
                        
                
          
                    int i = stmt.executeUpdate("insert into appointment_history(user_name,user_email,lawyer_email,date,time,user_city,lawyer_city,user_phone,case_type,status) values('"+username+"','"+useremail+"','"+lawyeremail+"','" + date + "','" + time + "','" + usercity + "','" + lawyercity + "','" + userphone + "','" + case_type + "','"+status +"')");
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
