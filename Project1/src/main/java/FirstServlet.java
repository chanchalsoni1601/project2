

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FirstServlet extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		PrintWriter out = resp.getWriter();
		resp.setContentType("text/html");
		out.print("<h1>Hello Mr.</h1>");
		out.print( "<p>Hey this is my first web app</p>");
		out.print("<a href='https://www.google.com'>Google Link</a>") ;
		out.print("<marquee>Hello enjoy our webapplication</marquee>") ;
				
	
	}
}