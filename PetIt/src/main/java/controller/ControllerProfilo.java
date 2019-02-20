package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import business.SegnalatoreManager;
import modello.Segnalatore;

@WebServlet("/controllerProfilo")
public class ControllerProfilo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public ControllerProfilo() {
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Segnalatore segnalatore;

		String email = request.getParameter("email");
		segnalatore = SegnalatoreManager.trovaSegnalatore(email);
		if (segnalatore==null) {
			response.sendRedirect("login.jsp");
		}
		else {
			/*request.setAttribute("segnalatore", segnalatore);
			request.getRequestDispatcher("profiloutente.jsp").forward(request, response);*/
			ObjectMapper om = new ObjectMapper();
			response.setContentType("application/json");
			response.getWriter().append(om.writeValueAsString(segnalatore));
			
		}
		

//		request.setAttribute("elencoUtenti", utenti);
//		request.getRequestDispatcher("segnalatori.jsp").forward(request, response);

	}

}
