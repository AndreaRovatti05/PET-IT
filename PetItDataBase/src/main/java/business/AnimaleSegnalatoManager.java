package business;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.persistence.EntityManager;

import modello.AnimaleSegnalato;
import modello.Razza;
import modello.Specie;
import utility.Programma;

public class AnimaleSegnalatoManager {
	private static Logger log = Logger.getLogger("petit-business");

	public static void aggiungiAnimaleSegnalato(AnimaleSegnalato a) {
		EntityManager em = Programma.getEm();
		AnimaleSegnalato aDb = null;
		if (a.getIdAnimale() != null) {
			aDb = em.find(AnimaleSegnalato.class, a.getIdAnimale());
		}
		if (aDb == null) {
			em.getTransaction().begin();
			em.persist(a);
			em.getTransaction().commit();
			log.log(Level.INFO, "aggiunto animale");
		} else {
			log.log(Level.WARNING, "animale già esistente");
		}
	}

	public static List<AnimaleSegnalato> elencoAnimaliSegnalati() {
		EntityManager em = Programma.getEm();
		return em.createQuery("select a from AnimaleSegnalato a", AnimaleSegnalato.class).getResultList();
	}

	public static void aggiungiAnimaleSegnalato(String colorePelo, String tipoPelo, String taglia, String statoFisico,
			String statoMentale) {
		EntityManager em = Programma.getEm();
		/*
		 * if (r != null && s != null) { Presenza p = new Presenza(); p.setStudente(s);
		 * p.setRegistro(r); p.setDataOraEntrata(entrata); aggiungiPresenza(p); } else {
		 * log.log(Level.WARNING, "studente o registro inesistenti"); }
		 */
	}

	public static void eliminaAnimaleSegnalato(String idDaEliminare) {
		EntityManager em = Programma.getEm();
		AnimaleSegnalato as = em.find(AnimaleSegnalato.class, idDaEliminare);
		if (as != null) {
			em.getTransaction().begin();
			em.remove(as);
			em.getTransaction().commit();
		}

	}

	public static AnimaleSegnalato perId(Integer parameter) {
		if (parameter != null) {
			EntityManager em = Programma.getEm();
			return em.find(AnimaleSegnalato.class, parameter);
		}
		return null;
	}

	public static void modificaAnimaleSegnalato(AnimaleSegnalato a, Integer id, Specie s, Razza r) {
		EntityManager em = Programma.getEm();
		AnimaleSegnalato aDb = em.find(AnimaleSegnalato.class, id);
		
		if (aDb != null) {

			em.getTransaction().begin();
			aDb.setColorePelo(a.getColorePelo());
			aDb.setRazza(a.getRazza());
			aDb.setStatoFisico(a.getStatoFisico());
			aDb.setStatoMentale(a.getStatoMentale());
			aDb.setTaglia(a.getTaglia());
			aDb.setTipoPelo(a.getTipoPelo());
			s.addRazza(r);
			r.addAnimale(aDb);
			em.getTransaction().commit();
			log.log(Level.INFO, "aggiunto animale");
		} else {
			log.log(Level.WARNING, "animale inesistente");
		}
	}
}
