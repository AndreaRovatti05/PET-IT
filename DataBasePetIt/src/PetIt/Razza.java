package PetIt;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Razza {
	@Id
	private String idRazza;
	private String nomeRazza;

}
