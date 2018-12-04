package PetIt;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Segnalatore {

	@Id
	private String codiceFiscale; 
	private String nome;
	private String cognome;
	private Date dataNascita;
	
	@OneToOne()
	private UtenteRegistrato utente;
	
	@OneToMany(mappedBy= "segnalatore")
	private List<Segnalazione> segnalazioni;
	
}
