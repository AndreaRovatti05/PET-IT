package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import business.AnimaleSegnalatoManager;
import modello.AnimaleSegnalato;

/**
 * Servlet implementation class AnimalePerIdController
 */
@WebServlet("/animalePerId")
public class AnimalePerIdController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AnimalePerIdController() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response)  {
		String idStr = request.getParameter("id");
		System.out.println(idStr);
		Integer idNum = Integer.valueOf(idStr);
		
		ObjectMapper om = new ObjectMapper();
		response.setContentType("application/json");
		AnimaleSegnalato as = AnimaleSegnalatoManager.perId(idNum);
		try {
			response.getWriter().append(om.writeValueAsString(as));
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
	}
		
		/*		
		ObjectMapper om = new ObjectMapper();
		response.setContentType("application/json");
		String idStr = request.getParameter("id");
		AnimaleSegnalato as = AnimaleSegnalatoManager.perId(Integer.valueOf(idStr));
		try {
			response.getWriter().append(om.writeValueAsString(as));
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}*/
}
