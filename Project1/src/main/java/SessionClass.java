import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.annotation.*;
import java.io.*;
import java.util.Date;
@WebServlet("/session")
public class SessionClass extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	PrintWriter out=resp.getWriter();
	resp.setContentType("text/html");
	HttpSession session=req.getSession(true);
	out.print("session object="+session+"<br>");
	out.print("<h3>ID:"+session.getId()+"</h3>");
	out.print("<h3>creation time :"+new Date(session.getCreationTime())+"</h3>");
	out.print("<h3>last accessed time :"+new Date(session.getLastAccessedTime())+"</h3>");
	session.setAttribute("uname","pankaj verma");
	HttpSession Session=req.getSession(false);
	if(session!=null) {
		out.print(session.getId());
		String uname=(String)session.getAttribute("uname");
		out.print("<hr><h3>uname="+uname+"</h3>");
		
				
	}else {
		out.print("<h3>session not fount</h3>");
	}
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req,resp);
	}
	

}
