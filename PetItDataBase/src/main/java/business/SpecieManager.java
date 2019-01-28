package business;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.persistence.EntityManager;

import modello.AnimaleSegnalato;
import modello.Specie;
import utility.Programma;

public class SpecieManager {
private static Logger log = Logger.getLogger("petit-business");
	
	public static void aggiungiSpecie(Specie sp) {
		EntityManager em = Programma.getEm();
		AnimaleSegnalato aDb = null;
		if(sp.getIdSpecie() != null) {
			aDb = em.find(AnimaleSegnalato.class, sp.getIdSpecie());
		}
		if (aDb == null) {
			em.getTransaction().begin();
			em.persist(sp); 
			em.getTransaction().commit();
			log.log(Level.INFO, "aggiunta presenza");
		} else {
			log.log(Level.WARNING, "presenza esiste già");
		}
	}
	
	public static List<Specie> all() {
		EntityManager em = Programma.getEm();
		return em.createQuery("select s from Specie s", Specie.class).getResultList();
	}
}
