package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DizionariController
 */
@WebServlet("/dizionari")
public class DizionariController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DizionariController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json");
		String json = "{ \"taglie\" : [ \"Piccola\", \"Media\", \"Grande\" ], " +
		" \"tipiPelo\" : [ \"Corto\", \"Medio\", \"Lungo\", \"Glabro\", \"Riccio\" ], " + 
	    " \"statiFisici\": [ \"Ferito\", \"Deperito\", \"In salute\", \"Altro\" ], " + 
		" \"statiMentali\": [ \"Impaurito\", \"Agitato\", \"Amichevole\", \"Aggressivo\", \"Altro\" ] }";
		response.getWriter().append(json);
	}

}
