<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lawyer Hiring System</title>
        <!-- Meta tag Keywords -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta charset="UTF-8" />
        <script>
            addEventListener("load", function () {
                setTimeout(hideURLbar, 0);
            }, false);

            function hideURLbar() {
                window.scrollTo(0, 1);
            }
        </script>
        <!--// Meta tag Keywords -->

        <!-- Custom-Files -->
        <link rel="stylesheet" href="css/bootstrap.css">
        <!-- Bootstrap-Core-CSS -->
        <link rel="stylesheet" href="css/smoothbox.css" type='text/css' media="all" />
        <!-- gallery light box -->
        <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
        <!-- Style-CSS -->
        <link rel="stylesheet" href="css/fontawesome-all.css">
        <!-- Font-Awesome-Icons-CSS -->
        <!-- //Custom-Files -->

        <!-- Web-Fonts -->
        <link href="//fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i&amp;subset=latin-ext"
              rel="stylesheet">
        <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=latin-ext"
              rel="stylesheet">
        <!-- //Web-Fonts -->


        <title>JSP Page</title>

    </head>
    <body>
        <!-- header -->
        <header style="background-color: darkblue">
            <nav class="navbar navbar-expand-lg navbar-light py-4"  >
                <div class="container">
                    <h1>
                        <a class="navbar-brand" href="index.jsp">
                            <i class="fas fa-utensils"></i>Lawyer Hiring System
                        </a>
                    </h1>
                    <button class="navbar-toggler ml-md-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">

                        <ul class="navbar-nav mx-auto text-center">
                            <li class="nav-item active">
                                <a class="nav-link" href="index.jsp">Home
                                    <span class="sr-only">(current)</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="about.jsp">About us</a>
                            </li>
                             
                            
                            
                            
                            
                            
                   

                          <%
                          try
                          {
                              if(session.getAttribute("type").equals("User")){
                         %>
                           <li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle"  id="navbarDropdown" role="button" data-toggle="dropdown"
							    aria-haspopup="true" aria-expanded="false">
								menu
							</a>
							<div class="dropdown-menu text-lg-left text-center" aria-labelledby="navbarDropdown">
								<a class="dropdown-item " href="lawyer.jsp">Lawyers</a>
								<a class="dropdown-item " href="appointment_status.jsp">Appointment history</a>
								
						</li>
                         <%
                                 
                          }
                              if(session.getAttribute("type").equals("Lawyer")){
                                   %><li class="nav-item">
                                <a class="nav-link" href="appointment_request.jsp">Appointment request</a>
                            </li>
 
                         <%}
                                   
                          }
                          catch(Exception e)
                          {
                              
                          }
                         %>
                         
                         
                         
                         
          
                         
                         
                         
                         
                         <li class="nav-item">
                                <a class="nav-link" href="section.jsp">IPC sections</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="contact.jsp">Contact Us</a>
                            </li>
                        </ul> 

                        <%   if (session.getAttribute("email") == null) {%>
                        <div class="forms-w3ls-agilesm text-center mt-lg-0 mt-4">
                            <ul>
                                <li class="login-list-w3ls d-inline border-right pr-3 mr-3">
                                    <a href="#" class="text-white" data-toggle="modal" data-target="#exampleModalCenter1">Login</a>
                                </li>
                                <li class="login-list-w3ls d-inline">
                                    <a href="#" class="text-white" data-toggle="modal" data-target="#exampleModalCenter2">Register</a>
                                </li>
                            </ul>
                        </div>
                        <% } else {%>
                        <div class="forms-w3ls-agilesm text-center mt-lg-0 mt-4">
                            <ul>
                                <img src="images/download.jpg" height="10%" width="10%">
                                <%if(session.getAttribute("type").equals("Lawyer"))
                                {%>
                                <li class=" d-inline  pr-3 mr-3">
                                    <a href="profile.jsp" class="text-white" ><%= session.getAttribute("name")%></a>
                                </li>
                                <%}
                                else{%>
                                <li class=" d-inline  pr-3 mr-3">
                                    <a href="userprofile.jsp" class="text-white" ><%= session.getAttribute("name")%></a>
                                </li>
                                
                                <%}%>
                                <li>
                                    <form action="logout.jsp">
                                        <button class="btn btn-danger">
                                            Logout
                                        </button>
                                    </form>
                                </li>
                            </ul>
                        </div>
                        <% }%>


                    </div>
                </div>
            </nav>
        </header>


        <!-- Login & Register code -->

        <!-- login -->
        <div class="modal fade" id="exampleModalCenter1" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header text-center">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="login px-sm-4 mx-auto mw-100">
                            <h5 class="text-center mb-4">Login Now</h5>
                            <form action="login.jsp" method="post">
                                <div class="form-group">
                                    <label>Email</label>
                                    <input type="email" class="form-control" name="email" placeholder="" required="">
                                </div>
                                <div class="form-group">
                                    <label class="mb-2">Password</label>
                                    <input type="password" class="form-control" name="password" placeholder="" required="">
                                </div>

                                <div class="form-group"><label>Who Are You:</label>
                                    <input type="radio" name="type" value="Lawyer"> Lawyer
                                    <input type="radio" name="type" value="User"> User
                                </div>
                                <button type="submit" class="btn btn-primary submit mb-4">Login</button>
                                <p class="text-center pb-4">
                                   
                                </p>
                                <p class="text-center pb-4 create-w3ls">
                                    Don't have an account?
                                    <a href="#" data-toggle="modal" data-target="#exampleModalCenter2">Create one now</a>
                                </p>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- //login -->
        <!-- register -->
        <div class="modal fade" id="exampleModalCenter2" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header text-center">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="login px-sm-4 mx-auto mw-100">
                            <h5 class="text-center mb-4">Register Now</h5>
                            <form action="register.jsp" method="post">
                                <div class="form-group">
                                    <label>Name</label>
                                    <input type="text" class="form-control" name="name" placeholder="" required="">
                                </div>
                                <div class="form-group">
                                    <label>Gender:</label>
                                    <input type="radio" name="Who" value="male"> Male
                                    <input type="radio" name="Who" value="female"> Female

                                    <br>
                                    <label>Date of birth</label>
                                    <input type="date" class="form-control" name="dob" placeholder="" required="">
                                    <label>Address</label>
                                    <input type="text" class="form-control" name="address" placeholder="" required="">
                                    <label>Mobile</label>
                                    <input type="text" class="form-control" name="mobile" placeholder="" required="">

                                    <label>Email</label>
                                    <input type="email" class="form-control" name="email" placeholder="" required="">
                                </div>

                                <div class="form-group">
                                    <label class="mb-2">Password</label>
                                    <input type="password" class="form-control" name="password" id="password1" placeholder="" required="">
                                </div>

                                <div class="form-group">
                                    <label>Confirm Password</label>
                                    <input type="password" class="form-control" name="password" id="password2" placeholder="" required="">
                                </div>
                                <div class="form-group"><label>Who Are You:</label>
                                    <input type="radio" name="type" value="Lawyer"> Lawyer
                                    <input type="radio" name="type" value="User"> User
                                </div>
                                <button type="submit" class="btn btn-primary submit mb-4">Register</button>
                                <p class="text-center pb-4">
                                    <a href="#">By clicking Register, I agree to your terms</a>
                                </p>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>