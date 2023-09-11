<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <%   session.setAttribute("Name", request.getParameter("name"));
          session.setAttribute("Add", request.getParameter("add"));
          session.setAttribute("Con", request.getParameter("con"));
    %>
       <center>
			 <h1>* Secound Page *</h1><br><br>
			 <form action="tha.jsp">
				 City : <input type="text" name="city" placeholder="Enter city name"><br>
				 Parmanent Address : <input type="text" name="padd" placeholder="Parmanent address"><br>
			      <button type="submit">click here</button>
			</form>
		 </center>

</body>
</html>