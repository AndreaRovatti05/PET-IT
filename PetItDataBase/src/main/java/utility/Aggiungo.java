package utility;


import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.jboss.jandex.Main;

import modello.Razza;
import modello.Specie;



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
		
		Specie sp1 = new Specie();
		Razza ra2 = new Razza();
		sp1.setIdSpecie("Sp01");
		sp1.setNomeSpecie("Gatto");
		ra2.setId("Ra02");
		ra2.setNomeRazza("Europeo");
		sp1.addRazza(ra2);
		
		em.getTransaction().begin();
		em.persist(sp);
		em.persist(sp1);
		em.persist(ra);
		em.persist(ra1);
		em.persist(ra2); 
		em.getTransaction().commit();
		
		
		
	}	
	
	

	
}
