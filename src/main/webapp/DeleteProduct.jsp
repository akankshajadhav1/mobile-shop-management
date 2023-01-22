<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>

<%

int status=0;
  // Connect to the database
 
  try {
	  Class.forName("com.mysql.cj.jdbc.Driver");
	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","akanksha");
	  PreparedStatement ps= con.prepareStatement("Delete from product where Product_Id=?");
	  ps.setInt(1,Integer.parseInt(request.getParameter("Product_Id")));

	 status= ps.executeUpdate();
  }
  
catch(Exception e)
{
	out.println(e);
	
}
  out.println(status);
  if(status==1)
  {
	  response.sendRedirect("viewProduct.jsp");
  }
  else{
	  response.sendRedirect("error");
  }
%>
</body>
</html>