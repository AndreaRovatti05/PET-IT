package PetIt;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class Programma {

	public static void main(String[] args) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("DataBasePetIt");
		EntityManager em = emf.createEntityManager();
		
		em.getTransaction().begin();
		em.getTransaction().commit();
	}

}
