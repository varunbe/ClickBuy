
function validateSignup(){
	var temp
	
    if(document.signup.Uid.value=="")
    {
      alert("UserId is required");
      document.signup.Uid.focus();
      return false;
    } 
	
    if(document.signup.Uname.value=="")
    {
      alert("User Name is required");
      document.signup.Uname.focus();
      return false;
    } 
   if (document.signup.pwd.value=="")
    {
      alert("Password is required");
      document.signup.pwd.focus();
      return false;
    } 
   if (document.signup.Utype.value=="")
    {
      alert("User Type is required");
      document.signup.Utype.focus();
      return false;
    } 
   
   var k = document.signup.mobile.value;

   if(k=="")
{
alert("Enter mobile number");
document.signup.mobile.focus();
return false;
}

if(isNaN(k))
{
alert("Enter mobile number in numbers");
document.signup.mobile.focus();
return false;
}
if(k.charAt(0)!=9)
{
alert("Enter the correct mobile no");
document.signup.mobile.focus();
return false;
}
if(k.length!=10)
{
alert("Enter 10 digits");
document.signup.mobile.focus();
return false;
}
   
 var emailfilter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i;
var m=emailfilter.test(document.signup.eid.value);
if(m==false)
{
alert("Please enter a valid Email Id");
document.signup.eid.focus();
return false;
}
 
if(document.signup.address.value=="")
    {
      alert("Full Address is required");
      document.signup.address.focus();
      return false;
    } 

if (document.signup.opt.value=="")
    {
      alert("opt is required");
      document.signup.opt.focus();
      return false;
    } 

if (document.signup.ans.value=="")
    {
      alert("ans is required");
      document.signup.ans.focus();
      return false;
    } 

}