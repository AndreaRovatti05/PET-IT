package business;

import java.util.logging.Level;
import java.util.logging.Logger;

import javax.persistence.EntityManager;

import modello.AnimaleSegnalato;
import modello.Segnalatore;
import utility.Programma;

public class SegnalatoreManager {
private static Logger log = Logger.getLogger("petit-business");
	
	public static void aggiungiSegnalatore(Segnalatore s) {
		EntityManager em = Programma.getEm();
		AnimaleSegnalato aDb = null;
		if(s.getCodiceFiscale() != null) {
			aDb = em.find(AnimaleSegnalato.class, s.getCodiceFiscale());
		}
		if (aDb == null) {
			em.getTransaction().begin();
			em.persist(s); 
			em.getTransaction().commit();
			log.log(Level.INFO, "aggiunta presenza");
		} else {
			log.log(Level.WARNING, "presenza esiste già");
		}
	}
}
