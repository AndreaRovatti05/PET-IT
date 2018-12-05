package business;

import java.util.logging.Level;
import java.util.logging.Logger;

import javax.persistence.EntityManager;

import modello.AnimaleSegnalato;
import modello.PosizioniRilevamentiSegnalazioni;
import utility.Programma;

public class PosizioniRilevamentiSegnalazioniManager {
private static Logger log = Logger.getLogger("petit-business");
	
	public static void aggiungiPosizioniRilevamentiSegnalazioni(PosizioniRilevamentiSegnalazioni p) {
		EntityManager em = Programma.getEm();
		AnimaleSegnalato aDb = null;
		if(p.getIdPosizione() != null) {
			aDb = em.find(AnimaleSegnalato.class,p.getIdPosizione());
		}
		if (aDb == null) {
			em.getTransaction().begin();
			em.persist(p); 
			em.getTransaction().commit();
			log.log(Level.INFO, "aggiunta presenza");
		} else {
			log.log(Level.WARNING, "presenza esiste già");
		}
	}
}
