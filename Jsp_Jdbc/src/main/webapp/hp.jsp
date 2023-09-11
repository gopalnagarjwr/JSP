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
   <center><h1>*Hospital DATABASE *</h1></center><br>
   
   <h2>search patient :- </h2>
   <form action="check.jsp">
      Enter_email :<input type="text" name="email"><br>
       <button type="submit">Click</button>
   </form>
   
    
   
   
   <h2>Doctors :-</h2>
    <table border="1">
  <tr>
          <th>Doctor Name</th>
          <th>Email_id</th>
          <th>Password</th>
          <th>Adhar_Number</th>
          </tr>
       <%
    Class.forName("com.mysql.cj.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital?CharacterEncoding=latin1","root","1234");
   PreparedStatement ps=con.prepareStatement("select*from staff");
       //ps.setInt(1, 7);
        ResultSet rs=ps.executeQuery();
        while(rs.next()){
        	%>
          <tr>
        	<td><%= rs.getString("Name")%></td>
        	<td><%= rs.getString("Email_id")%></td>
       <td> <%= rs.getString("Password")%></td>
        <td> <%= rs.getString("Adhar_Number")%></td>      
       </tr>
       
       <% }%>
       </table>
       <hr>
        <h2>Patients :-</h2>
        <table border="1">
  <tr>
          <th>patient Name</th>
          <th>Email_id</th>
          <th>Password</th>
          <th>Contect_number</th>
          </tr>
       <%
   PreparedStatement ps1=con.prepareStatement("select*from patient");
       //ps.setInt(1, 7);
        ResultSet rs1=ps1.executeQuery();
        while(rs1.next()){
        	%>
          <tr>
        	<td><%= rs1.getString("Name")%></td>
        	<td><%= rs1.getString("Email")%></td>
       <td> <%= rs1.getInt("Password")%></td>
        <td> <%= rs1.getString("contect")%></td>      
       </tr>
       
       <% }%>
       </table>

</body>
</html>