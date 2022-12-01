import javax.servlet.*;
import javax.servlet.annotation.WebListener;
import java.sql.*;

@WebListener
public class ConnectionListener implements ServletContextListener 
{
	public void contextInitialized(ServletContextEvent sce) 
	{
		ServletContext context=sce.getServletContext();
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp3","root","Haque12@");
			PreparedStatement psinsert=cn.prepareStatement("insert into productinfo values(?,?,?,?,?)");
			context.setAttribute("insert",psinsert);
			Statement st=cn.createStatement();
			context.setAttribute("list",st);
			PreparedStatement psselect=cn.prepareStatement("select * from productinfo where pid=?");
			context.setAttribute("select",psselect);
			PreparedStatement pssearch=cn.prepareStatement("select distinct brand from productinfo");
			context.setAttribute("search",pssearch);
			PreparedStatement psbrand=cn.prepareStatement("select * from productinfo where brand=?");
			context.setAttribute("brand",psbrand);
			System.out.println("Connected...");
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
	}
}
