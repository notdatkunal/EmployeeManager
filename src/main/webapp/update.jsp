
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

String name = request.getParameter("name"); 
String dept = request.getParameter("dept");
int age = Integer.parseInt(request.getParameter("age"));
int id = Integer.parseInt(request.getParameter("id"));

EntityManagerFactory emf = Persistence.createEntityManagerFactory("myunit");
EntityManager em = emf.createEntityManager();
EntityTransaction et = em.getTransaction();
Employee emp = new Employee();


emp.setAge(age);
emp.setDept(dept);
emp.setId(id);
emp.setName(name);
et.begin();
em.merge(emp);
et.commit();


response.getWriter().write("<script type=\"text/javascript\">alert(\"updated\")</script>");
request.getRequestDispatcher("index.jsp").include(request, response);
%>

</body>
</html>