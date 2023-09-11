<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <%session.setAttribute("City", request.getParameter("city"));
     session.setAttribute("Padd", request.getParameter("padd"));   
    %>
     
      <center>
			 <h1>* Bank Detail *</h1><br><br>
			 <form action="dd.jsp">
				 Acount Number: <input type="number" name="ac" placeholder="Enter acount number"><br>
				 Pin : <input type="number" name="pin" placeholder="Pin number"><br>
				 IFCE CODE : <input type="number" name="ifce" placeholder=" Enter ifce code"><br>
			      <button type="submit">click here</button>
			</form>
		 </center>
</body>
</html>