<%@page import="java.util.ArrayList"%>
<%@page import="dto.LawyerDTO"%>
<%@page import="model.LawyerModel"%>
<%@page import="java.sql.SQLException"%>
<%

String search=request.getParameter("city");
ArrayList<LawyerDTO> lawyerList=new ArrayList();
try{
    lawyerList=LawyerModel.searchByCity(search);
    if(lawyerList.size()==0){
       out.print("No Lawyer Found");
   }
   else{
       out.println("<table class='table table-striped'>");
      out.println("<tr style='color:red'><h3><td>Name</td><td>Court</td><td>Expertise</td><td>Address</td></h3><td></td></tr>");
        for(LawyerDTO lawyer:lawyerList){
 
            out.print("<tr><td>"+lawyer.getName()+"</td><td>"+lawyer.getCourt()+"</td><td>"+lawyer.getExpertise()+"</td><td>"+lawyer.getAddress()+"</td><td><a href='take_appointment.jsp'><button class='btn btn-primary'>Take Appointment</button></a></td></tr>");
        }
   out.println("</table>");
   }
}
catch(SQLException ex){
    //ex.printStackTrace();
    out.print("error aayi");
}
   
   
%>
