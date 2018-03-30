<%-- 
    Document   : signup1
    Created on : Mar 13, 2018, 12:27:31 AM
    Author     : akshaykhatter
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String firstname=request.getParameter("firstname");
String lastname=request.getParameter("lastname");
String gender=request.getParameter("gender");
String services=request.getParameter("service");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Influencers", "root", "");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into user(firstname,lastname,gender,services)values('"+firstname+"','"+lastname+"','"+gender+"','"+services+"')");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>