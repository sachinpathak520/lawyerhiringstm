
<%@include file= "header.jsp" %>
<br><br><br><br>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,javax.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <style>
            table {
                border-collapse: collapse;
                width: 100%;
            }

            th, td {
                padding: 5px;
                text-align: left;
                border-bottom: 1px solid #ddd;
            }
            h3{
                color: red; 
            }

        </style>
        <script>
            var value;
            function searchBy(searchdiv, search, val) {
                //alert(searchdiv.id);
                searchdiv = searchdiv.id;
                search = search.id;
                //alert(val);
                value = val;
                document.getElementById(searchdiv).style.setProperty("display", "block");
                if (val === "city")
                    document.getElementById(search).setAttribute("placeholder", "Enter City Name");
                else if (val === "name")
                    document.getElementById(search).setAttribute("placeholder", "Enter Lawyer Name");
                else if (val == "expertise")
                    document.getElementById(search).setAttribute("placeholder", "Enter Expertise");
                else
                    document.getElementById(searchdiv).style.setProperty("display", "none");


            }

            function searchLawyer() {
                searchlawyer = document.getElementById("search").value;
                //alert(searchlawyer);
                if (value === 'city') {

                    var xhr = new XMLHttpRequest();
                    xhr.onreadystatechange = function () {
                        if (xhr.readyState === 4) {
                            document.getElementById(result.id).innerHTML = xhr.responseText;
                        }
                    };
                    xhr.open("get", "searchlowyerbycity.jsp?city=" + searchlawyer, true);
                    xhr.send();
                }
                     if (value === 'name') {

                    var xhr = new XMLHttpRequest();
                    xhr.onreadystatechange = function () {
                        if (xhr.readyState === 4) {
                            document.getElementById(result.id).innerHTML = xhr.responseText;
                        }
                    };
                    xhr.open("get", "searchbyname.jsp?name=" + searchlawyer, true);
                    xhr.send();
                }
                 if (value === 'expertise') {

                    var xhr = new XMLHttpRequest();
                    xhr.onreadystatechange = function () {
                        if (xhr.readyState === 4) {
                            document.getElementById(result.id).innerHTML = xhr.responseText;
                        }
                    };
                    xhr.open("get", "searchbyexpertise.jsp?expertise=" + searchlawyer, true);
                    xhr.send();
                }
            }



        </script>



        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <center>
                <br><br>
                <div class="row" >
                    <div class="col-sm-3">
                        <select class="form-control" onchange="javascript:searchBy(searchdiv, search, this.value)">
                            <option><a href="#">--------Search by-------</a></option>
                            <option value="city"><a href="#" >Search by City</a></option>
                            <option  value="name"><a href="#">Search by Name</a></option>
                            <option value="expertise"><a href="#">Search by Expertise</a></option>
                        </select>


                    </div>
                    <div class="col-sm-3" style="display:none;" id="searchdiv">
                        <input class="form-control" type="text" id="search" name="search" onkeyup="searchLawyer()">
                    </div>
                   

                   
                </div>
                <div class="row" id="searchresult">

                </div>
                <div class="address-right container p-sm-5 p-4" id="result">
                    <table class="table table-striped" border="1" >
                        <tr>
                            <td><h3>Name</h3></td>
                            <td><h3>court</h3></td>
                            <td><h3>Expertise</h3></td>
                            <td><h3>City</h3></td>
                            <td><h3>Available time</h3></td>
                            <td></td>
                        </tr>
                        <%
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lawyer_hiring_system", "root", "");
                            Statement stmt = con.createStatement();
                            ResultSet rs = stmt.executeQuery("select * from lawyer");

                            while (rs.next()) {

                                String name = rs.getString(2);
                                String court = rs.getString(10);
                                String address = rs.getString(5);
                                String expertise = rs.getString(9);
                                String lemail=rs.getString(7);
                                String avtime=rs.getString(11);
                            
                                
                        %>
                         <form action='take_appointment.jsp'>
                             <input type="hidden" name="lemail" value='<%= lemail%>'>
                            <input type="hidden" name="lcity" value='<%= address%>'>
                            
                           
                        <tr><td><%out.println(name); %></td><td><%out.println(court); %></td><td><%out.println(expertise); %></td><td><%out.println(address); %></td><td><%out.println(avtime); %></td><td><button class="btn btn-primary">Take appointment</button></td></tr>

                        </form>

                        <%}%>
                    </table>
                </div>

            </center>
        </div>     

    </body>
</html>
<%@include file= "footer.jsp" %>