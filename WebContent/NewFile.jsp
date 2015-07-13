<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String userName=request.getParameter("userName");
String rollNo=request.getParameter("rollNo");
String deptName=request.getParameter("deptName");
String verName=request.getParameter("verName");
String password=request.getParameter("password");
if(userName!=null&& rollNo!=null && deptName!=null && verName!=null)
{
	session.setAttribute("sessionName",userName);
	session.setAttribute("sessionroll",rollNo);
	session.setAttribute("sessiondeptName",deptName);
	session.setAttribute("sessionverName",verName);
}
%>
User Name :<%=session.getAttribute("sessionName") %><br>
Roll No   :<%=session.getAttribute("sessionroll") %><br>
Dept Name :<%=session.getAttribute("sessiondeptName") %><br>
Versity Name:<%=session.getAttribute("sessionverName") %><br>
Password   :<%=password %>
</body>
</html>