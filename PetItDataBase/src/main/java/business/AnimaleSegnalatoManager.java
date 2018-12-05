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
			log.log(Level.WARNING, "presenza esiste già");
		}
	}
	
	

}
