<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		
		
		  <!-- %!는 메서드 공간  -->
		  
		  <%!public int getMok(int a, int b){
		 		return a / b;
		 	} %>
		 	
		 	
		<!--
		
		//1. x y값을 넘겼기 때문에 값을 받는다
		%는  자바 코드를 적을 수 있슴 
		
		  -->
		  
		 <%
		 	int x =Integer.parseInt(request.getParameter("xx"));
		 	int y =Integer.parseInt(request.getParameter("yy"));
		 	
		 	
		 	int hap = x + y;
		 	int cha = x - y;
		 	int gob = x * y;
		 	int mok = x / y;
		 	int mok2= getMok(x, y);
		 	

		 	
		 
		 %>
		 <!-- 현재 상태에서 총 합이 10이 넘을때만 결과화면 나오게 
		  -->
		  
		  <%
		  
		   if(hap > 10) {
			   
		   
			   
		  %>
		  
		 <div style ="background-color : pink; border : 2px solid">
	<h1>	 <%= x %> + <%= y %> =<%= hap %></h1>
	<h1>	 <%= x %> - <%= y %> =<%= cha %></h1>
	<h1>	 <%= x %> * <%= y %> =<%= gob %></h1>
	<h1>	 <%= x %> / <%= y %> =<%= mok %></h1>
	<h1>	<%=mok2 %></h1>
	<h1>	<%=getMok(x, y)%> </h1>
	
		 </div>
		 
		 <% } %>
		 
</body>
</html> 