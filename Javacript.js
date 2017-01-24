function fnamevalidate()
{
    var inputtxt=document.getElementById("first").value;
    if(inputtxt.length===0)
    {
         ProduceMessage("You cannot leave this empty","name1");
          document.getElementById("first").className ="err";
         return false;
    }
  if(!inputtxt.match(/^[A-Z]*[a-z]*$/))  
        {  
             ProduceMessage("Please enter valid name","name1");
              document.getElementById("first").className = "err"; 
      return false;  
        }  
        
      ProduceMessage("","name1");
       document.getElementById("first").className ="";
      return true;

}
function lnamevalidate()
{
    var inputtxt=document.getElementById("last").value;
    if(inputtxt.length===0)
    {
         ProduceMessage("You cannot leave this empty","name2");
          document.getElementById("last").className ="err";
         return false;
    }
  if(!inputtxt.match(/^[A-Z]*[a-z]*$/))  
        {  
             ProduceMessage("Please enter valid name","name2");
              document.getElementById("last").className = "err"; 
      return false;  
        }  
        
      ProduceMessage("","name2");
       document.getElementById("last").className ="";
      return true;

}
function validate(source,des)
{
    var inputtxt=document.getElementById(source).value;
    if(inputtxt.length===0)
    {
         ProduceMessage("You cannot leave this empty",des);
          document.getElementById(source).className ="err";
         return false;
    }
       
      ProduceMessage("",des);
       document.getElementById(source).className ="";
      return true;
      }
function validateEmail()
      {
         var emailID = document.getElementById("email").value;
          if(emailID.length===0)
    {
        ProduceMessage("You cannot leave this empty","email1");
              document.getElementById("email").className = "err"; 
      return false; 
    }
         atpos = emailID.indexOf("@");
         dotpos = emailID.lastIndexOf(".");
         
         if (atpos < 1 || ( dotpos - atpos < 2 )) 
         {
        ProduceMessage("Please enter valid email","email1");
          document.getElementById("email").className = "err"; 
            return false;
         }
             ProduceMessage("","email1");
              document.getElementById("email").className = ""; 
             return(true);
         
      }
      function vali(source,des)
      {
          ProduceMessage("",des);
              document.getElementById(source).className = ""; 
      }
     
function phonenumber()  
{  
    var inputtxt=document.getElementById("phone").value;
    if(inputtxt.match(/^[0-9]*$/)&&inputtxt.length<=9)
    {
         ProduceMessage("","phone1");
          document.getElementById("phone").className ="";
         return true;
    }
  if(!inputtxt.match(/^[0-9]{10}$/))  
        {  
             ProduceMessage("Please enter valid phone number","phone1");
              document.getElementById("phone").className = "err"; 
      return false;  
        }  
      ProduceMessage("","phone1");
       document.getElementById("phone").className ="";
      return true;

}
function phonenumber1()  
{  
    var inputtxt=document.getElementById("phone").value;
    if(inputtxt.length===0)
    {
        ProduceMessage("You cannot leave this empty","phone1");
              document.getElementById("phone").className = "err"; 
      return false; 
    }
    else
  if(!inputtxt.match(/^[0-9]{10}$/))  
        {  
             ProduceMessage("Please enter valid phone number","phone1");
document.getElementById("phone").className = "err"; 
      return false;  
        }  
      ProduceMessage("","phone1");
      document.getElementById("phone").className ="";
      return true;

}

