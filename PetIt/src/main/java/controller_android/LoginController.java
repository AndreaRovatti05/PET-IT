package controller_android;

import java.io.IOException;
import java.util.TreeMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.fasterxml.jackson.databind.ObjectMapper;
import business.AccessoApplicazione;
import business.UtenteRegistratoManager;
import modello.UtenteRegistrato;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("loginAndroid")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		UtenteRegistrato login = AccessoApplicazione.loginAndroid(username, password);
		ObjectMapper om = new ObjectMapper();
		response.setContentType("application/json");
		if (login != null) {
			response.getWriter().append(om.writeValueAsString(login));
		} else {
			TreeMap<Object, Object> risposta = new TreeMap<>();
			risposta.put("messaggio", "Email o password errati");
			response.getWriter().append(om.writeValueAsString(risposta));
		}
	}
}
