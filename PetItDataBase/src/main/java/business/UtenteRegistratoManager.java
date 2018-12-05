package business;

import java.util.logging.Level;
import java.util.logging.Logger;

import javax.persistence.EntityManager;

import modello.AnimaleSegnalato;
import modello.UtenteRegistrato;
import utility.Programma;

public class UtenteRegistratoManager {
private static Logger log = Logger.getLogger("petit-business");
	
	public static void aggiungiUtenteRegistrato(UtenteRegistrato u) {
		EntityManager em = Programma.getEm();
		AnimaleSegnalato aDb = null;
		if(u.getIdUtente() != null) {
			aDb = em.find(AnimaleSegnalato.class, u.getIdUtente());
		}
		if (aDb == null) {
			em.getTransaction().begin();
			em.persist(u); 
			em.getTransaction().commit();
			log.log(Level.INFO, "aggiunta presenza");
		} else {
			log.log(Level.WARNING, "presenza esiste già");
		}
	}
}
