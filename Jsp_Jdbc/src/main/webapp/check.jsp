<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
    String email=request.getParameter("email");
  Class.forName("com.mysql.cj.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital?CharacterEncoding=latin1","root","1234");
 PreparedStatement ps=con.prepareStatement("select*from patient where Email = ?");
     ps.setString(1,email);
      ResultSet rs=ps.executeQuery();
      if(rs.next()){  
  %>
  <h1 style"display: inline"> Name : </h1>
  <div><%= rs.getString("Name") %> </div>
  <h1> Email : <%= rs.getString("Email") %></h1>
  <h1>Contact :<%= rs.getString("contect") %></h1>
  <%}else{ %>
     <h1>patient not ragistred</h1>
   <%} %>
   <br>
   <a href="hp.jsp">Back</a>
</body>
</html>