package PetIt;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

@Entity
public class PosizioniRilevamentiSegnalazioni {
	@Id
	private String idPosizione;
	private String citta;
	private String via;
	private Integer numeroCivico;
	private Integer cap;
	private String posizioneGPS;
	
	@ManyToMany
	private List<AnimaleSegnalato> animaliSegnalati;

	public String getIdPosizione() {
		return idPosizione;
	}

	public void setIdPosizione(String idPosizione) {
		this.idPosizione = idPosizione;
	}

	public String getCitta() {
		return citta;
	}

	public void setCitta(String citta) {
		this.citta = citta;
	}

	public String getVia() {
		return via;
	}

	public void setVia(String via) {
		this.via = via;
	}

	public Integer getNumeroCivico() {
		return numeroCivico;
	}

	public void setNumeroCivico(Integer numeroCivico) {
		this.numeroCivico = numeroCivico;
	}

	public Integer getCap() {
		return cap;
	}

	public void setCap(Integer cap) {
		this.cap = cap;
	}

	public String getPosizioneGPS() {
		return posizioneGPS;
	}

	public void setPosizioneGPS(String posizioneGPS) {
		this.posizioneGPS = posizioneGPS;
	}

	public List<AnimaleSegnalato> getAnimaliSegnalati() {
		return animaliSegnalati;
	}

	public void setAnimaliSegnalati(List<AnimaleSegnalato> animaliSegnalati) {
		this.animaliSegnalati = animaliSegnalati;
	}

	
}
