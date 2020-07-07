<%
response.setContentType("text/html");
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	java.sql.Connection con=java.sql.DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:bvkpardhu","bvkpardhu","oracle");
	java.sql.Statement st=con.createStatement();
	java.sql.PreparedStatement ps=con.prepareStatement("insert into register values(?,?,?,?,?,?,?)");
	ps.setString(1,request.getParameter("username"));
	ps.setString(2,request.getParameter("email"));
	ps.setString(3,request.getParameter("password"));
	ps.setString(4,request.getParameter("cpassword"));
	ps.setString(5,request.getParameter("qualification"));
	ps.setString(6,request.getParameter("branch"));
	ps.setString(7,request.getParameter("course"));
	ps.executeUpdate();
	out.println("<h1>Registered Successfully!!!</h1>");
	con.close();
	st.close();
	ps.close();
}
catch(Exception e)
{
	out.println(e);
}
%>