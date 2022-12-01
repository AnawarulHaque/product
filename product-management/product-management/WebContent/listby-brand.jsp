<%@page import="java.sql.*"%>
<%@ include file="menu.jsp" %>
<html>
 <body>
  <%
  PreparedStatement ps=(PreparedStatement)application.getAttribute("brand");
  ps.setString(1,request.getParameter("brand"));
  ResultSet rst=ps.executeQuery();
  %>
  <table class='tar'  border='1'>
   <tr>
    <th align="left">Product Id</th><th align="left">Product name</th>
    <th align="left">Product brand</th><th align="left">Product quantity</th>
    <th align="left">Product price</th>
   </tr>
   <%
   while(rst.next())
   {
	   %>
	   <tr>
	    <td><%=rst.getString(1)%></td>
	    <td><%=rst.getString(2)%></td>
	    <td><%=rst.getString(3)%></td>
	    <td><%=rst.getString(4)%></td>
	    <td>&#8377;<%=rst.getString(5)%></td>
	   </tr>
	   <%
   }
   %>
  </table>
 </body>
</html>
