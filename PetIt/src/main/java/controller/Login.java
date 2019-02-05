package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import business.AccessoApplicazione;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
	
				
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		out.println("<html><body>");
		out.println("stiamo gestendo la sua richiesta signor " + request.getParameter("username"));
		out.println("</body></html>");
		String messaggio = new String();
		if(AccessoApplicazione.login(username, password)){
			request.getSession().setAttribute("email", username);
			
			response.sendRedirect(response.encodeRedirectURL("home.jsp"));
		} else {
			response.sendRedirect(response.encodeRedirectURL("login.jsp"));
		}
		
		
		
		
	}

}
