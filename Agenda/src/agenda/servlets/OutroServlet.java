package agenda.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/dnv")
public class OutroServlet extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		out.println("<html>");
		out.println("<body>");
			out.println("<h1>Consegui fazer o outro servlet!</h1>");
			out.println("<h1>Nome: Shyrlane Mello</h1>");
			out.println("<h1>Email: shyrlane.pmello@gmail.com</h1>");
		out.println("</body>");
		out.println("</html>");
	}
	
}
