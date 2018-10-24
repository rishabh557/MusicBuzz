<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
<%
String Phone=request.getParameter("Phone");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/users", "root", "rishabh123");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM register WHERE Phone="+Phone);
response.sendRedirect("adminuser.jsp");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
    