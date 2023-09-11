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
          String email=(String)session.getAttribute("Email");
          String pass=(String)session.getAttribute("Pass");
          String name=(String)session.getAttribute("Name");
          String add=(String)session.getAttribute("Add");
          String con=(String)session.getAttribute("Con");
          String city=(String)session.getAttribute("City");
          String padd=(String)session.getAttribute("Padd");
           String ac=request.getParameter("ac");
           String pin=request.getParameter("pin");
           String ifce=request.getParameter("ifce");
           
           Class.forName("com.mysql.cj.jdbc.Driver");
           Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/JSP?CharacterEncoding=latin1","root","1234");
           PreparedStatement ps=conn.prepareStatement("insert into datail values(?,?,?,?,?,?,?,?,?,?)");
            ps.setString(1, email);
            ps.setString(2, pass);
            ps.setString(3, name);
            ps.setString(4, add);
            ps.setLong(5,Integer.parseInt(con));
            ps.setString(6, city);
            ps.setString(7, padd);
            ps.setInt(8,Integer.parseInt( ac));
            ps.setInt(9,Integer.parseInt( pin));
            ps.setInt(10,Integer.parseInt(ifce));
            int a=ps.executeUpdate();
            if(a==1){
        %>
        <h1> DETAILS :- </h1>
       <div>Email Id :- <%= email %></div>
       <div> Password :- <%= pass %></div>
       <div>Name :- <%= name %></div>
        <div>Address :- <%= add %></div>
        <div>Contact :- <%= con %></div>
         <div>City :- <%= city %></div>
            <div>Parmanent Address :- <%= padd %></div>
               <div>Account Number :- <%= ac %></div>
                  <div>Pin :- <%= pin %></div>
                     <div>IFCE Code :- <%= ifce %></div>
        <%}else{
        	out.print("wrong data");
        }
        	%>
        
        
</body>
</html>