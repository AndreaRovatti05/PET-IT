package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import business.SegnalatoreManager;
import modello.Segnalatore;


@WebServlet("/elencoSegnalatori")
public class ControllerSegnalatore extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public ControllerSegnalatore() {
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Segnalatore> segnalatori = SegnalatoreManager.elencoSegnalatori();
		
		
		request.setAttribute("elencoSegnalatori", segnalatori);
		request.getRequestDispatcher("segnalatori.jsp").forward(request, response);
	}

}
