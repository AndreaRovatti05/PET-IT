package PetIt;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Animale {
	
	@Id
	private String id;
	private String nome;
	private String idRazza;
	private String cfPadrone;
	private Integer anni;

}
