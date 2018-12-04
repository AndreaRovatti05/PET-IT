package PetIt;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Segnalatore {

	@Id
	private String codiceFiscale; 
	private String nome;
	private String cognome;
	private Date dataNascita;
	
	
	
}
