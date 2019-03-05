package modello;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Segnalazione {
	@Id
	@GeneratedValue
	private Integer idSegnalazione;
	private String note;
	
	@ManyToOne()
	private AnimaleSegnalato animale;
	
	@OneToMany(mappedBy ="segnalazione")
	private List<CommentoSegnalazione> commenti;
	
	@JsonIgnore
	@ManyToOne()
	private Segnalatore segnalatore;

	public Integer getIdSegnalazione() {
		return idSegnalazione;
	}

	public void setIdSegnalazione(Integer idSegnalazione) {
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
