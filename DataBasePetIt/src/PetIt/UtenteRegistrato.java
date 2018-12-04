package PetIt;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class UtenteRegistrato {

	@Id
	private String idUtente;
	private String email;
	private String nomeUtente;
	private String password;
	
	@OneToOne(mappedBy="utente")
	private Segnalatore segnalatore;
}
