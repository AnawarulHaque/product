<%@page import="java.sql.*"%>
<%@ include file="menu.jsp" %>
<html>
 <body>
  <%
  Statement st=(Statement)application.getAttribute("list");
  ResultSet rst=st.executeQuery("select * from productinfo");
  if(!rst.next())
  {
	  %>
	  <div class='dv'>
	   <h2 style='color:red'>Product list is empty</h2>
	  </div>
	  <%
	  return;
  }
  %>
  <table class='tar'  border='1'>
   <tr>
    <th align="left">Product Id</th><th align="left">Product name</th>
    <th align="left">Product brand</th><th align="left">Product quantity</th>
    <th align="left">Product price</th>
   </tr>
   <%
   do
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
   }while(rst.next());
   %>
  </table>
 </body>
</html>
