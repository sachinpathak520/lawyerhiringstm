<%@include file= "header.jsp" %>

<style>
    table {
        border-collapse: collapse;
        width: 100%;
    }

    th, td {
        padding: 8px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }
</style>

<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.net.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<br><br>
<div class="container py-xl-5 py-lg-3" >
    
    <h3 class="title text-center text-dark mb-sm-5 mb-4">
                    <span></span> </h3>
    <div class="row address-row pt-lg-8">
<%
    try {

        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lawyer_hiring_system", "root", "");
        String sql = "select *from appointment_history where user_email='" + session.getAttribute("email") + "'";
        PreparedStatement st = con.prepareStatement(sql,ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
        ResultSet rt = st.executeQuery();
        
        if (rt.next()) {
         rt.previous();
        
         while (rt.next()) {    
            String email = rt.getString(4);
           
            String date = rt.getString(5);
           
            String time = rt.getString(6);
            String city = rt.getString(8);
            
            String casetype = rt.getString(10);
           String status="no response";
        String semail = (String)session.getAttribute("email");
        String sql1 = "select * from appointment_history where user_email='" +semail + "' and lawyer_email='" + email + "'";
        PreparedStatement st1 = con.prepareStatement(sql1,ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
        ResultSet rt1 = st1.executeQuery();
        if(rt1.next())
        {
                
                status = rt1.getString(11);
               
        }
        
    
%>


        <div class="col-lg-10">
            <div class="address-right p-sm-5 p-4">
                <center>
                    <table class="table-striped" border="1">
                        
                     
                        <tr><td><h3>Email</h3></td><td><%out.println(email); %></td></tr>
                       
           
                        <tr><td><h3>Address</h3></td><td><%out.println(city); %></td></tr>
                        <tr><td><h3>Date</h3></td><td><%out.println(date); %></td></tr>
                        <tr><td><h3>Time</h3></td><td><%out.println(time); %></td></tr>
                        <tr><td><h3>Case type</h3></td><td><%out.println(casetype); %></td></tr>
                       <tr><td><h4>Appointment status: </h4></td> 
                       
                       <td style="color:blue"><h4>  <%= status%> </h4></td></tr>
   
                        <tr><td><button  class="btn btn-primary">Cancel Appointment</button></td><td></td></tr>
                   
                        
                        
                      
                       
                    </table>
                </center>
            </div><br><br>
        </div>
 				



<%} }else {
            out.println("<center><br><br><br><br><br><br><h3 class='h3' style='color:red'>There is no appointment history of you.</h3></center>");
        }
        }catch (Exception e) {
        e.printStackTrace();
        out.println(e);
    }
%>

<!--//profile -->
<%
    if (session.getAttribute("type") == null) {
        response.sendRedirect("index.jsp");
    }
%>
   </div>
</div>	
<%@include file= "footer.jsp" %>