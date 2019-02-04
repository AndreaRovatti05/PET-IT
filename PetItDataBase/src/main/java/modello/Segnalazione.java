package modello;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Segnalazione {
	@Id
	//@Column(length=50)
	private String idSegnalazione;
	private String note;
	
	@ManyToOne()
	private AnimaleSegnalato animale;
	
	@JsonIgnore
	@ManyToOne()
	private Segnalatore segnalatore;

	public String getIdSegnalazione() {
		return idSegnalazione;
	}

	public void setIdSegnalazione(String idSegnalazione) {
		this.idSegnalazione = idSegnalazione;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public AnimaleSegnalato getAnimale() {
		return animale;
	}

	public void setAnimale(AnimaleSegnalato animale) {
		this.animale = animale;
	}

	public Segnalatore getSegnalatore() {
		return segnalatore;
	}

	public void setSegnalatore(Segnalatore segnalatore) {
		this.segnalatore = segnalatore;
	}
}
