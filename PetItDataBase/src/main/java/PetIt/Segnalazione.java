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
