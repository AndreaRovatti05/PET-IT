package PetIt;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Razza {
	
	@Id
	private Integer id;
	private String nomeRazza;

}
