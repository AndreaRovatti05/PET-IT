package controller;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import business.AnimaleSegnalatoManager;

import modello.AnimaleSegnalato;

@WebServlet("/elencoAnimaliSegnalati")
public class ControllerAnimaliSegnalati extends HttpServlet {
		private static final long serialVersionUID = 1L;

	    /**
	     * Default constructor. 
	     */
	    public ControllerAnimaliSegnalati() {
	    }

		/**
		 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
		 */
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			List<AnimaleSegnalato> animali = AnimaleSegnalatoManager.elencoAnimaliSegnalati();
			
			
			request.setAttribute("elencoAnimaliSegnalati", animali);
			request.getRequestDispatcher("animaliSegnalati.jsp").forward(request, response);
		}

}
