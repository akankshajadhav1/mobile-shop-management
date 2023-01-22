<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>
<html>
<link rel="stylesheet" href="style.css">
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<body >
<style>
body{


 
}
a{
color:red;
}
h2{
font-family:Georgia, serif;
color:black;

}
.tbody{
color: gray:
}


</style>
<%
try{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","akanksha");
Statement stat=con.createStatement();
ResultSet rs= stat.executeQuery("select * from product");
out.println("<nav class='navbar navbar-expand-lg navbar-light'style='background-color: #918c8c;'><div class='collapse navbar-collapse' id='navbarNavAltMarkup'> <div class='navbar-nav'><a class='nav-item nav-link' href='home.jsp'>Home </a><a class='nav-item nav-link' href='logOut.jsp'>LogOut</a>  <a class='nav-item nav-link' href='addProduct.html'>Add New Product</a> <a class='nav-item nav-link active' href='viewProduct.jsp'>Products List <span class='sr-only'>(current)</span></a></div></div></nav>");
out.println("<center><h2> Products List</h2></center>");
out.println("<hr>");
out.println("<table  class='table table-striped'>");

  
  out.println("<thead><tr> <th scope='col'>Product_Id</th> <th th scope='col'>Product_Name</th><th th scope='col'>Product_Brand</th><th th scope='col' >Product_Price</th><th th scope='col'colspan='3'>Action</th></tr></thead>");
  
    
   

while(rs.next())
{
	%>
<tbody class="tbody">
<tr>
<th scope="row"><%=rs.getInt(1)%></th>

<th scope="row"><%=rs.getString(2)%></th>

<th scope="row"><%=rs.getString(3)%></th>



<th scope="row"><%=rs.getString(5) %></th>

<td scope="row"> <button class="btn btn-outline-primary"onclick="location.href='UpdateProduct.html?Product_Id=<%=rs.getInt(1) %>';">Edit</button></td>
<td scope="row"> <button class="btn btn-outline-info"onclick="location.href='ProductDetails.jsp?Product_Id=<%=rs.getInt(1) %>';">View </button></td>

<td scope="row"> <button class="btn btn-outline-danger"onclick="location.href='DeleteProduct.jsp?Product_Id=<%=rs.getInt(1) %>';">Delete</button></td>
</tr>
</tbody>

<%
}

rs.close();
con.close();
out.println("</table>");
}
catch(Exception e)
{
	out.println(e);
	
}
%>
</body>
</html>