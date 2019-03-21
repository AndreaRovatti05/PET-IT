package controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import business.SegnalatoreManager;
import modello.Indirizzo;
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
		s.setIdUtente(request.getSession().getAttribute("email").toString());
		s.setNome(request.getParameter("Nome"));
		s.setCognome(request.getParameter("Cognome"));
		s.setNumeroTel(request.getParameter("Numero"));
//		Date data_data = new Date();
//		String data_string = new String (request.getParameter("Data"));
//		SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy");
//		try {
//			data_data = df.parse(data_string);
//		} catch (ParseException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		s.setDataNascita(data_data);
		s.setNomeUtente(request.getParameter("Username"));
		Indirizzo i = new Indirizzo ();
		i.setVia(request.getParameter("Via"));
		i.setCap(Integer.valueOf(request.getParameter("Cap")));
		i.setCivico(request.getParameter("Civico"));
		i.setInterno(request.getParameter("Interno"));
		i.setCitta(request.getParameter("Comune"));
		i.setProvincia(request.getParameter("Provincia"));
		s.setPassword(request.getParameter("Password"));
		
		SegnalatoreManager.modificaSegnalatore(s, i);
		response.sendRedirect(response.encodeRedirectURL("profiloutente.jsp"));
	}

}
