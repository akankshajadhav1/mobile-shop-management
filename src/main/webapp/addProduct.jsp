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


  // Connect to the database
 int status=0;
  try {
	  Class.forName("com.mysql.cj.jdbc.Driver");
	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","akanksha");
    // Insert the product into the database
   PreparedStatement stmt= con.prepareStatement("select * from product where Product_Id=?");
    stmt.setString(1,request.getParameter("Id"));
    ResultSet rs= stmt.executeQuery();
    if(rs.next())
    {
    	out.println("<h1>Product already exist try another id</h1>");
    }
    	else{
    		stmt=con.prepareStatement("insert into product values(?,?,?,?,?,?)");
    		stmt.setInt(1,Integer.parseInt(request.getParameter("Id")));
    		stmt.setString(2,request.getParameter("name"));
    		stmt.setString(3,request.getParameter("brand"));
    		stmt.setString(4,request.getParameter("description"));
    		stmt.setString(5,request.getParameter("price"));
    		stmt.setString(6,request.getParameter("image"));
    		status=stmt.executeUpdate();
    		
    	}
   
    rs.close();
	con.close();
  }
   
  catch (Exception e) {
    out.println(e);
  
  } 
  out.println(status);

if(status==0)
{
	  response.sendRedirect("viewProduct.jsp");
}


%>

</body>
</html>