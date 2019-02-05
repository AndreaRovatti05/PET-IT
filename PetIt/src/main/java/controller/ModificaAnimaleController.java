package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.ReportAsSingleViolation;

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
		response.setContentType("application/json");
		String idDaModificare = new String(request.getParameter("idAnimale"));
		String colorePelo = new String(  request.getParameter("colorePelo"));
		//String razza= request.getParameter("razza");
		String statoFisico= new String(request.getParameter("statoFisico"));
		String statoMentale=new String( request.getParameter("statoMentale"));
		String taglia=new String( request.getParameter("taglia"));
		String tipoPelo= new String(request.getParameter("tipoPelo"));
		AnimaleSegnalatoManager.modificaAnimaleSegnalato(idDaModificare, colorePelo, statoFisico, statoMentale, taglia, tipoPelo);
		response.sendRedirect(response.encodeRedirectURL("elencoAnimaliSegnalati"));
}

}
