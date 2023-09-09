<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>* Calculator *</h1>
<form action="cal_pro.jsp" name="c">
 Enter first_digit : <input type="number" name="d"><br>
 Enter Sec_digit : <input type="number" name="d1"><br>
      opretions: <select name="s" onchange="c.submit()">
       <option>select</option>
       <option value="divid">/</option>
       <option value="multi">*</option>
       <option value="sub">-</option>
       <option value="adi">+</option>
       </select>
     </form><br>
     
    <a href="html.jsp"> Back</a>
     
</body>
</html>