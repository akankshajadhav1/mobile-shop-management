<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<style>  
body{
width:600px;
bckground-size:cover;
background-repeat:no-repeat;

background-position:center;
}

.global-container {  
    height: 300%;  
    display: flex;  
    align-items: center;  
    justify-content: center;  
    margin-top:20px;
    
}  
h2{
font-family:Georgia, serif;
color:white;
size:10px;
margin-top:10px;
margin-left:20px;
}

.card-body{
 margin-top:20px;
}
form {  
  
    font-size: 14px;  
    margin-top:10px;
    height:200px;
    
}  
.card-title {   
font-weight: 200;  
 }  
.btn {  
    font-size: 14px;  
    margin-top: 20px;  
}  
.login-form {   
    width: 350px;  
    margin: 20px;  
}  
.sign-up {  
    text-align: center;  
        padding: 20px 0 0;  
}  
form{
border:15px soild gray;
border-radius:55px;

weidth:300px;
}
.form-group{
border:15px soild gray;
border-radius:55px;

weidth:300px;
}

</style>  
</head>

<body class="loginbody" style="background-image:url(mobile5.jpg)">

<h2>Log in to your Shopify store</h2>
<div style="margin-top:60px">  
  <div class="global-container">  
    <div class="card login-form">  
   <div class="card-body">  
       
        <div class="card-text">  
           <form  method="post" action="processLogin.jsp">  
                <div class="form-group">  
                    <label for="exampleInputEmail1"> Enter Email </label>  
                    <input type="email" class="form-control form-control-sm" id="userName" aria-describedby="emailHelp" name="userName">  
                </div>  
                <div class="form-group">  
                    <label for="exampleInputPassword1">Enter Password </label>  
                    <a href="#" style="float:right;font-size:12px;"> Forgot password? </a>  
                    <input type="password" class="form-control form-control-sm" id="password" name="password">  
                </div>  
                <button value="submit"type="submit" class="btn btn-danger"> Sign in </button>  
                  
                            </form>  
      </div>  
    </div>  
</div>  
</div>  
</div>

</body>  
</html>  
 
 
 