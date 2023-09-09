<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
int p=Integer.parseInt(request.getParameter("a"));
int r=Integer.parseInt(request.getParameter("i"));
int n=Integer.parseInt(request.getParameter("m"));
    
     double c=(p * r/12) * ((1+r/12)*n) / ((1+r/12)*n-1);
     out.println("emi : "+c);

%>
<br>
<a href="Emi.jsp"> Back</a>

</body>
</html>