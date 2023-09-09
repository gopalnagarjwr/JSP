<%@ page language="java" contentType="text/html;
charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>index page</title>
</head>
<body>
   <form action="Bank.jsp" name="g">
      <a href="Table.jsp">Table</a><br>
      <a href="Calcl.jsp">calculator</a><br>
      <a href="Emi.jsp">EMI</a><br>
       Bank: <select onchange="g.submit()">
            <option>choose</option>
         <option><a href="">Deposit</a></option>
        <option><a href="">Withdraw</a></option>
       </select>
       </form>
      
</body>
</html>