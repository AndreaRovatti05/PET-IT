package PetIt;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class Programma {

	public static void main(String[] args) {
		EntityManagerFactory ent= Persistence.createEntityManagerFactory("DataBasePetIt");
		EntityManager en=ent.createEntityManager();
		
		/*Specie s = new Specie();
		
		en.getTransaction().begin();
		en.persist(s);
		en.getTransaction().commit();*/
		
	}

}
