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
EntityTransaction et = em.getTransaction();
Employee s = em.find(Employee.class, id);

et.begin();
em.remove(s);
et.commit();


%>
<h1>employee with id :<%=id %> is removed</h1>


<br>
<a href="index.jsp">please return to the form</a>

</body>
</html>