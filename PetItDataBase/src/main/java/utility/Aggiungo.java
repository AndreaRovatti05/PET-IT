package utility;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import modello.AnimaleSegnalato;
import modello.Indirizzo;
import modello.Razza;
import modello.Segnalatore;
import modello.Segnalazione;
import modello.Specie;
import modello.UtenteRegistrato;

public class Aggiungo {
	public static void main(String[] args) {
		EntityManagerFactory emf;
		EntityManager em;
		emf = Persistence.createEntityManagerFactory("DataBasePetIt");
		em = emf.createEntityManager();
		
		Specie sp= new Specie();	
		Razza ra = new Razza();
		
		sp.setNomeSpecie("Cane");
		ra.setNomeRazza("Labrador");
<<<<<<< HEAD
		sp.addRazza(ra);	
=======
		sp.addRazza(ra);
>>>>>>> branch 'master' of https://github.com/AndreaRovatti05/PET-IT.git
		
		Razza ra1 = new Razza();
		ra1.setNomeRazza("Pincer");
		sp.addRazza(ra1);
		
		Razza ra3= new Razza();
		ra3.setNomeRazza("Golden Retriver");
		sp.addRazza(ra3);
		
		Specie sp1 = new Specie();
		Razza ra2 = new Razza();
		sp1.setNomeSpecie("Gatto");
		ra2.setNomeRazza("Europeo");
		sp1.addRazza(ra2);
			
		Segnalatore se = new Segnalatore();
		Indirizzo i = new Indirizzo();
		se.setIdUtente("mario@rossi.it");
		se.setPassword("pass");
		se.setNomeUtente("mario");
		se.setCodiceFiscale("rssmri");
		se.setCognome("Rossi");
		se.setNome("Mario");
		se.setAdmin(true);
		se.setAttivo(true);
<<<<<<< HEAD
		se.setNumeroTel("+393289999999");
=======
>>>>>>> branch 'master' of https://github.com/AndreaRovatti05/PET-IT.git
		i.setVia("Manzoni");
		i.setProvincia("Roma");
		i.setCivico("100");
		i.setInterno("A");
		i.setCitta("Roma");
		i.setCap(10010);
		i.addUtenti(se);
		
		Segnalatore se1 = new Segnalatore();
		Indirizzo i1 = new Indirizzo();
		se1.setIdUtente("paolo@verdi.it");
		se1.setPassword("pass");
		se1.setNomeUtente("paolo");
		se1.setCodiceFiscale("vrdplo");
		se1.setCognome("Verdi");
		se1.setNome("Paolo");
		se1.setAdmin(false);
		se1.setAttivo(true);
		se1.setNumeroTel("+393289999999");
		i1.setVia("Manzoni");
		i1.setProvincia("Roma");
		i1.setCivico("100");
		i1.setInterno("A");
		i1.setCitta("Roma");
		i1.setCap(10010);
		i1.addUtenti(se1);
		
		Segnalatore se2 = new Segnalatore();
		Indirizzo i2 = new Indirizzo();
		se2.setIdUtente("giovanni@verdi.it");
		se2.setPassword("pass");
		se2.setNomeUtente("giovanni");
		se2.setCodiceFiscale("vrdgvn");
		se2.setCognome("Verdi");
		se2.setNome("giovanni");
		se2.setAdmin(false);
		se2.setAttivo(false);
		se2.setNumeroTel("+393289999999");
		i2.setVia("Manzoni");
		i2.setProvincia("Roma");
		i2.setCivico("100");
		i2.setInterno("A");
		i2.setCitta("Roma");
		i2.setCap(10010);
		i2.addUtenti(se2);
		
		AnimaleSegnalato an =new AnimaleSegnalato();
		Segnalazione sg = new Segnalazione();
		an.setColorePelo("Rosso");
		an.setTipoPelo("Lungo");
		an.setTaglia("Media");
		an.setStatoFisico("Buono");
		an.setStatoMentale("Agitato");
		ra2.addAnimale(an);
		sg.setNote("il cane correva in mezzo alla strada");
		se1.addSegnalazioni(sg);
		an.addSegnalazione(sg);
		
		AnimaleSegnalato an1 =new AnimaleSegnalato();
		Segnalazione sg1 = new Segnalazione();
		an1.setColorePelo("Maculato");
		an1.setTipoPelo("Corto");
		an1.setTaglia("Piccola");
		an1.setStatoFisico("Malnutrito");
		an1.setStatoMentale("Tranquillo");
		ra.addAnimale(an1);
		sg1.setNote("il cane dormiva sotto un cavalcavia");
		se1.addSegnalazioni(sg1);
		an1.addSegnalazione(sg1);
		
		AnimaleSegnalato an2 =new AnimaleSegnalato();
		Segnalazione sg2 = new Segnalazione();
		an2.setColorePelo("Beach");
		an2.setTipoPelo("Lungo");
		an2.setTaglia("Grande");
		an2.setStatoFisico("Ottimo");
		an2.setStatoMentale("Amichevole");
		ra2.addAnimale(an2);
		sg2.setNote("è chiaro che il cane si sia perso! molto curato");
		se2.addSegnalazioni(sg2);
		an2.addSegnalazione(sg2);
		
		em.getTransaction().begin();
		em.persist(sp);
		em.persist(sp1);
		em.persist(ra);
		em.persist(ra1);
		em.persist(ra2); 
		em.persist(ra3);
		em.persist(se);
		em.persist(se1);
		em.persist(se2);
		em.persist(sg);
		em.persist(sg1);
		em.persist(sg2);
		em.persist(i);
		em.persist(i1);
		em.persist(i2);
		em.persist(an);
		em.persist(an1);
		em.persist(an2);
		em.getTransaction().commit();
		
	}	
	
	

	
}
