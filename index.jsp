<%-- 
    Document   : index
    Created on : 19 Jun, 2016, 11:12:41 AM
    Author     : Shantanu PC
--%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="style1.css" rel="stylesheet" type="text/css">
        <title>National Informatics Centre-Registration</title>
        
    </head>
    <script src="Javacript.js"></script>
    <body>
<div class="header">
<img src="nic.jpe"  width="450"  height="120" alt="nic"/>
    <h2>National Informatics Centre </h2>
    <h4>Government of India</h4>
</div>
        <div class="date"><label>Date of registration- <label><div style="display:inline"id="displayDate"> </div> </div>
     <h1>Student registration</h1>
   <script>
window.onload = function()
{
defaultDate();
}
function defaultDate()
{
var today = new Date();
document.getElementById("displayDate").innerHTML = [today.getDate(), today.getMonth()+1,today.getFullYear()].join('/');}
   </script> <br><br><br><br><br><br>
   <div class="mar"><marquee>SUMMER TRAINING PROGRAM 2016</marquee></div>
   <form name="myform"action="Db.jsp" method="POST" onsubmit="return(fnamevalidate()&&lnamevalidate()&&validate('address','address1')&&validate('city','city1')&&validate('state','state1')&&validate('nation','nation1')&&validate('dep','dep1')&&validate('college','college1')&&validateEmail()&&phonenumber1()&&cgpavalidate()&&yearXvalidate1()&&classXvalidate()&&yearXIIvalidate1()&&classXIIvalidate());">
              <h3>1. Personal Information</h3><div class="person">
            <label for="first"> Firstname:</label> <input type="text" onkeyup="fnamevalidate()" onblur="fnamevalidate()" id="first" name="first" value="" size="50" autocomplete="off" />
             <div style="display:inline"id="name1"> </div>
            <br><br>   <label for="last"> Lastname: </label><input type="text" id="last" onkeyup="lnamevalidate()" onblur="lnamevalidate()" name="last" value="" size="50" autocomplete="off"/>
          <div style="display:inline"id="name2"> </div>
           <br><br>
           <label>Gender:</label><input class="radio" type="radio" id="male" name="gender" value="male"required /><label for="male">Male</label>
           <input type="radio" class="radio" name="gender" id="female" value="female" required/><label for="female">Female</label>
           <input type="radio" class="radio" name="gender" id="others" value="others" required/><label for="others">Others</label>
                <br><br>
                <label for="dob">Date Of Birth: </label><input type="date" id="dob" name="dob" placeholder="DD/MM/YYYY" value="" size="50" autocomplete="off" required/>
                     <br><br>
                     <table border="0">
                     
                                 <tr>
                                     <td><label for="address">Address: </label></td>
                                     <td><textarea id="address" onkeyup="vali('address','address1')" onblur="validate('address','address1')" name="address" rows="6" cols="50" autocomplete="off"/></textarea></td>
                                 </tr>                          
                     </table>
                         &nbsp;<div style="position:absolute;top:680px;left:600px;"id="address1"></div>
            <br><br>
            <label for="city">City:</label>
           <input type="text" name="city" onkeyup="vali('city','city1')" onblur="validate('city','city1')" id="city" value="" size="50" autocomplete="off" />&nbsp;<div style="display:inline"id="city1"></div>
           <br><br>
           <label for="state">State:</label>
           <input type="text" onkeyup="vali('state','state1')" onblur="validate('state','state1')"name="state" id="state" value="" size="50" autocomplete="off"/>&nbsp;<div style="display:inline"id="state1"></div>
            <br><br>
            <label for="nation">Nationality: </label><input type="text"  onkeyup="vali('nation','nation1')" onblur="validate('nation','nation1')"id="nation" name="nation" value="" size="50" autocomplete="off"/>&nbsp;<div style="display:inline"id="nation1"></div>
                 <br><br>
                  <label for="email">Email:</label><input type="text" id="email" name="email" value="" size="50" onblur="validateEmail()"onkeyup="vali('email','email1')" autocomplete="off"/>&nbsp;<div id="email1" style="display:inline"> </div>
                 <br><br>
                 <label for="phone">Phone No:</label><input type="text" class="" id="phone" name="phone" onkeyup="phonenumber()" onblur="phonenumber1()"value="" size="50" autocomplete="off"/>&nbsp;<div id="phone1" style="display:inline"> </div>
        
              </div>
             <h3>2. Educational information</h3>
             <div class="person">
             <label for="dep">Department: </label><input type="text"onkeyup="vali('dep','dep1')" onblur="validate('dep','dep1')" id="dep" name="dep" value="" size="50" autocomplete="off"d/>&nbsp;<div id="dep1" style="display:inline"> </div>
                  <br><br>
                  <label for="college">College: </label><input type="text" onkeyup="vali('college','college1')" onblur="validate('college','college1')"id="college" name="college" value="" size="50" autocomplete="off" />&nbsp;<div id="college1" style="display:inline"> </div>
                       <br><br>
                       <label for="sem"> Semester:</label>
                       <select id="sem" name="sem" required>
                           <option selected=""></option>
                           <option>I</option>
                           <option>II</option>
                           <option>III</option>
                           <option>IV</option>
                           <option>V</option>
                           <option>VI</option>
                           <option>VII</option>
                           <option>VIII</option>
                       </select>
                       <br><br>
                       <label for="cgpa"> CGPA: </label> <input type="text"id="cgpa" onkeyup="cgpavalidate()" onblur="cgpavalidate()"name="cgpa" value="" size="50" autocomplete="off"/>&nbsp;<div id="cgpa2" style="display:inline"> </div>
                       <br><br>
                       <br>
                       <table border="1">
                           <tbody>
                               <tr>
                                   <th></th>
                                   <th><label>Year of passing </label></th>
                                   <th><label>Percentage obtained</label></th>
                               </tr>
                               <tr>
                                   <td><label>Class X</label></td>
                                   <td><label for="yearX"> </label> <input style="height:40px" onkeyup="yearXvalidate()" onblur="yearXvalidate1()"type="text" id="yearX" name="yearX" value="" autocomplete="off"/></td>
                                   <td><label for="classX"></label><input style="height:40px" onkeyup="classXvalidate()" onblur="classXvalidate()" type="text" id="classX" name="classX" value=""  autocomplete="off"/></td>
                               </tr>&nbsp;<div style=" display:inline; position:absolute;left:807px;top:1490px "id="X"> </div>
                               <tr>
                                   <td><label>Class XII</label></td>
                                   <td><label for="yearXII"></label><input style="height:40px"onkeyup="yearXIIvalidate()" onblur="yearXIIvalidate1()" type="text" id="yearXII" name="yearXII" value="" autocomplete="off"/></td>
                                   <td> <label for="classXII"></label><input style="height:40px" onkeyup="classXIIvalidate()" onblur="classXIIvalidate()" type="text" id="classXII" name="classXII" value="" autocomplete="off"/></td>
                               </tr>&nbsp;<div style=" display:inline; position:absolute; left:807px; top:1555px "id="X1"> </div>
                           </tbody>
                       </table>
                       <br>
       
  </div>      
          <input class="button" type="reset" value="CLEAR" />
              <input class="button" type="submit" value="SUBMIT"/>
        </form>
       
    </body>
   
</html>
