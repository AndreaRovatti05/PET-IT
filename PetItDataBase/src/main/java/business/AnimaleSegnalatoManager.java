package business;

import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.persistence.EntityManager;

import modello.AnimaleSegnalato;
import utility.Programma;


public class AnimaleSegnalatoManager {
private static Logger log = Logger.getLogger("petit-business");
	
	public static void aggiungiAnimaleSegnalato(AnimaleSegnalato a) {
		EntityManager em = Programma.getEm();
		AnimaleSegnalato aDb = null;
		if(a.getIdAnimale() != null) {
			aDb = em.find(AnimaleSegnalato.class, a.getIdAnimale());
		}
		if (aDb == null) {
			em.getTransaction().begin();
			em.persist(a); 
			em.getTransaction().commit();
			log.log(Level.INFO, "aggiunta presenza");
		} else {
			log.log(Level.WARNING, "presenza esiste gi�");
		}
	}
	public static List<AnimaleSegnalato> elencoAnimaliSegnalati() {
		EntityManager em = Programma.getEm();
		return em.createQuery("select a from AnimaleSegnalato a", AnimaleSegnalato.class).getResultList();
	}
	public static void aggiungiAnimaleSegnalato(String colorePelo,String tipoPelo,String taglia,
			String statoFisico, String statoMentale,String commento) {
		EntityManager em = Programma.getEm();
		/*
		if (r != null && s != null) {
			Presenza p  = new Presenza();
			p.setStudente(s);
			p.setRegistro(r);
			p.setDataOraEntrata(entrata);
			aggiungiPresenza(p);
		} else {
			log.log(Level.WARNING, "studente o registro inesistenti");
		}*/
	}
	
	
	

}
