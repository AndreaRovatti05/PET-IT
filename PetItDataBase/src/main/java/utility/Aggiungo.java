package utility;


import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.xml.crypto.Data;

import org.jboss.jandex.Main;

import modello.AnimaleSegnalato;
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
		
		sp.setIdSpecie("Sp00");
		sp.setNomeSpecie("Cane");
		ra.setId("Ra00");
		ra.setNomeRazza("Labrador");
		sp.addRazza(ra);
		
		
		Razza ra1 = new Razza();
		ra1.setId("Ra01");
		ra1.setNomeRazza("Pincer");
		sp.addRazza(ra1);
		
		Razza ra3= new Razza();
		ra3.setId("Ra03");
		ra3.setNomeRazza("Golden Retriver");
		sp.addRazza(ra3);
		
		Specie sp1 = new Specie();
		Razza ra2 = new Razza();
		sp1.setIdSpecie("Sp01");
		sp1.setNomeSpecie("Gatto");
		ra2.setId("Ra02");
		ra2.setNomeRazza("Europeo");
		sp1.addRazza(ra2);
		
		Segnalatore se = new Segnalatore();
		se.setIdUtente("Ut01");
		se.setEmail("mario@rossi.it");
		se.setPassword("pass");
		se.setNomeUtente("mario");
		se.setStatoUtente("admin");
		se.setCodiceFiscale("rssmri");
		se.setCognome("Rossi");
		se.setNome("Mario");

		
		Segnalatore se1 = new Segnalatore();
		se1.setIdUtente("Ut02");
		se1.setEmail("paolo@verdi.it");
		se1.setPassword("pass");
		se1.setNomeUtente("paolo");
		se1.setStatoUtente("online");	
		se1.setCodiceFiscale("vrdplo");
		se1.setCognome("Verdi");
		se1.setNome("Paolo");
		
		Segnalatore se2 = new Segnalatore();
		se2.setIdUtente("Ut03");
		se2.setEmail("giovanni@verdi.it");
		se2.setPassword("pass");
		se2.setNomeUtente("giovanni");
		se2.setStatoUtente("ban");	
		se2.setCodiceFiscale("vrdgvn");
		se2.setCognome("Verdi");
		se2.setNome("giovanni");
		
		AnimaleSegnalato an =new AnimaleSegnalato();
		Segnalazione sg = new Segnalazione();
		an.setIdAnimale("An01");
		an.setColorePelo("rosso");
		an.setTipoPelo("lungo");
		an.setTaglia("media");
		an.setStatoFisico("buono");
		an.setStatoMentale("agitato");
		ra2.addAnimale(an);
		sg.setIdSegnalazione("Sg01");
		sg.setNote("il cane correva in mezzo alla strada");
		se1.addSegnalazioni(sg);
		an.addSegnalazione(sg);
		
		AnimaleSegnalato an1 =new AnimaleSegnalato();
		Segnalazione sg1 = new Segnalazione();
		an1.setIdAnimale("An02");
		an1.setColorePelo("maculato");
		an1.setTipoPelo("corto");
		an1.setTaglia("piccola");
		an1.setStatoFisico("malnutrito");
		an1.setStatoMentale("tranquillo");
		ra.addAnimale(an1);
		sg1.setIdSegnalazione("Sg02");
		sg1.setNote("il cane dormiva sotto un cavalcavia");
		se1.addSegnalazioni(sg1);
		an1.addSegnalazione(sg1);
		
		AnimaleSegnalato an2 =new AnimaleSegnalato();
		Segnalazione sg2 = new Segnalazione();
		an2.setIdAnimale("An03");
		an2.setColorePelo("beach");
		an2.setTipoPelo("lungo");
		an2.setTaglia("grande");
		an2.setStatoFisico("ottimo");
		an2.setStatoMentale("amichevole");
		ra2.addAnimale(an2);
		sg2.setIdSegnalazione("Sg03");
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
		em.persist(an);
		em.persist(an1);
		em.persist(an2);

		em.getTransaction().commit();
		
		
		
	}	
	
	

	
}
