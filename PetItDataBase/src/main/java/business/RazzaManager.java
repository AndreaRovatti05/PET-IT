package business;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.persistence.EntityManager;

import modello.AnimaleSegnalato;
import modello.Razza;
import modello.Specie;
import utility.Programma;

public class RazzaManager {
private static Logger log = Logger.getLogger("petit-business");
	
	public static void aggiungiRazza(Razza r) {
		EntityManager em = Programma.getEm();
		AnimaleSegnalato aDb = null;
		if(r.getId() != null) {
			aDb = em.find(AnimaleSegnalato.class, r.getId());
		}
		if (aDb == null) {
			em.getTransaction().begin();
			em.persist(r); 
			em.getTransaction().commit();
			log.log(Level.INFO, "aggiunta presenza");
		} else {
			log.log(Level.WARNING, "presenza esiste gi�");
		}
	}

	public static List<Razza> all() {
		EntityManager em = Programma.getEm();
		return em.createQuery("select r from Razza r", Razza.class).getResultList();
	}
}
