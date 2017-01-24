<%-- 
    Document   : Db
    Created on : 20 Jun, 2016, 1:07:28 PM
    Author     : Shantanu PC
--%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style_db2.css" rel="stylesheet" type="text/css"/>
        <title>Confirmation page</title>
    </head>
    <body><div class="header1">
        <div class="header">
<img src="nic.jpe"  width="450"  height="120" alt="nic"/>
    <h2>National Informatics Centre </h2>
    <h4>Government of India</h4>
</div>
            <div class="date">Date of registration- <div style="display:inline"id="displayDate"> </div> </div></div>
   <script>
window.onload = function()
{
defaultDate();
}
function defaultDate()
{
var today = new Date();
document.getElementById("displayDate").innerHTML = [today.getDate(), today.getMonth()+1,today.getFullYear()].join('/');}
   </script>
        <% 
String DB_URL = "jdbc:postgresql://localhost:5432/postgres";

   //  Database credentials
  
    String USER = "postgres";
    String PASS = "sona@2406";
    Connection conn = null;
   Statement stmt = null;
   String first=request.getParameter("first");
 try{
Class.forName("org.postgresql.Driver");
      //STEP 3: Open a connection
     
      conn = DriverManager.getConnection(DB_URL, USER, PASS);
    
      
      //STEP 4: Execute a query

      stmt = conn.createStatement();
      String last=request.getParameter("last");
      String gender=request.getParameter("gender");
      String dob=request.getParameter("dob");
      String address=request.getParameter("address");
      String city=request.getParameter("city");
      String state=request.getParameter("state");
      String nation=request.getParameter("nation");
      String email=request.getParameter("email");
      String phone=request.getParameter("phone");
      String dep=request.getParameter("dep");
      String college=request.getParameter("college");
      String sem=request.getParameter("sem");
      double cgpa=Double.parseDouble(request.getParameter("cgpa"));
      String yearX=request.getParameter("yearX");
      double classX=Double.parseDouble(request.getParameter("classX"));
      String yearXII=request.getParameter("yearXII");
     double classXII=Double.parseDouble(request.getParameter("classXII"));
      Date date = new Date();
   String date1=date.toString();
      String sql = "INSERT INTO registration VALUES('"+first+"','"+last+"','"+gender+"','"+dob+"','"+address+"','"+city+"','"+state+"','"+nation+"','"+email+"','"+phone+"','"+dep+"','"+college+"','"+sem+"','"+cgpa+"','"+yearX+"','"+classX+"','"+yearXII+"','"+classXII+"','"+date1+"') ";
stmt.executeUpdate(sql);
   }catch(SQLException se){
      //Handle errors for JDBC
      se.printStackTrace();
   }catch(Exception e){
      //Handle errors for Class.forName
      e.printStackTrace();
   }finally{
     
      try{
         if(stmt!=null)
          stmt.close();
      }catch(SQLException se){
      }// do nothing
      try{
         if(conn!=null)
            conn.close();
      }catch(SQLException se){
         se.printStackTrace();
      }//end finally try
 }
        %>
        

        <div class="messege"><br><br><h2> Hello <%=first%>  </h2></div>
        <h3><marquee class="mar">You have been registered successfully!!</marquee></h3>
  <div class="messege">
      <div class="success"> <img src="tick.png" width="80" height="80" alt="tick"/><h4>If you are selected then we will send you an email</h4></div></div>
    </body>
</html>

