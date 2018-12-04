

import static org.junit.Assert.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.Test;

public class EntityManagerTest {

	@Test
	public void test() {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("DataBasePetIt");
		EntityManager em = emf.createEntityManager();
	}

}
