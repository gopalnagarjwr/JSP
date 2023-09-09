<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 

     <%!
          public int p(int n ,int a){ 
              return n*a;
         }
         %> 
                        
        <table border="5">
         <tr><th>Table</th><tr>
      
         <%
           String s=request.getParameter("num0");
         String s1= request.getParameter("num1");
         if(s1.equals("")){
         for(int i=1 ; i<=10; i++){
        	 int x=Integer.parseInt(s);
        	 %>
       <tr>
       <td><%= p(x,i) %> </td>
       </tr>
       
       <%}}else{
    	   int b=Integer.parseInt(request.getParameter("num"));
    	   int a=Integer.parseInt(s1);
    	   for(int i=b; i<=a; i++){%>
    	   <tr><th>table of <%= i%></th><tr>
            <% for(int j=1; j<=10; j++){%>

       <td><%= p(i,j)%> </td></tr>
       
       <%}}} %>
   </table><br>
   <a href="Table.jsp"> Back</a>

</body>
</html>