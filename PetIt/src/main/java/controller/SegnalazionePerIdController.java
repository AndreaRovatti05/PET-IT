package controller;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import business.SegnalazioneManager;
import modello.Segnalazione;

/**
 * Servlet implementation class SegnalazionePerIdController
 */
@WebServlet("/segnalazionePerId")
public class SegnalazionePerIdController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SegnalazionePerIdController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) {
		String idStr = request.getParameter("idSegnalazione");
		System.out.println(idStr);
		Integer idNum = Integer.valueOf(idStr);
		
		ObjectMapper om = new ObjectMapper();
		response.setContentType("application/json");
		Segnalazione s = SegnalazioneManager.perId(idNum);	
		try {
			response.getWriter().append(om.writeValueAsString(s));
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
		//		ObjectMapper om = new ObjectMapper();
//		response.setContentType("application/json");
//		response.getWriter().append(om.writeValueAsString(SegnalazioneManager.perId(Integer.valueOf(request.getParameter("idSegnalazione")))));
//	}
}
