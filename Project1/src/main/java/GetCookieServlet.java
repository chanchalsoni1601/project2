import javax.servlet.http.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import java.io.*;
@WebServlet("/getcookies")
public class GetCookieServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter	out=resp.getWriter();
		resp.setContentType("text/html");
		out.print("hello this is get cookie");
		out.print("<br>");
		Cookie[]ck=req.getCookies();
		if(ck==null) {
			out.print("no cookie found");
		}
		for (int i=0;i< ck.length;i++) {
			out.print(ck[i].getName());
			out.print("<br>");
			out.print(ck[i].getValue());
			out.print("<hr>");
		}
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req,resp);
	}

}
