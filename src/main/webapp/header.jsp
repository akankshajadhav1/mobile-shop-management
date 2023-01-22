<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<style>
.bi bi-instagram{
margin-left:20px;
bottom:0;
margin-:200px;
}
</style>
</head>

<body class="header">


<nav  class="navbar navbar-expand-lg navbar-light bg-light">
  
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <a class="nav-item nav-link active" href="home.jsp">Home <span class="sr-only">(current)</span></a>
      <a class="nav-item nav-link" href="addProduct.html">Add Product</a>
      <a class="nav-item nav-link" href="viewProduct.jsp">View Product</a>
      <a class="nav-item nav-link" href="logOut.jsp">Log Out</a>
    </div>
  </div>
</nav>


<%

if(session.getAttribute("userName")==null)
{
	response.sendRedirect("login.jsp");
	
}
%>


</body>
</html>