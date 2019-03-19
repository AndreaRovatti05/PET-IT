package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import business.AccessoApplicazione;
import business.UtenteRegistratoManager;

/**
 * Servlet implementation class Logout
 */
@WebServlet("/Logout")
public class Logout extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String email = String.valueOf(session.getAttribute("email"));
		UtenteRegistratoManager.modificaStato(email);
		AccessoApplicazione.logout(email);
		session.removeAttribute("email");
		session.invalidate();
		response.sendRedirect("login.jsp");
	}
}
