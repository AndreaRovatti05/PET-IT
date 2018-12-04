package PetIt;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class AnimaleSegnalato {
	@Id
	private String idAnimale;
	@ManyToOne
	private Razza razza;

	private String colorePelo;
	private String tipoPelo;
	private String taglia;
	private String statoFisico;
	private String statoMentale;
	private String commento;
	
	@OneToMany(mappedBy="animale")
	private List<Segnalazione> segnalazioni;
	
	@ManyToMany(mappedBy="animaliSegnalati")
	private List<PosizioniRilevamentiSegnalazioni> posizioni;

	public String getIdAnimale() {
		return idAnimale;
	}

	public void setIdAnimale(String idAnimale) {
		this.idAnimale = idAnimale;
	}

	public Razza getRazza() {
		return razza;
	}

	public void setRazza(Razza razza) {
		this.razza = razza;
	}

	public String getColorePelo() {
		return colorePelo;
	}

	public void setColorePelo(String colorePelo) {
		this.colorePelo = colorePelo;
	}

	public String getTipoPelo() {
		return tipoPelo;
	}

	public void setTipoPelo(String tipoPelo) {
		this.tipoPelo = tipoPelo;
	}

	public String getTaglia() {
		return taglia;
	}

	public void setTaglia(String taglia) {
		this.taglia = taglia;
	}

	public String getStatoFisico() {
		return statoFisico;
	}

	public void setStatoFisico(String statoFisico) {
		this.statoFisico = statoFisico;
	}

	public String getStatoMentale() {
		return statoMentale;
	}

	public void setStatoMentale(String statoMentale) {
		this.statoMentale = statoMentale;
	}

	public String getCommento() {
		return commento;
	}

	public void setCommento(String commento) {
		this.commento = commento;
	}

	public List<PosizioniRilevamentiSegnalazioni> getPosizioni() {
		return posizioni;
	}

	public void setPosizioni(List<PosizioniRilevamentiSegnalazioni> posizioni) {
		this.posizioni = posizioni;
	}

	public List<Segnalazione> getSegnalazioni() {
		return segnalazioni;
	}

	public void setSegnalazioni(List<Segnalazione> segnalazioni) {
		this.segnalazioni = segnalazioni;
	}

	

}
