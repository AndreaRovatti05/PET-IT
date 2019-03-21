package controller_android;

import java.io.IOException;
import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.fasterxml.jackson.databind.ObjectMapper;
import business.SegnalazioneManager;
import modello.AnimaleSegnalato;
import modello.Razza;
import modello.Segnalazione;
import utility.Programma;


/**
 * Servlet implementation class AggiungiSegnalazioneController
 */
@WebServlet("aggiungiSegnalazioneAndroid")
public class AggiungiSegnalazioneController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AggiungiSegnalazioneController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json");
		Segnalazione s= new Segnalazione();
		AnimaleSegnalato a = new AnimaleSegnalato();
		EntityManager em= Programma.getEm();
		//momentaneo
		int id = 1;
		Razza ra = em.find(Razza.class, id);
		a.setRazza(ra);
		a.setTaglia(request.getParameter("taglia"));
		a.setColorePelo(request.getParameter("colorepelo"));
		a.setStatoFisico(request.getParameter("statoFisico"));
		a.setStatoMentale(request.getParameter("statoMentale"));
		s.setNote(request.getParameter("note"));
		a.addSegnalazione(s);
		ObjectMapper om = new ObjectMapper();

		try {
			SegnalazioneManager.AggiungiSegnalazioneAndroid(s, a);
			response.getWriter().append(om.writeValueAsString("Segnalazione inserita"));
		} catch (Exception e) {
			e.printStackTrace();
			response.getWriter().append(om.writeValueAsString("Errore interno. Riprovare. Se persiste contattarci"));
		}
	}

}
