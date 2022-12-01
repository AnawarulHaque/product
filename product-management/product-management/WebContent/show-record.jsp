<%@page import="java.sql.*"%>
<html>
 <body>
  <%
  String pid=request.getParameter("pid");
  PreparedStatement ps=(PreparedStatement)application.getAttribute("select");
  ps.setString(1,pid);
  ResultSet rst=ps.executeQuery();
  if(rst.next())
  {
	  %>
	  <%@ include file="menu.jsp" %>
	  <table class='tar' border="1" style='width:40%'>
	   <tr style='background-color: orange;color:white;font-size:24px'>
	    <td colspan="2" align="center">Product Details</td>
	   </tr>
	   <tr>
	    <th align="left">Product Id</th>
	    <td><%=rst.getString(1)%></td>
	   </tr>
	   <tr>
	    <th align="left">Product name</th>
	    <td><%=rst.getString(2)%></td>
	   </tr>
	   <tr>
	    <th align="left">Product brand</th>
	    <td><%=rst.getString(3)%></td>
	   </tr>
	   <tr>
	    <th align="left">Product quantity</th>
	    <td><%=rst.getString(4)%></td>
	   </tr>
	   <tr>
	    <th align="left">Product price</th>
	    <td>&#8377;<%=rst.getString(5)%></td>
	   </tr>
	  </table>	  
	  <%
	  return;
  }
  %>
  <jsp:include page="search.jsp" /> 
  <div class='dvl'>
	 <h2 style='color:red'>Product with id <%=pid%> not found</h2>
   </div>
 </body>
</html>
