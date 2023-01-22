<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import=" java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<style>

table,h1,h2 ,h3,p{
margin-top:20px;
    
}
.info{

float:right;
font-family: Roboto,Arial,sans-serif;
    letter-spacing: 0;
    
    align-item:center;
    }
    img{
    margin-left: 10px;
    margin-top:0px;
    max-height: 350px;
    max-width: 352px;
    display: inline-block;
    
    vertical-align: top;
    position: inherit;
    }
    .details{
    margin-left:10px;
    
    }
  
</style>
<body>
<nav class="navbar navbar-expand-lg navbar-light"style="background-color: #918c8c;">
  
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <a class="nav-item nav-link active" href="ProductDetails.jsp">Product Details <span class="sr-only">(current)</span></a>
      <a class="nav-item nav-link" href="home.jsp">Home</a>
      <a class="nav-item nav-link" href="addProduct.html">Add Product</a>
      <a class="nav-item nav-link" href="viewProduct.jsp">View Product</a>
      
      <a class="nav-item nav-link" href="logOut.jsp">Log Out</a>
    </div>
  </div>
</nav>
<%
try{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","akanksha");
Statement stat=con.createStatement();
ResultSet rs= stat.executeQuery("select * from product");

if(rs.next()){	
%>
<table>
<div class="details">
<td>
 <img class="card-img-top"  src="apple11.jpg">
</td>
<th>
<div style="padding-left:100px;padding-bottom:100px;font-family:Roboto,Arial,sans-serif;" class="row">
<div class="info">
<ul>
<h1 class="float-right"><%=rs.getString(2)%></h1>

 <h3 class="float-right">Brand:<%=rs.getString(3) %></h3>

<p class="float-right">Specification:<%=rs.getString(4)%></p>

<h4 class="float-right">Price:<%=rs.getString(5)%></h4>
</ul>
</th>
 </div>
</div>
</div>
 

</table>


<%} %>
</table>
<hr>
<%rs.next() ;
String foundType=rs.getString(1);
%>
<table>
<div class="details">
<td>
 <img class="card-img-top"  src="samsung.jpg">
</td>
<th>
<div style="padding-left:100px;padding-bottom:100px;" class="row">
<div class="info">
<ul>
<h1 style="color:"#212529;"class="float-right"><%=rs.getString(2)%></h1>

 <h3 class="float-right">Brand:<%=rs.getString(3) %></h3>

<p class="float-right">Specification:<%=rs.getString(4)%></p>

<h4 class="float-right">Price:<%=rs.getString(5)%></h4>
</ul>
</th>

 
 </div>
</div>
 
</div>
</table>
<hr>
<%rs.next() ;
String foundType1=rs.getString(1);
%>
<table>
<div class="details">
<td>
 <img class="card-img-top"  src="samsungf13.jpg">
</td>
<th>
<div style="padding-left:200px;padding-bottom:100px;" class="row">
<div class="info">
<ul>
<h1 style="color:"#212529;"class="float-right"><%=rs.getString(2)%></h1>

 <h3 class="float-right">Brand:<%=rs.getString(3) %></h3>

<p class="float-right">Specification:<%=rs.getString(4)%></p>

<h4 class="float-right">Price:<%=rs.getString(5)%></h4>
</ul>
</th>

 
 </div>
</div>
 
</div>
</table>
<%

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