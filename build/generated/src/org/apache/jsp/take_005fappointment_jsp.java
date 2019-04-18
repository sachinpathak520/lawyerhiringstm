package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import javax.sql.*;

public final class take_005fappointment_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/header.jsp");
    _jspx_dependants.add("/footer.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Lawyer Hiring System</title>\n");
      out.write("        <!-- Meta tag Keywords -->\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <meta charset=\"UTF-8\" />\n");
      out.write("        <script>\n");
      out.write("            addEventListener(\"load\", function () {\n");
      out.write("                setTimeout(hideURLbar, 0);\n");
      out.write("            }, false);\n");
      out.write("\n");
      out.write("            function hideURLbar() {\n");
      out.write("                window.scrollTo(0, 1);\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("        <!--// Meta tag Keywords -->\n");
      out.write("\n");
      out.write("        <!-- Custom-Files -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.css\">\n");
      out.write("        <!-- Bootstrap-Core-CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/smoothbox.css\" type='text/css' media=\"all\" />\n");
      out.write("        <!-- gallery light box -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\" type=\"text/css\" media=\"all\" />\n");
      out.write("        <!-- Style-CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/fontawesome-all.css\">\n");
      out.write("        <!-- Font-Awesome-Icons-CSS -->\n");
      out.write("        <!-- //Custom-Files -->\n");
      out.write("\n");
      out.write("        <!-- Web-Fonts -->\n");
      out.write("        <link href=\"//fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i&amp;subset=latin-ext\"\n");
      out.write("              rel=\"stylesheet\">\n");
      out.write("        <link href=\"//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=latin-ext\"\n");
      out.write("              rel=\"stylesheet\">\n");
      out.write("        <!-- //Web-Fonts -->\n");
      out.write("\n");
      out.write("\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!-- header -->\n");
      out.write("        <header style=\"background-color: darkblue\">\n");
      out.write("            <nav class=\"navbar navbar-expand-lg navbar-light py-4\"  >\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <h1>\n");
      out.write("                        <a class=\"navbar-brand\" href=\"index.jsp\">\n");
      out.write("                            <i class=\"fas fa-utensils\"></i>Lawyer Hiring System\n");
      out.write("                        </a>\n");
      out.write("                    </h1>\n");
      out.write("                    <button class=\"navbar-toggler ml-md-auto\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\"\n");
      out.write("                            aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                        <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("                    </button>\n");
      out.write("\n");
      out.write("                    <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\n");
      out.write("\n");
      out.write("                        <ul class=\"navbar-nav mx-auto text-center\">\n");
      out.write("                            <li class=\"nav-item active\">\n");
      out.write("                                <a class=\"nav-link\" href=\"index.jsp\">Home\n");
      out.write("                                    <span class=\"sr-only\">(current)</span>\n");
      out.write("                                </a>\n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"nav-item\">\n");
      out.write("                                <a class=\"nav-link\" href=\"about.jsp\">About us</a>\n");
      out.write("                            </li>\n");
      out.write("                             \n");
      out.write("                            \n");
      out.write("                            \n");
      out.write("                            \n");
      out.write("                            \n");
      out.write("                            \n");
      out.write("                   \n");
      out.write("\n");
      out.write("                          ");

                          try
                          {
                              if(session.getAttribute("type").equals("User")){
                         
      out.write("\n");
      out.write("                            <li class=\"nav-item\">\n");
      out.write("                                <a class=\"nav-link\" href=\"lawyer.jsp\">lawyers</a>\n");
      out.write("                            </li>\n");
      out.write("                         ");

                          }
                          }catch(Exception e)
                          {
                              
                          }
                         
      out.write("\n");
      out.write("                         <li class=\"nav-item\">\n");
      out.write("                                <a class=\"nav-link\" href=\"section.jsp\">IPC sections</a>\n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"nav-item\">\n");
      out.write("                                <a class=\"nav-link\" href=\"contact.jsp\">Contact Us</a>\n");
      out.write("                            </li>\n");
      out.write("                        </ul> \n");
      out.write("\n");
      out.write("                        ");
   if (session.getAttribute("email") == null) {
      out.write("\n");
      out.write("                        <div class=\"forms-w3ls-agilesm text-center mt-lg-0 mt-4\">\n");
      out.write("                            <ul>\n");
      out.write("                                <li class=\"login-list-w3ls d-inline border-right pr-3 mr-3\">\n");
      out.write("                                    <a href=\"#\" class=\"text-white\" data-toggle=\"modal\" data-target=\"#exampleModalCenter1\">Login</a>\n");
      out.write("                                </li>\n");
      out.write("                                <li class=\"login-list-w3ls d-inline\">\n");
      out.write("                                    <a href=\"#\" class=\"text-white\" data-toggle=\"modal\" data-target=\"#exampleModalCenter2\">Register</a>\n");
      out.write("                                </li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                        ");
 } else {
      out.write("\n");
      out.write("                        <div class=\"forms-w3ls-agilesm text-center mt-lg-0 mt-4\">\n");
      out.write("                            <ul>\n");
      out.write("                                <img src=\"images/download.jpg\" height=\"10%\" width=\"10%\">\n");
      out.write("                                <li class=\" d-inline  pr-3 mr-3\">\n");
      out.write("                                    <a href=\"profile.jsp\" class=\"text-white\" >");
      out.print( session.getAttribute("name"));
      out.write("</a>\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <form action=\"logout.jsp\">\n");
      out.write("                                        <button class=\"btn btn-danger\">\n");
      out.write("                                            Logout\n");
      out.write("                                        </button>\n");
      out.write("                                    </form>\n");
      out.write("                                </li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                        ");
 }
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </nav>\n");
      out.write("        </header>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Login & Register code -->\n");
      out.write("\n");
      out.write("        <!-- login -->\n");
      out.write("        <div class=\"modal fade\" id=\"exampleModalCenter1\" tabindex=\"-1\" role=\"dialog\" aria-hidden=\"true\">\n");
      out.write("            <div class=\"modal-dialog modal-dialog-centered\" role=\"document\">\n");
      out.write("                <div class=\"modal-content\">\n");
      out.write("                    <div class=\"modal-header text-center\">\n");
      out.write("                        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("                            <span aria-hidden=\"true\">&times;</span>\n");
      out.write("                        </button>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"modal-body\">\n");
      out.write("                        <div class=\"login px-sm-4 mx-auto mw-100\">\n");
      out.write("                            <h5 class=\"text-center mb-4\">Login Now</h5>\n");
      out.write("                            <form action=\"login.jsp\" method=\"post\">\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <label>Email</label>\n");
      out.write("                                    <input type=\"email\" class=\"form-control\" name=\"email\" placeholder=\"\" required=\"\">\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <label class=\"mb-2\">Password</label>\n");
      out.write("                                    <input type=\"password\" class=\"form-control\" name=\"password\" placeholder=\"\" required=\"\">\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <div class=\"form-group\"><label>Who Are You:</label>\n");
      out.write("                                    <input type=\"radio\" name=\"type\" value=\"Lawyer\"> Lawyer\n");
      out.write("                                    <input type=\"radio\" name=\"type\" value=\"User\"> User\n");
      out.write("                                </div>\n");
      out.write("                                <button type=\"submit\" class=\"btn btn-primary submit mb-4\">Login</button>\n");
      out.write("                                <p class=\"text-center pb-4\">\n");
      out.write("                                    <a href=\"#\">Forgot your password?</a>\n");
      out.write("                                </p>\n");
      out.write("                                <p class=\"text-center pb-4 create-w3ls\">\n");
      out.write("                                    Don't have an account?\n");
      out.write("                                    <a href=\"#\" data-toggle=\"modal\" data-target=\"#exampleModalCenter2\">Create one now</a>\n");
      out.write("                                </p>\n");
      out.write("\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- //login -->\n");
      out.write("        <!-- register -->\n");
      out.write("        <div class=\"modal fade\" id=\"exampleModalCenter2\" tabindex=\"-1\" role=\"dialog\" aria-hidden=\"true\">\n");
      out.write("            <div class=\"modal-dialog modal-dialog-centered\" role=\"document\">\n");
      out.write("                <div class=\"modal-content\">\n");
      out.write("                    <div class=\"modal-header text-center\">\n");
      out.write("                        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("                            <span aria-hidden=\"true\">&times;</span>\n");
      out.write("                        </button>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"modal-body\">\n");
      out.write("                        <div class=\"login px-sm-4 mx-auto mw-100\">\n");
      out.write("                            <h5 class=\"text-center mb-4\">Register Now</h5>\n");
      out.write("                            <form action=\"register.jsp\" method=\"post\">\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <label>Name</label>\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" name=\"name\" placeholder=\"\" required=\"\">\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <label>Gender:</label>\n");
      out.write("                                    <input type=\"radio\" name=\"Who\" value=\"male\"> Male\n");
      out.write("                                    <input type=\"radio\" name=\"Who\" value=\"female\"> Female\n");
      out.write("\n");
      out.write("                                    <br>\n");
      out.write("                                    <label>Age</label>\n");
      out.write("                                    <input type=\"date\" class=\"form-control\" name=\"dob\" placeholder=\"\" required=\"\">\n");
      out.write("                                    <label>Address</label>\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" name=\"address\" placeholder=\"\" required=\"\">\n");
      out.write("                                    <label>Mobile</label>\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" name=\"mobile\" placeholder=\"\" required=\"\">\n");
      out.write("\n");
      out.write("                                    <label>Email</label>\n");
      out.write("                                    <input type=\"email\" class=\"form-control\" name=\"email\" placeholder=\"\" required=\"\">\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <label class=\"mb-2\">Password</label>\n");
      out.write("                                    <input type=\"password\" class=\"form-control\" name=\"password\" id=\"password1\" placeholder=\"\" required=\"\">\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <label>Confirm Password</label>\n");
      out.write("                                    <input type=\"password\" class=\"form-control\" name=\"password\" id=\"password2\" placeholder=\"\" required=\"\">\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"form-group\"><label>Who Are You:</label>\n");
      out.write("                                    <input type=\"radio\" name=\"type\" value=\"Lawyer\"> Lawyer\n");
      out.write("                                    <input type=\"radio\" name=\"type\" value=\"User\"> User\n");
      out.write("                                </div>\n");
      out.write("                                <button type=\"submit\" class=\"btn btn-primary submit mb-4\">Register</button>\n");
      out.write("                                <p class=\"text-center pb-4\">\n");
      out.write("                                    <a href=\"#\">By clicking Register, I agree to your terms</a>\n");
      out.write("                                </p>\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<div class=\"container py-xl-5 py-lg-3\" >\n");
      out.write("    <br><br><br>\n");
      out.write("    <h3 class=\"title text-dark mb-sm-5 mb-4\"><br>\t\n");
      out.write("        <center>  <span>&nbsp;Take appointment</span></h3></center>\n");
      out.write("<div class=\"row address-row pt-lg-8\">\n");
      out.write("    <div class=\"col-lg-10\">\n");
      out.write("        <div class=\"address-right p-sm-5 p-4\">\n");
      out.write("            <form action=\"appointment_insert.jsp\" method=\"POST\">\n");
      out.write("                <center>\n");
      out.write("                    <table>\n");
      out.write("                        <tr><td><h3>Time</h3></td><td><input type=\"time\" class=\"form-control\" name=\"time\" placeholder=\"\" required=\"\"></td></tr>\n");
      out.write("                        <tr><td><h3>Date</h3></td><td><input type=\"date\" class=\"form-control\" name=\"date\" placeholder=\"\" required=\"\"></td></tr>\n");
      out.write("                        <br><br>\n");
      out.write("                        <tr><td><button  class=\"btn btn-primary\">Submit</button></td></tr>\n");
      out.write("                       ");

                      String i= request.getParameter("hf");
                       System.out.println(i);
                       
      out.write("\n");
      out.write("                    </table>\n");
      out.write("                </center>                                  \n");
      out.write("            </form>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("</div>\t\t\t\t\t\n");
      out.write("       <!-- footer -->\n");
      out.write("        <footer class=\"pt-5\">\n");
      out.write("\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("<!-- copyright -->\n");
      out.write("<div class=\"copy_right\" style=\"background-color: darkblue\">\n");
      out.write("    <p class=\"text-center text-white py-sm-4 py-3\">© 2018 Lawyer hiring system. All rights reserved | Design by\n");
      out.write("        <a>Manit Bhopal</a>\n");
      out.write("    </p>\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("<!-- //copyright -->\n");
      out.write("</footer>\n");
      out.write("<!-- //footer -->\n");
      out.write("\n");
      out.write("\n");
      out.write("<!-- Js files -->\n");
      out.write("<!-- JavaScript -->\n");
      out.write("<script src=\"js/jquery-2.2.3.min.js\"></script>\n");
      out.write("<!-- Default-JavaScript-File -->\n");
      out.write("\n");
      out.write("<!-- banner slider -->\n");
      out.write("<script src=\"js/responsiveslides.min.js\"></script>\n");
      out.write("<script>\n");
      out.write("            // You can also use \"$(window).load(function() {\"\n");
      out.write("            $(function () {\n");
      out.write("                // Slideshow 4\n");
      out.write("                $(\"#slider3\").responsiveSlides({\n");
      out.write("                    auto: true,\n");
      out.write("                    pager: true,\n");
      out.write("                    nav: false,\n");
      out.write("                    speed: 500,\n");
      out.write("                    namespace: \"callbacks\",\n");
      out.write("                    before: function () {\n");
      out.write("                        $('.events').append(\"<li>before event fired.</li>\");\n");
      out.write("                    },\n");
      out.write("                    after: function () {\n");
      out.write("                        $('.events').append(\"<li>after event fired.</li>\");\n");
      out.write("                    }\n");
      out.write("                });\n");
      out.write("\n");
      out.write("            });\n");
      out.write("</script>\n");
      out.write("<!-- //banner slider -->\n");
      out.write("\n");
      out.write("<!-- password-script -->\n");
      out.write("<script>\n");
      out.write("    window.onload = function () {\n");
      out.write("        document.getElementById(\"password1\").onchange = validatePassword;\n");
      out.write("        document.getElementById(\"password2\").onchange = validatePassword;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    function validatePassword() {\n");
      out.write("        var pass2 = document.getElementById(\"password2\").value;\n");
      out.write("        var pass1 = document.getElementById(\"password1\").value;\n");
      out.write("        if (pass1 != pass2)\n");
      out.write("            document.getElementById(\"password2\").setCustomValidity(\"Passwords Don't Match\");\n");
      out.write("        else\n");
      out.write("            document.getElementById(\"password2\").setCustomValidity('');\n");
      out.write("        //empty string means no validation error\n");
      out.write("    }\n");
      out.write("</script>\n");
      out.write("<!-- //password-script -->\n");
      out.write("\n");
      out.write("<!-- gallery light box -->\n");
      out.write("<script src=\"js/smoothbox.jquery2.js\"></script>\n");
      out.write("<!-- //gallery light box -->\n");
      out.write("\n");
      out.write("<!-- smooth scrolling -->\n");
      out.write("<script src=\"js/SmoothScroll.min.js\"></script>\n");
      out.write("<!-- //smooth scrolling -->\n");
      out.write("\n");
      out.write("<!-- move-top -->\n");
      out.write("<script src=\"js/move-top.js\"></script>\n");
      out.write("<!-- easing -->\n");
      out.write("<script src=\"js/easing.js\"></script>\n");
      out.write("<!--  necessary snippets for few javascript files -->\n");
      out.write("<script src=\"js/snacks.js\"></script>\n");
      out.write("\n");
      out.write("<script src=\"js/bootstrap.js\"></script>\n");
      out.write("<!-- Necessary-JavaScript-File-For-Bootstrap -->\n");
      out.write("<!-- //Js files -->\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
