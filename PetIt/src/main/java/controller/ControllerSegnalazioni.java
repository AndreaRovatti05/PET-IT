package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import business.SegnalazioneManager;
import modello.Segnalazione;

@WebServlet("/elencoSegnalazioni")
public class ControllerSegnalazioni  extends HttpServlet{
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public ControllerSegnalazioni() {
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Segnalazione> segnalazioni = SegnalazioneManager.elencoSegnalazioni();
		
		
		request.setAttribute("elencoSegnalazioni", segnalazioni);
		request.getRequestDispatcher("segnalazioni.jsp").forward(request, response);
	}

}
