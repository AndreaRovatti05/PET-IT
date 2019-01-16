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


/**
 * Servlet implementation class ControllerFeedSegnalazioni
 */
@WebServlet("/feedSegnalazioni")
public class ControllerFeedSegnalazioni extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerFeedSegnalazioni() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Segnalazione> feedSegnalazioni = SegnalazioneManager.elencoSegnalazioni();
		
		request.setAttribute("feedSegnalazioni", feedSegnalazioni);
		request.getRequestDispatcher("feedSegnalazioni.jsp").forward(request, response);
	}

}
