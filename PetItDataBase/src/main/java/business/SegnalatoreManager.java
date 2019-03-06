package business;

import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.persistence.EntityManager;

import modello.Segnalatore;
import utility.Programma;

public class SegnalatoreManager {
private static Logger log = Logger.getLogger("petit-business");
	
	public static void aggiungiSegnalatore(Segnalatore s) {
		EntityManager em = Programma.getEm();
		Segnalatore sDb = null;
		if(s.getCodiceFiscale() != null) {
			sDb = em.find(Segnalatore.class, s.getCodiceFiscale());
		}
		if (sDb == null) {
			em.getTransaction().begin();
			em.persist(s); 
			em.getTransaction().commit();
			log.log(Level.INFO, "aggiunta segnalatore");
		} else {
			log.log(Level.WARNING, "segnalatore esiste già");
		}
	}
	
	public static Segnalatore  trovaSegnalatore(String idUtente) {
		EntityManager em = Programma.getEm();
		Segnalatore sDb = null;
			sDb = em.find(Segnalatore.class, idUtente);
			if (sDb != null) {
				return sDb;
			}
			else return null;
		
		
	}
	
	public static List<Segnalatore> elencoSegnalatori() {
		EntityManager em = Programma.getEm();
		return em.createQuery("select s from Segnalatore s", Segnalatore.class).getResultList();
	}
	public static void aggiungiSegnalatore(String codiceFiscale, String nome, String cognome,
			Date dataNascita) {
		EntityManager em = Programma.getEm();
	}

	public static List<Segnalatore> elencoSegnalatoriPerStato(String stato) {
		EntityManager em = Programma.getEm();
		switch(stato) {
		case "ban":
			return em.createQuery("select s from Segnalatore s where s.ban=:true", Segnalatore.class)
					.setParameter("true", true).getResultList();
		case "online":
			return em.createQuery("select s from Segnalatore s where s.statoUtente=:true", Segnalatore.class)
					.setParameter("true", true).getResultList();
		case "attivi":
			return em.createQuery("select s from Segnalatore s where s.attivo=:true", Segnalatore.class)
					.setParameter("true", true).getResultList();
		case "admin":
			return em.createQuery("select s from Segnalatore s where s.admin=:true", Segnalatore.class)
					.setParameter("true", true).getResultList();
		default:
			return null;
		}
		
	}

	public static List<Segnalatore> elencoSegnalatoriNonPerStato(String stato) {
		EntityManager em = Programma.getEm();
		return em.createQuery("select s from Segnalatore s where s.statoUtente <> :stato", Segnalatore.class)
				.setParameter("stato", stato)
				.getResultList();
	}
	
}
