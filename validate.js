
function validateform(){  
    var firstname=document.signupform.firstname.value;  
    var lastname=document.signupform.lastname.value;  
    var password=document.signupform.password.value;  
    var x=document.signupform.email.value;  
    var atposition=x.indexOf("@");  
    var dotposition=x.lastIndexOf(".");  
      
    if (firstname==null || firstname=="" || lastname==null || lastname==""){  
      alert("Name can't be blank");  
      return false;  
    }
    else if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length){  
  alert("Please enter a valid e-mail address \n atpostion:"+atposition+"\n dotposition:"+dotposition);  
  return false;  
      }  
    else if(password.length<6){  
      alert("Password must be at least 6 characters long.");  
      return false;  
      }  
    
  }  

