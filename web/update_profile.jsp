<%@include file= "header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,javax.sql.*"%>
<%
   String email=(String)session.getAttribute("email");
   out.print(email);    
     Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lawyer_hiring_system", "root", "");
   PreparedStatement stmt = con.prepareStatement("SELECT * FROM lawyer where email=?");
    stmt.setString(1,email);
   // Statement st=con.createStatement();
    
    ResultSet rs = stmt.executeQuery();
    rs.next();
    System.out.print("email="+email);
   
%>
<div class="container py-xl-5 py-lg-3" >

    <h3 class="title text-dark mb-sm-5 mb-4">	

        <div class="row address-row pt-lg-8">
            <div class="col-lg-10">
                <div class="address-right p-sm-5 p-4">
                    <center>
                        <table>
                            <form action="getupdatep.jsp" method="post">
                                <center>
                                    <table border="1">
                                        <tr><td style="color:red">Name</td><td><input type="text" value="<%=rs.getString(2)%>" name="txtname"/></td></tr>
                                      
                                        <tr><td style="color:red">Email</td><td><input type="text"value=<%=rs.getString(7)%> name="txtemail"/></td></tr>
                                        <tr><td style="color:red">Mobile No.</td><td><input type="text" value=<%=rs.getString(6)%> name="txtmobile"/></td></tr>
                                       <tr><td style="color:red">Gender</td><td><input type="text" value=<%=rs.getString(3)%> name="txtgender"/></td></tr>
                                        <tr><td style="color:red">Address</td><td><input type="text" value=<%=rs.getString(5)%> name="txtaddress"/></td></tr>

                                        <tr><td style="color:red">Date of birth</td><td><input type="text" value=<%=rs.getString(4)%> name="txtdob"/></td></tr>
                                        <tr><td style="color:red">expertise</td><td><input type="text" value="<%=rs.getString(9)%>" name="txtexpert"/></td></tr>
                                        <tr><td style="color:red">court</td><td><input type="text" value="<%=rs.getString(10)%>" name="txtcourt"/></td></tr>
                                        <tr><td style="color:red">Available time</td><td><input type="text" value="<%=rs.getString(11)%>" name="txttime"/></td></tr>
                                            
                                    
                     
    
                              <tr><td></td><td><a href="getupdatep.jsp"><button class="btn btn-success">Update</button></td></tr>
                               
                                </center>
                                <input type="hidden" name="hf" value=<%=rs.getString(1)%>
                                       <br><br><br><br>
                                </table>
                                </center>
                                </div>
                                </div>
                                </div>
                                </div>
                                <%@include file= "footer.jsp" %>
