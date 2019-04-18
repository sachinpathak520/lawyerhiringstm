<%@include file= "header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,javax.sql.*"%>
<!DOCTYPE html>
<div class="container py-xl-5 py-lg-3" >
    <br><br><br>
    <h3 class="title text-dark mb-sm-5 mb-4"><br>	
        <center>  <span>&nbsp;Take appointment</span></h3></center>
<div class="row address-row pt-lg-8">
    <div class="col-lg-10">
        <div class="address-right p-sm-5 p-4">
            <form action="appointment_insert.jsp" method="POST">
                <center>
                     <table>
                       
                         <input type='hidden' name="lemail" value='<%=request.getParameter("lemail")%>'>
                         <input type='hidden' name="lcity" value='<%=request.getParameter("lcity")%>'>
                        
                         
                      <select name="case" class="form-control">
                          
                            <option >-----------------------------------------------------------------Select case----------------------------------------------------------------------------</a></option>
                            <option value="civil case" >civil case</option>
                            <option  value="family case" >family case</option>
                            <option value="criminal case" >criminal case</option>
                            <option value="bail application">bail application</option>
                            
                        </select>
                     
                      <tr><td><h3>Time</h3></td><td><input type="time" class="form-control" name="time" placeholder="" required=""></td></tr>
                      <tr><td><h3>Date</h3></td><td><input type="date" class="form-control" name="date" placeholder="" required=""></td></tr>
                      <br><br>
                      <tr><td><button  class="btn btn-primary">Submit</button></td></tr>
                  </table>
          
              </center>                                  
          </form>

      </div>
  </div>
</div>
</div>					
<%@include file= "footer.jsp" %>