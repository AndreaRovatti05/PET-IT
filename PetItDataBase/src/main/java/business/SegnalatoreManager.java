package business;

import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.persistence.EntityManager;

import modello.Indirizzo;
import modello.Segnalatore;
import utility.Programma;

public class SegnalatoreManager {
private static Logger log = Logger.getLogger("petit-business");
	

	public static void aggiungiSegnalatore(String email, String nome, String cognome, String username, String password, String cf  ) {
		EntityManager em = Programma.getEm();
		Segnalatore s = null;
			s = em.find(Segnalatore.class, email);
		if (s != null) {
			log.log(Level.WARNING, "segnalatore esiste già");
		} else {
			Segnalatore sDb = new Segnalatore();
			Indirizzo i=new Indirizzo();
			sDb.setIdUtente(email);
			sDb.setCodiceFiscale(cf);
			sDb.setCognome(cognome);
			sDb.setNome(nome);
			sDb.setNomeUtente(username);
			sDb.setPassword(password);
			sDb.setAdmin(true);
			sDb.setAttivo(true);
			sDb.setStatoUtente(false);
			sDb.setBan(false);
			i.addUtenti(sDb);
			
			em.getTransaction().begin();
			em.persist(sDb);
			em.persist(i);
			em.getTransaction().commit();
			
			log.log(Level.INFO, "aggiunta segnalatore");
			
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

	public static void modificaSegnalatore(Segnalatore s) {
		// metodo che cerca l'utente e se c'è lo modifica		
	}
	
}
