<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center> <h1>* My Bank Portal *</h1></center>
<form action="transaction.jsp" >
  Total amount : <input type="number" name="ta"><br>
        amount : <input type="number" name="a"><br>
        Select : Credit <input type="radio"  value="cr" name="s" >
                 Debit <input type="radio"   name="s"><br>
        <button type="submit">click here</button>
       </form><br>
       <a href="html.jsp"> Back</a>
</body>
</html>