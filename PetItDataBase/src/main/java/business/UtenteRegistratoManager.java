package business;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.persistence.EntityManager;

import modello.UtenteRegistrato;

import utility.Programma;

public class UtenteRegistratoManager {
private static Logger log = Logger.getLogger("petit-business");
	
	public static void aggiungiUtenteRegistrato(UtenteRegistrato u) {
		EntityManager em = Programma.getEm();
		UtenteRegistrato uDb = null;
		if(u.getIdUtente() != null) {
			uDb = em.find(UtenteRegistrato.class, u.getIdUtente());
		}
		if (uDb == null) {
			em.getTransaction().begin();
			em.persist(u); 
			em.getTransaction().commit();
			log.log(Level.INFO, "aggiunta presenza");
		} else {
			log.log(Level.WARNING, "presenza esiste già");
		}
	}
	
	
	public static List<UtenteRegistrato> elencoUtenti() {
		EntityManager em = Programma.getEm();
		return em.createQuery("select u from UtenteRegistrato u", UtenteRegistrato.class).getResultList();
	}
	public static List<UtenteRegistrato> elencoUtentiBannati() {
		EntityManager em = Programma.getEm();
		return em.createQuery("select u from UtenteRegistrato u where u.stato='ban'", UtenteRegistrato.class).getResultList();
	}
	public static void aggiungiUtenteRegistrato(String email, String nomeUtente) {
		EntityManager em = Programma.getEm();
	}
	
	
}



