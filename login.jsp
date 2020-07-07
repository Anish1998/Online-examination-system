<%@ page import="java.sql.*" %>
<% 
	response.setContentType("text/html");
	String em=request.getParameter("email");
	String pw=request.getParameter("password");
	String GATE="GATE";
	String Job="Job";
	String GRE="GRE";
	String CAT="CAT";
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
	java.sql.Connection con=java.sql.DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:bvkpardhu","bvkpardhu","oracle");
	java.sql.Statement st=con.createStatement();
	String query="select * from register";
	java.sql.ResultSet rs=st.executeQuery(query);
	boolean flag=false;
	while(rs.next())
	{
		if(em.equals(rs.getString(2)) && pw.equals(rs.getString(3)))
		{
			flag=true;
		}
	}
	if(flag)
	{
		out.println("<h1>Login Successfull!!!</h1>");
	}
	else
		out.println("<h2>Invalid Email ID/Password</h2>");
	}
	catch(Exception e)
	{
		out.println(e);
	}
%>