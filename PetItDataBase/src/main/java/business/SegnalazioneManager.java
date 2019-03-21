package business;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.persistence.EntityManager;

import modello.AnimaleSegnalato;
import modello.Segnalatore;
import modello.Segnalazione;
import utility.Programma;

public class SegnalazioneManager {
	private static Logger log = Logger.getLogger("petit-business");

	public static void aggiungiSegnalazione(Segnalazione s) {
		EntityManager em = Programma.getEm();
		Segnalazione sDb = null;
		if (s.getIdSegnalazione() != null) {
			sDb = em.find(Segnalazione.class, s.getIdSegnalazione());
		}
		if (sDb == null) {
			em.getTransaction().begin();
			em.persist(s);
			em.getTransaction().commit();
			log.log(Level.INFO, "aggiunta segnalazione");
		} else {
			log.log(Level.WARNING, "segnalazone esiste già");
		}
	}

	public static List<Segnalazione> elencoSegnalazioni() {
		EntityManager em = Programma.getEm();
		return em.createQuery("select s from Segnalazione s", Segnalazione.class).getResultList();
	}

	public static void eliminaSegnalazione(Integer idDaEliminare) {
		EntityManager em = Programma.getEm();
		Segnalazione se = em.find(Segnalazione.class, idDaEliminare);
		if (se != null) {
			AnimaleSegnalato as = se.getAnimale();
			if (as.getSegnalazioni().size() == 1) {
				em.getTransaction().begin();
				em.remove(as);
				em.getTransaction().commit();
			} else {
				em.getTransaction().begin();
				em.remove(se);
				em.getTransaction().commit();
			}
		}
	}

	public static Segnalazione perId(Integer parameter) {
		if (parameter != null) {
			EntityManager em = Programma.getEm();
			return em.find(Segnalazione.class, parameter);
		}
		return null;
	}

	public static void AggiungiSegnalazioneAndroid(Segnalazione s, AnimaleSegnalato a) {
		EntityManager em = Programma.getEm();
		Segnalazione sDb = null;
		if (s.getIdSegnalazione() != null) {
			sDb = em.find(Segnalazione.class, s.getIdSegnalazione());
		}
		if (sDb == null) {
			em.getTransaction().begin();
			em.persist(s);
			em.persist(a);
			em.getTransaction().commit();
			log.log(Level.INFO, "aggiunta segnalazione");
		} else {
			log.log(Level.WARNING, "segnalazone esiste già");
		}
		
	}

}
