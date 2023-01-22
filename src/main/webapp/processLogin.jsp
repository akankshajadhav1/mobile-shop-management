<%@ page 
    import="dao.LoginDao" %>
<%@ page import="pojo.LoginInfo" %>
<%

String userName=request.getParameter("userName");
String password=request.getParameter("password");
if(userName.equals("Akanksha@gmail.com")&& password.equals("akanksha11"))
{
	session.setAttribute("userName",userName);
	session.setMaxInactiveInterval(30);
	response.sendRedirect("home.jsp");
	
}
else
{
	response.sendRedirect("loginFailed.jsp");
	
}

%>
