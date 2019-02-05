package business;

import java.util.logging.Logger;

import javax.persistence.EntityManager;

import modello.UtenteRegistrato;
import utility.Programma;
										//LOGIN !!!!
public class AccessoApplicazione {
private static Logger log = Logger.getLogger("business");
	
	public static Boolean login(String nomeUtente, String password) {
		Boolean result = false;
		EntityManager em = Programma.getEm();
		UtenteRegistrato u = em.find(UtenteRegistrato.class, nomeUtente);
		if (u != null) {
			if (!u.getAttivo()) {
				log.warning("accesso con utente non attivo");
				//cambiare accesso
			}
			if (!u.getPassword().equals(password)) {
				log.warning("accesso con password errata");
			}
			result = u.getAttivo() && u.getPassword().equals(password);
		} else {
			log.warning("l'utente " + nomeUtente + " non esiste");
		}
		log.info("accesso di " + nomeUtente + ": " + result);
		return result;
	}
}
