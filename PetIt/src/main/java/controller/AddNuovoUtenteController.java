package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import business.SegnalatoreManager;

/**
 * Servlet implementation class AddNuovoUtenteController
 */
@WebServlet("/addNuovoUtente")
public class AddNuovoUtenteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddNuovoUtenteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//UtenteRegistrato ut = new UtenteRegistrato();
		response.setContentType("application/json");
		String email=(request.getParameter("emailUtente"));
		String cf=(request.getParameter("cfUtente"));
		String cognome =(request.getParameter("cognomeUtente"));
		String nome=(request.getParameter("nomeUtente"));
		String username=(request.getParameter("usernameUtente"));
		String password=(request.getParameter("passwordUtente"));
		SegnalatoreManager.aggiungiSegnalatore(email,nome, cognome,username,password,cf);
		response.sendRedirect(response.encodeRedirectURL("elencoSegnalatori"));

	}

}
