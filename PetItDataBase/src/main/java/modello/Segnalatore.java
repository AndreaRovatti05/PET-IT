package modello;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Segnalatore extends UtenteRegistrato {

	private String codiceFiscale; 
	private String nome;
	private String cognome;
	@Temporal (TemporalType.DATE)
	private Date dataNascita;
	private Integer dislike;

	@OneToMany(mappedBy="segnalatore")
	private List<CommentoSegnalazione> commenti;
	
	@OneToOne()
	private UtenteRegistrato utente;
	
	@OneToMany(mappedBy= "segnalatore")
	private List<Segnalazione> segnalazioni;

	public String getCodiceFiscale() {
		return codiceFiscale;
	}

	public void setCodiceFiscale(String codiceFiscale) {
		this.codiceFiscale = codiceFiscale;
	}
	public Integer getDislike() {
		return dislike;
	}

	public void setDislike(Integer dislike) {
		this.dislike = dislike;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCognome() {
		return cognome;
	}

	public void setCognome(String cognome) {
		this.cognome = cognome;
	}

	public Date getDataNascita() {
		return dataNascita;
	}

	public void setDataNascita(Date dataNascita) {
		this.dataNascita = dataNascita;
	}

	public UtenteRegistrato getUtente() {
		return utente;
	}

	public void setUtente(UtenteRegistrato utente) {
		this.utente = utente;
	}

	public List<Segnalazione> getSegnalazioni() {
		return segnalazioni;
	}

	public void setSegnalazioni(List<Segnalazione> segnalazioni) {
		this.segnalazioni = segnalazioni;
	}

	public void addSegnalazioni(Segnalazione s) {
		if (this.segnalazioni == null) {
			this.segnalazioni = new ArrayList<Segnalazione>();
		}
		this.segnalazioni.add(s);
		s.setSegnalatore(this);
	}
	
}
