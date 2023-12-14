
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class Day3Servlet extends HttpServlet{
	//Instance variables
	
	//Constructors
	
	//Methods
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		resp.setContentType("text/html");
		
		String uname = req.getParameter("uname") == null ? "" : req.getParameter("uname");
		String upass = req.getParameter("upass") == null ? "" : req.getParameter("upass");
		System.out.println(uname);
		System.out.println(upass);
		if(uname.equals("root") && upass.equals("root")) {
//			RequestDispatcher rd = req.getRequestDispatcher("welcome");
//			rd.forward(req, resp);
			resp.sendRedirect("welcome?uname="+uname+"&upass="+upass);
		}else {
			out.print("<center><h1 style='color:red;'>Invalid Credetial</h1></center>");
			RequestDispatcher rd = req.getRequestDispatcher("Day3.html");
			rd.include(req, resp);
		}
		
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req,resp);
	}
}