function cgpavalidate()
{
      var cgpa1=document.getElementById("cgpa").value;
    if(cgpa1.length===0)
    {
        ProduceMessage("You cannot leave this empty","cgpa2");
              document.getElementById("cgpa").className = "err"; 
      return false; 
    }
    if(cgpa1>0&&cgpa1<=10)
    { 
        ProduceMessage("","cgpa2");
        document.getElementById("cgpa").className = "";
        return true;
    }
   ProduceMessage("Please  enter valid cgpa","cgpa2");
document.getElementById("cgpa").className = "err"; 
    return false;
    }
    function yearXvalidate()  
{  
    var inputtxt=document.getElementById("yearX").value;
    if(inputtxt.match(/^[2][0]?[0-1]?[0-4]?$/)&&inputtxt.length<=3)
    {
         ProduceMessage("","X");
          document.getElementById("yearX").className ="";
         return true;
    }
  if(!inputtxt.match(/^[2][0][0-1][0-4]$/))  
        {  
             ProduceMessage("Please enter valid year","X");
              document.getElementById("yearX").className = "err"; 
      return false;  
        }  
      ProduceMessage("","X");
       document.getElementById("yearX").className ="";
      return true;

}
function yearXvalidate1()  
{  
    var inputtxt=document.getElementById("yearX").value;
    if(inputtxt.length===0)
    {
        ProduceMessage("You cannot leave this empty","X");
              document.getElementById("yearX").className = "err"; 
      return false; 
    }
    else
  if(!inputtxt.match(/^[2][0][0-1][0-4]$/))  
        {  
             ProduceMessage("Please enter valid year","X");
document.getElementById("yearX").className = "err"; 
      return false;  
        }  
      ProduceMessage("","X");
      document.getElementById("yearX").className ="";
      return true;

}
function classXvalidate()
{
      var classX1=document.getElementById("classX").value;
    if(classX1.length===0)
    {
        ProduceMessage("You cannot leave this empty","X");
              document.getElementById("classX").className = "err"; 
      return false; 
    }
    if(classX1>0&&classX1<=100)
    { 
         ProduceMessage("","X");
        document.getElementById("classX").className = "";
        return true;
    }
   ProduceMessage("Please  enter valid percentage","X");
document.getElementById("classX").className = "err"; 
    return false;
    }
 function yearXIIvalidate()  
{  
     var yearX1=document.getElementById("yearX").value;
    var yearX2=document.getElementById("yearXII").value;
    if(yearX2.match(/^[2][0]?[0-1]?[2-6]?$/)&&yearX2.length<=3)
    {
         ProduceMessage("","X1");
          document.getElementById("yearXII").className ="";
         return true;
    }
  if(!yearX2.match(/^[2][0][0-1][2-6]$/)||(yearX2-yearX1)<2)  
        {  
             ProduceMessage("Please enter valid year","X1");
              document.getElementById("yearXII").className = "err"; 
      return false;  
        }  
      ProduceMessage("","X1");
       document.getElementById("yearXII").className ="";
      return true;

}
function yearXIIvalidate1()  
{  
    var yearX1=document.getElementById("yearX").value;
    var yearX2=document.getElementById("yearXII").value;
    if(yearX2.length===0)
    {
        ProduceMessage("You cannot leave this empty","X1");
              document.getElementById("yearXII").className = "err"; 
      return false; 
    }
    else
  if(!yearX2.match(/^[2][0][0-1][2-6]$/)||(yearX2-yearX1)<2)  
        {  
             ProduceMessage("Please enter valid year","X1");
document.getElementById("yearXII").className = "err"; 
      return false;  
        }  
      ProduceMessage("","X1");
      document.getElementById("yearXII").className ="";
      return true;

}
function classXIIvalidate()
{
      var classX2=document.getElementById("classXII").value;
    if(classX2.length===0)
    {
        ProduceMessage("You cannot leave this empty","X1");
              document.getElementById("classXII").className = "err"; 
      return false; 
    }
    if(classX2>0&&classX2<=100)
    { 
         ProduceMessage("","X1");
        document.getElementById("classXII").className = "";
        return true;
    }
   ProduceMessage("Please  enter valid percentage","X1");
document.getElementById("classXII").className = "err"; 
    return false;
    }

function ProduceMessage(message,target)
{
  document.getElementById(target).innerHTML =message;   
  document.getElementById(target).style.color="red";
document.getElementById(target).style.fontSize = "17px";
}