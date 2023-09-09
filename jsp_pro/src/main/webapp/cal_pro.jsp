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
     int a=Integer.parseInt(request.getParameter("d"));
     int b=Integer.parseInt(request.getParameter("d1"));
     String s=request.getParameter("s");
        switch(s){
        case "adi":
        	  out.println("Result => "+(a+b));
                  break;
        case "multi":
      	  out.println("Result => "+(a*b));
               break;  
        case "divid":
      	  out.println("Result => "+(a/b));
                break;
        case "sub":
      	  out.println("Result => "+(a-b));
                break;
        }
     %>
     <br>
     <a href="Calcl.jsp"> Back</a>

</body>
</html>