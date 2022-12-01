<%@page import="java.sql.*"%>
<%@ include file="menu.jsp" %>
<html>
 <body>
  <%
  PreparedStatement ps=(PreparedStatement)application.getAttribute("insert");
  ps.setString(1,request.getParameter("pid"));
  ps.setString(2,request.getParameter("name"));
  ps.setString(3,request.getParameter("brand"));
  ps.setString(4,request.getParameter("quantity"));
  ps.setString(5,request.getParameter("price"));
  ps.executeUpdate();
  %>
  <div class='dv'>
   <h2>Product record has been inserted successfully</h2>
  </div>
 </body>
</html>