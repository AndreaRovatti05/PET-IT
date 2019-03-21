package controller;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import business.AnimaleSegnalatoManager;
import modello.AnimaleSegnalato;
import modello.Razza;
import modello.Specie;
import utility.Programma;

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
		EntityManager em = Programma.getEm();
		Integer id = Integer.valueOf(request.getParameter("idAnimale"));
		AnimaleSegnalato a =new AnimaleSegnalato();
		Integer ids = Integer.valueOf(request.getParameter("specieSel"));
		Specie s = em.find(Specie.class,ids);
		Integer idr = Integer.valueOf(request.getParameter("razzaSel"));
		
		Razza r = em.find(Razza.class, idr);
		a.setStatoFisico(request.getParameter("statoFisico"));
		a.setColorePelo(request.getParameter("colorePelo"));
		a.setTipoPelo(request.getParameter("tipoPelo"));
		a.setTaglia(request.getParameter("taglia"));
		a.setStatoMentale(request.getParameter("statoMentale"));
		
		AnimaleSegnalatoManager.modificaAnimaleSegnalato(a, id, s, r);
		response.sendRedirect(response.encodeRedirectURL("elencoAnimaliSegnalati"));
}

}
