package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import business.AnimaleSegnalatoManager;
import modello.Razza;

/**
 * Servlet implementation class ModificaAnimaleController
 */
@WebServlet("/modificaAnimale")
public class ModificaAnimaleController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModificaAnimaleController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idDaModificare = request.getParameter("idAnimale");
		String colorePelo = request.getParameter("colorePelo");
		String razza= request.getParameter("razza");
		String statoFisico= request.getParameter("statoFisico");
		String statoMentale= request.getParameter("statoMentale");
		String taglia= request.getParameter("taglia");
		String tipoPelo= request.getParameter("tipoPelo");
		AnimaleSegnalatoManager.modificaAnimaleSegnalato(idDaModificare, colorePelo, razza, statoFisico, statoMentale, taglia, tipoPelo);
		}

}
