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

<%
    try {

        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lawyer_hiring_system", "root", "");
        
        String sql = "select *from " + session.getAttribute("type") + " where email='" + session.getAttribute("email") + "'";
        PreparedStatement st = con.prepareStatement(sql);
        ResultSet rt = st.executeQuery();
        
        if (rt.next()) {
             
            String name = rt.getString(2);
            String eemail = rt.getString(7);
            String phone = rt.getString(6);
            String gender;
            String address = rt.getString(5);
            String dob = rt.getString(4);
            
            String court = rt.getString(10);
            String expert = rt.getString(9);
            if (rt.getString(3).equals("male")) {
                gender = "male";
            } else {
                gender = "female";
            }
        
                   
%>

<br>
<div class="container py-xl-5 py-lg-3" >
    <br><br><br>
    <h3 class="title text-center text-dark mb-sm-5 mb-4">
                    <span>My Profile Details</span> </h3>
    <div class="row address-row pt-lg-8">
        <div class="col-lg-10">
            <div class="address-right p-sm-5 p-4">
                <center>
                    <table class="table table-striped">
                        
                        <tr><td><h3>Name</h3></td><td><%out.println(name); %></td></tr>
                        <tr><td><h3>Email</h3></td><td><%out.println(eemail); %></td></tr>
                        <tr><td><h3>Mobile No.</h3></td><td><%out.println(phone); %></td></tr>
                        <tr><td><h3>Gender</h3></td><td><%out.println(gender); %></td></tr>
                        <tr><td><h3>Address</h3></td><td><%out.println(address); %></td></tr>
                        <tr><td><h3>Date of Birth</h3></td><td><%out.println(dob); %></td></tr>
                        <tr><td><h3>Court</h3></td><td><%out.println(court); %></td></tr>
                        <tr><td><h3>Expertise</h3></td><td><%out.println(expert); %></td></tr>
                      
                        
                        <tr><td><a href="update_profile.jsp"><button class="btn btn-primary">Update</button></td><td><a href="delete_profile.jsp"><button class="btn btn-danger">Delete Account</button></a></td></tr>
                        
                       
                    </table>
                </center>
            </div>
        </div>
    </div>
</div>					



<%} else {
            out.println("<center><br><br><br><br><br><br><h3 class='h3' style='color:red'>Please Login Or Register for View Profile</h3></center>");
        }
    }
     
    catch (Exception e) {
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
<%@include file= "footer.jsp" %>