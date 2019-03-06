package modello;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class AnimaleSegnalato {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer idAnimale;
	@ManyToOne
	private Razza razza;

	private String colorePelo;
	private String tipoPelo;
	private String taglia;
	private String statoFisico;
	private String statoMentale;

	@JsonIgnore
	@OneToMany(mappedBy = "animale", cascade = { CascadeType.REMOVE })
	private List<Segnalazione> segnalazioni;

	@JsonIgnore
	@ManyToMany(mappedBy = "animaliSegnalati")
	private List<PosizioniRilevamentiSegnalazioni> posizioni;

	public Integer getIdAnimale() {
		return idAnimale;
	}

	public void setIdAnimale(Integer idAnimale) {
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

	public void addSegnalazione(Segnalazione sg) {
		if (this.segnalazioni == null) {
			this.segnalazioni = new ArrayList<Segnalazione>();
		}
		this.segnalazioni.add(sg);
		sg.setAnimale(this);
	}

}
