<%@page import="com.tables.Employee"%>
<%@page import="javax.persistence.EntityTransaction"%>
<%@page import="javax.persistence.EntityManager"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

int id = Integer.parseInt(request.getParameter("id"));
EntityManagerFactory emf = Persistence.createEntityManagerFactory("myunit");
EntityManager em = emf.createEntityManager();
Employee s = em.find(Employee.class, id);
if(s==null) {
	out.println("employee not found");
	
}

else{
%>

<h1><%=s.getId() %></h1>
<h1><%=s.getName() %></h1>
<h1><%=s.getDept() %></h1>
<h1><%=s.getAge() %></h1>


<%} %>

<br>
<a href="index.jsp">please return to the form</a>
</body>
</html>