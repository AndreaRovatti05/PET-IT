package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import business.SegnalatoreManager;
import modello.Segnalatore;
import modello.UtenteRegistrato;

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
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//UtenteRegistrato ut = new UtenteRegistrato();
		Segnalatore se = new Segnalatore();
		se.setCodiceFiscale(request.getParameter("cfUtente"));
		se.setCognome(request.getParameter("cognomeUtente"));
		se.setNome(request.getParameter("nomeUtente"));
		se.setEmail(request.getParameter("nomeUtente"));
		se.setNomeUtente(request.getParameter("usernameUtente"));
		se.setPassword(request.getParameter("passwordUtente"));
		se.setStatoUtente("Admin");
		SegnalatoreManager.aggiungiSegnalatore(se);
	}

}
