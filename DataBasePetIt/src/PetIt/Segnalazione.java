package PetIt;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Segnalazione {
	@Id
	private String idSegnalazione;
	private String note;
	
	@ManyToOne()
	private AnimaleSegnalato animale;
	
	@ManyToOne()
	private Segnalatore segnalatore;
}
