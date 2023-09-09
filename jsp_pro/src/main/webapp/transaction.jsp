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
    int t=Integer.parseInt(request.getParameter("ta"));
    int a=Integer.parseInt(request.getParameter("a"));
    String s=request.getParameter("s");
    if(s.equals("cr")){
         double tot=t+a;
       %>
       <center>
       <table border="2">
          <tr>
          <th> Total amount </th>
          <th> Credit amount </th>
          </tr>
          <tr>
          <td><%=tot%></td>
          <td><%=a%></td>
          </tr>
       </table><br>
       <%}else{
    	   double sub=t-a;
    	   %>
      <center> <table border="2">
          <tr>
          <th> Total amount </th>
          <th> Debit amount </th>
          </tr>
          <tr>
          <td><%=sub%></td>
          <td><%=a%></td>
          </tr>
       </table><br>
       </center>
       <%} %>
       </center>
       
         <a href="Bank.jsp"> Back</a>
</body>
</html>