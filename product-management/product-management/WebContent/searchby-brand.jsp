<%@page import="java.sql.*"%>
<%@ include file="menu.jsp" %>
<html>
 <body>
 <form action="listby-brand.jsp" method="post">
  <table class='taf'>
   <tr>
     <td class='tdp'>Select product brand</td>
     <td class='tdp'>
     	<select name='brand' style="width:180px;font-size:22px">
     	 <%
     	  PreparedStatement ps=(PreparedStatement)application.getAttribute("search");
     	  ResultSet rst=ps.executeQuery();
     	  while(rst.next())
     	  {
     		  %>
     		  <option><%=rst.getString(1)%></option>
     		  <%
     	  }
     	 %>
     	</select>
     </td>
     <td><button class='bt'>Show Records</button></td>
   </tr>
  </table>
 </form> 
 </body>
</html>