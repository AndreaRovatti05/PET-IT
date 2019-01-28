package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import business.UtenteRegistratoManager;
import modello.UtenteRegistrato;


public class ControllerUtenteRegistrato {

	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public ControllerUtenteRegistrato() {
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<UtenteRegistrato> utenti = UtenteRegistratoManager.elencoUtenti();

		request.setAttribute("elencoUtenti", utenti);
		request.getRequestDispatcher("segnalatori.jsp").forward(request, response);
	}
	
}
