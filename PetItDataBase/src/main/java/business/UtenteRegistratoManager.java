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
			log.log(Level.WARNING, "presenza esiste gi�");
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

	public static void modificaStato(String idUtente) {
		EntityManager em = Programma.getEm();
		UtenteRegistrato nuovoutente = em.find(UtenteRegistrato.class, idUtente);
		em.getTransaction().begin();
		if(nuovoutente.getStatoUtente() == false) {
			nuovoutente.setStatoUtente(true);
		}else {
			nuovoutente.setStatoUtente(false);

		}
		
		em.getTransaction().commit();
	}

	public static Object perId(String parameter) {
		if (parameter != null) {
			EntityManager em = Programma.getEm();
			return em.find(UtenteRegistrato.class, parameter);
		}
		return null;
	}


	public static void modificaBan(String idDaModificare) {
		Boolean ban=false;
		EntityManager em = Programma.getEm();
		UtenteRegistrato modificaUt = em.find(UtenteRegistrato.class, idDaModificare);
		if(modificaUt.getBan()==ban) {
			ban=true;
		} 
		em.getTransaction().begin();
		modificaUt.setBan(ban);
		em.getTransaction().commit();
		
	}

	public static void modificaAdmin(String idDaModificare) {
		Boolean admin=false;
		EntityManager em = Programma.getEm();
		UtenteRegistrato modificaUt = em.find(UtenteRegistrato.class, idDaModificare);
		if(modificaUt.getBan()==admin) {
			admin=true;
		} 
		em.getTransaction().begin();
		modificaUt.setAdmin(admin);
		em.getTransaction().commit();
	}

	public static boolean checkUsernameExists(String email) {
		// TODO Auto-generated method stub
		return Programma.getEm().find(UtenteRegistrato.class, email) != null;
	}

	public static UtenteRegistrato signUpAndroid(String email, String password, String username) {
		UtenteRegistrato ut = new UtenteRegistrato();
		EntityManager em = Programma.getEm();
		ut.setAdmin(false);
		ut.setAttivo(true);
		ut.setIdUtente(email);
		ut.setNomeUtente(username);
		ut.setPassword(password);
		em.getTransaction().begin();
		em.persist(ut);
		em.getTransaction().commit();
		return ut;
		
	}
	
}



