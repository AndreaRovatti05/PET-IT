package modello;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;

import org.hibernate.annotations.Type;

@Entity
@Inheritance(strategy =InheritanceType.JOINED)
public class UtenteRegistrato {

	@Id
	@Column(length=50)
	private String idUtente;
	private String email;
	private String nomeUtente;
	private String password;
	private String statoUtente;
	
	private Boolean attivo = true;

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

	public String getStatoUtente() {
		return statoUtente;
	}

	public void setStatoUtente(String statoUtente) {
		this.statoUtente = statoUtente;
	}

	public boolean getAttivo() {
		return attivo;
	}

	public void setAttivo(boolean attivo) {
		this.attivo = attivo;
	}
}
