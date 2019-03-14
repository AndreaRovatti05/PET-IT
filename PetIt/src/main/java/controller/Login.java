package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import business.AccessoApplicazione;


@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");				
		if(AccessoApplicazione.login(username, password)){
			request.getSession().setAttribute("email", username);
			
			response.sendRedirect(response.encodeRedirectURL("home.jsp"));
		} else {
			request.setAttribute("messaggio", "l' username o la password sono errati!");
			request.getRequestDispatcher("login.jsp").forward(request, response);
			
		}
		
		
		
		
	}

}
