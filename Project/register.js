function validate()
{
	u=f1.username.value;
	e=f1.email.value;
	p=f1.password.value;
	cp=f1.cpassword.value;
	q=f1.qualification.value;
	b=f1.branch.value;
	c=f1.course.value;
	g=f1.gender.value;
	cat=f1.category.value;
	pd=f1.pd.value;
	uexp=/^[A-Za-Z ][a-zA-Z0-9]+{3,20}$/;
	pexp=/^[a-zA-Z0-9]{7,15}$/;
	if(u=="")
	{
		alert("enter username");
		return false;
	}
	else if(e=="")
	{
		alert("enter email");
		return false;
	}
	else if(p=="")
	{
		alert("enter password");
		return false;
	}
	else if(cp=="")
	{
		alert("enter confirm password");
		return false;
	}
	else if(p!=cp)
	{
		alert("type confirm password correctly");
		return false;
	}
	else if(f1.qualification.selectedIndex==0)
	{
		alert("select qualification");
		return false;
	}
	else if(f1.branch.selectedIndex==0)
	{
		alert("select branch");
		return false;
	}
	else if(f1.course.checked==false)
	{
		alert("choose a course");
		return false;
	}
	else if(f1.gender.checked==false)
	{
		alert("choose gender");
		return false;
	}
	else if(f1.category.checked==false)
	{
		alert("choose category");
		return false;
	}
	else if(f1.pd.checked==false)
	{
		alert("choose Yes/No");
		return false;
	}
	else if(uexp.test(u)==false)
	{
		alert("enter correct username");
		return false;
	}
	else if(pexp.test(p)==false)
	{
		alert("enter correct password");
		return false;
	}
	
}