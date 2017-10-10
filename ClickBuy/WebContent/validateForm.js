function validateForm()
{
	
	if(document.frm.Uname.value=="")
    {
      alert("User Name is required");
      document.frm.Uname.focus();
      return false;
    }
    if(document.frm.pwd.value=="")
    {
      alert("Password is required");
      document.frm.pwd.focus();
      return false;
    }
   if (document.frm.Utype.value=="")
    {
      alert("Select Type");
      document.frm.Utype.focus();
      return false;
    } 
}


function validateFrm()
{
	if (document.frm.t1.value=="")
    {
      alert("Select User Name");
      document.frm.t1.focus();
      return false;
    } 
return true;

}





function validateDetails(){
	
    if(document.frm4.itemname.value=="")
    {
      alert("Item Name is required");
      document.frm4.itemname.focus();
      return false;
    }
	
    if(document.frm4.price.value=="")
    {
      alert("Price is required");
      document.frm4.price.focus();
      return false;
    }
    if(document.frm4.discount.value=="")
    {
      alert("Discount is required");
      document.frm4.discount.focus();
      return false;
    }
    if(document.frm4.image.value=="")
    {
      alert("Image is required");
      document.frm4.image.focus();
      return false;
    }
    if(document.frm4.model.value=="")
    {
      alert("Product is required");
      document.frm4.model.focus();
      return false;
    }
}




