<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="java.sql.*"%>
<!DOCTYPE html>
<html>

<body>
<%
int status=0;
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","akanksha");
  // Insert the product into the database
 PreparedStatement stmt= con.prepareStatement("update product set Product_Name=?,Product_Brand=?,Product_Description=?,Product_Price=? where Product_Id=?");
  
 
  stmt.setString(1,request.getParameter("name"));
  stmt.setString(2,request.getParameter("brand"));
  stmt.setString(3,request.getParameter("description"));
  stmt.setString(4,request.getParameter("price"));
  stmt.setInt(5,Integer.parseInt(request.getParameter("Id")));
 
  
  stmt.executeUpdate();
  out.println("<h1> Product Updated</h1>");
  con.close();
  


if(status==0)
{
	  response.sendRedirect("viewProduct.jsp");
}
else{
	  response.sendRedirect("error");
}
}
catch(Exception e)
{
	out.println(e);
	 
}
%>

</body>
</html>