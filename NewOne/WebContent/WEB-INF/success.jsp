<%@ page language="java" contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String file = request.getParameter("file");

try {
 Class.forName("com.mysql.jdbc.Driver");
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/firstdb", "root", "root");
 Statement st = con.createStatement();
 int i = st.executeUpdate("insert into users1 values('" + file +  "')");
 if (i > 0) {
	 out.println("Thank you for register ! Please <a href='index.html'>Login</a> to continue.");
 } else {
	 out.println("unsuccessful");
 }
 
} catch (Exception e) {
 System.out.print(e);
 e.printStackTrace();
}
%>