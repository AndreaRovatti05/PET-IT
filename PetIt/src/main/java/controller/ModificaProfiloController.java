package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import business.SegnalatoreManager;
import modello.Segnalatore;

/**
 * Servlet implementation class ModificaProfiloController
 */
@WebServlet(name = "modificaProfilo", urlPatterns = { "/modificaProfilo" })
public class ModificaProfiloController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModificaProfiloController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Segnalatore s = new Segnalatore();
		s.setIdUtente(request.getParameter("email"));
		//tutti i campi di quella fottuta form
		
		
		SegnalatoreManager.modificaSegnalatore(s);
	}

}
