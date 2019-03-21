package controller_android;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.fasterxml.jackson.databind.ObjectMapper;
import business.UtenteRegistratoManager;

/**
 * Servlet implementation class SingInController
 */
@WebServlet("singInAndroid")
public class SingInController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SingInController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json");
		
		String email = new String(request.getParameter("email"));
		String password = new String(request.getParameter("password"));
		String username = new String (request.getParameter("username"));

		ObjectMapper om = new ObjectMapper();

		try {
			if (UtenteRegistratoManager.checkUsernameExists(email)) {
				response.getWriter().append(om.writeValueAsString("Email già  utilizzata, usare un'altra mail."));
			} else {
				UtenteRegistratoManager.signUpAndroid(email, password, username);
				response.getWriter().append(om.writeValueAsString("registrazione avvenuta"));
			}
		} catch (Exception e) {
			e.printStackTrace();
			response.getWriter().append(om.writeValueAsString("Errore interno. Riprovare. Se persiste contattarci"));
		}
	}

}
