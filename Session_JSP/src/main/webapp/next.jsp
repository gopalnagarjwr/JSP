<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <%session.setAttribute("Email", request.getParameter("email"));
     session.setAttribute("Pass", request.getParameter("pass"));   
    %>
     <center>
			 <h1>* First Page *</h1><br><br>
			 <form action="sec.jsp">
				 Name : <input type="text" name="name" placeholder="Enter Name"><br>
				 Address : <input type="text" name="add" placeholder="Enter Address"><br>
				   Contact : <input type="number" name="con" placeholder="Enter Contact"><br>
			      <button type="submit">click here</button>
			</form>
		 </center>
</body>
</html>