package business;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.persistence.EntityManager;

import modello.AnimaleSegnalato;
import modello.Razza;
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
			log.log(Level.INFO, "aggiunta presenza");
		} else {
			log.log(Level.WARNING, "presenza esiste già");
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

	public static AnimaleSegnalato perId(String parameter) {
		if (parameter != null) {
			EntityManager em = Programma.getEm();
			return em.find(AnimaleSegnalato.class, parameter);
		}
		return null;
	}

	public static AnimaleSegnalato ricercaRecord(String idAnimale) {
		EntityManager em = Programma.getEm();
		AnimaleSegnalato Animale = em.find(AnimaleSegnalato.class, idAnimale);
		em.refresh(Animale);
		return Animale;
	}

	public static void modificaAnimaleSegnalato(String idDaModificare, String colorePelo, String razza,
			String statoFisico, String statoMentale, String taglia, String tipoPelo) {
		EntityManager em = Programma.getEm();
		Razza findrazza = em.find(Razza.class, razza);
		AnimaleSegnalato nuovoanimale = ricercaRecord(idDaModificare);
		nuovoanimale.setColorePelo(colorePelo);
		nuovoanimale.setRazza(findrazza);
		nuovoanimale.setStatoFisico(statoFisico);
		nuovoanimale.setStatoMentale(statoMentale);
		nuovoanimale.setTaglia(taglia);
		nuovoanimale.setTipoPelo(tipoPelo);
		nuovoanimale = em.merge(nuovoanimale);
	    em.flush();
	    em.clear();

	}
}
