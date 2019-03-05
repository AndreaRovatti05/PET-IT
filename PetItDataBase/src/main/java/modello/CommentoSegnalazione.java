package modello;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class CommentoSegnalazione {
	
	@Id
	@GeneratedValue
	 private Integer Idcommento;
	 private String testoCommento;
	 @ManyToOne
	private Segnalatore segnalatore;
	 @ManyToOne
	 private Segnalazione segnalazione;
	 
	public Integer getIdcommento() {
		return Idcommento;
	}
	public void setIdcommento(Integer idcommento) {
		Idcommento = idcommento;
	}
	public String getTestoCommento() {
		return testoCommento;
	}
	public void setTestoCommento(String testoCommento) {
		this.testoCommento = testoCommento;
	}
	public Segnalatore getSegnalatore() {
		return segnalatore;
	}
	public void setSegnalatore(Segnalatore segnalatore) {
		this.segnalatore = segnalatore;
	}
	public Segnalazione getSegnalazione() {
		return segnalazione;
	}
	public void setSegnalazione(Segnalazione segnalazione) {
		this.segnalazione = segnalazione;
	}
	 
	 
	 

}
