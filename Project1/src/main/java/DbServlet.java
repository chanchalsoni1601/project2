import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.connector.Response;
public class DbServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out=resp.getWriter();
		resp.setContentType("text/html");
		String driver="com.musql.jdbc.Driver";
		String db="jdbc.mysql://localhost:3306/test";
		String username="root";
		String upass="";
		String query="SELECT* FROM'testtable'";
		out.print("<link rel='stylesheet' href = './css/mystyle.css'>");
		out.print("<table><tr><th>Id</th><th>Name</th><th>Phone</th><th>Email</th></tr>");
		try {
			Class.forName(driver);
			Connection con = DriverManager.getConnection(db,username,upass);
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(query);
			while(rs.next()){
				out.print("<tr>");
				out.print("<td>"+rs.getInt("cid")+"</td>");
				out.print("<td>"+rs.getString("cname")+"</td>");
				out.print("<td>"+rs.getString("cphone")+"</td>");
				out.print("<td>"+rs.getString("cemail")+"</td>");
				out.print("</tr>");
			}
			out.print("</table>");
			con.close();
			
		} catch (Exception e) {
			out.print("<h3>some problem occur</h3>");
			
		}
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
