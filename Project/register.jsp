<%try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	java.sql.Connection con=java.sql.DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bvkpardhu","oracle");
	java.sql.Statement st=con.createStatement();
	java.sql.preparedStatement ps=con.preparedStatement("insert into register values(?,?,?,?,?,?,?,?,?,?)");
	ps.setString(1,request.getParameter("username"));
	ps.setString(2,request.getParameter("email"));
	ps.setString(3,request.getParameter("password"));
	ps.setString(4,request.getParameter("cpassword"));
	ps.setString(5,request.getParameter("qualification"));
	ps.setString(6,request.getParameter("branch"));
	ps.setString(7,request.getParameter("course"));
	ps.setString(8,request.getParameter("gender"));
	ps.setString(9,request.getParameter("category"));
	ps.setString(10,request.getParameter("pd"));
	ps.executeUpdate();
	out.println("</h1>Registered Successfully!!!</h1>");
	con.close();
}
catch(Exception e)
{
	out.println(e);
}
%>