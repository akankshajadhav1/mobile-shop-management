<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
<style>
body{
background-color:#D7DBDD;
}
h2{
text-align:center;
color:white;
font-family:Georgia, serif;
}
input{
font-family:Georgia, serif;
margin:10px;
display:block;
size:50px;
}


.form-row{
	margin-left: 20%;
}
</style>
<%
int s1=(Integer.parseInt(request.getParameter("Id")));
String s2=request.getParameter("name");
String s3=request.getParameter("brand");
String s4=request.getParameter("description");
String s5=request.getParameter("price");



try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","akanksha");
	
	PreparedStatement stat=con.prepareStatement("select * from product where Product_Id=? and Product_Name=? and Product_Brand=? and Product_Description=? and Product_Price=?");
	 stat.setInt(1,s1);
	 stat.setString(2,s2);
	 stat.setString(3,s3);
	 stat.setString(4,s4);
	 stat.setString(5,s5);
	
	ResultSet rs= stat.executeQuery();
	if(rs.next())
	{
		%>
		<nav class='navbar navbar-expand-lg navbar-light bg-light'><div class='collapse navbar-collapse' id='navbarNavAltMarkup'> <div class='navbar-nav'><a class='nav-item nav-link' href='home.jsp'>Home </a><a style="margin-left:0px " class='nav-item nav-link' href='logOut.jsp'>LogOut</a>  <a class='nav-item nav-link' href='viewProduct.jsp'>View Product</a> <a class='nav-item nav-link active' href='updateProduct.jsp'> Update Products <span class='sr-only'>(current)</span></a></div></div></nav>
		
		<form  action="UpdateProcess2.jsp" method="post">
  <div class="form-row">
    <div class="form-group col-md-5">
      <label for="inputEmail4">Product Id</label>
      
      <input type="text" class="form-control" id="Id" name="Id" value=<%=s1%>>
    
    </div>
    <br>
    <div class="form-group col-md-5">
      <label for="text"> Product Name</label>
      
      <input type="text" class="form-control" id="name" name="name" value=<%=s2%>>
    
    </div>
  </div>
  <br>
    <div class="form-group col-md-4">
      <label for="text">Product Brand</label>
      <input type="text" class="form-control" id="brand" name="brand" value=<%=s3%>>
     
      
    </div>
    
<div class="form-group col-md-4">
      <label for="text">Product Description</label>
      <textarea  rows="6" type="text" class="form-control" id="description" name="description"> <%=s4%></textarea>
            
     
      
    </div>
  
  <br>
  
  <div class="form-group col-md-5">
      <label for="text"> Product Price</label>
       
      <input type="text" class="form-control" id="price" name="price"  value=<%=s5%>>
      
    </div>
    <br> 
    
    
  
  <center>
  <button type="submit" class="btn btn-primary">Update Product</button>
 </center>
</form>
<%

	}
	else
		out.println("<h3> Update failed<h3>");
rs.close();
con.close();
}
catch(Exception e)
{
	out.println(e);
}
%>
</body>
</html>