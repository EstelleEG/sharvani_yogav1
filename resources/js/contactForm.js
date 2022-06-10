//CONTACT FORM 
(function () {
    emailjs.init("4riFHalEW_nXH8pM7");
  })();
  
  //get the inputs
  function sendmail() {
    let fullName = document.getElementById("name").value;
    let userEmail = document.getElementById("email").value;
    let userMessage = document.getElementById("message").value;
  
    var contactParams = {
      from_name: fullName,
      from_email: userEmail,
      message: userMessage
    };
  
    emailjs.send('service_vbfmzcj', 'template_zm0k9yn', contactParams).then(function (res) { })
  }

  //check and send confirmation
  function ValidateEmail(mail) 
{
 if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(myForm.emailAddr.value))
  {
    return (true)
  }
    alert("You have entered an invalid email address!")
    return (false)
}

//or 
function ValidateEmail(inputText)
{
var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
if(inputText.value.match(mailformat))
{
alert("Valid email address!");
document.form1.text1.focus();
return true;
}
else
{
alert("You have entered an invalid email address!");
document.form1.text1.focus();
return false;
}
}