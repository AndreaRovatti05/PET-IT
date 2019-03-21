package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import business.AnimaleSegnalatoManager;

/**
 * Servlet implementation class RimuoviAnimaleSegnalato
 */
@WebServlet("/rimuoviAnimaleSegnalato")
public class RimuoviAnimaleSegnalato extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public RimuoviAnimaleSegnalato() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer idDaEliminare = Integer.valueOf(request.getParameter("idAnimale"));

		AnimaleSegnalatoManager.eliminaAnimaleSegnalato(idDaEliminare);
		response.sendRedirect("elencoAnimaliSegnalati");
	}
}
