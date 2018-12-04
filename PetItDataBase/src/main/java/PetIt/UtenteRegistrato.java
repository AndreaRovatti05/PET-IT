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

	public String getIdUtente() {
		return idUtente;
	}

	public void setIdUtente(String idUtente) {
		this.idUtente = idUtente;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNomeUtente() {
		return nomeUtente;
	}

	public void setNomeUtente(String nomeUtente) {
		this.nomeUtente = nomeUtente;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Segnalatore getSegnalatore() {
		return segnalatore;
	}

	public void setSegnalatore(Segnalatore segnalatore) {
		this.segnalatore = segnalatore;
	}
}
