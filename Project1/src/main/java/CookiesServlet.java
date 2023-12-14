import javax.servlet.http.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import java.io.*;

@WebServlet("/setcookies")
public class CookiesServlet extends HttpServlet{
 @Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	PrintWriter out=resp.getWriter();
	resp.setContentType("text/html");
	out.print("hello this is sot cookie servlet");
	Cookie ck=new Cookie("username","root");
	ck.setMaxAge(60);
	resp.addCookie(ck);
	out.print("<br>");
	out.print("cookies set successfully");
}
 @Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req,resp);
	}

}
