package modello;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Razza {

	@Id
	@Column(length=50)
	private String id;
	private String nomeRazza;
	
	@ManyToOne
	private Specie specie;

	@JsonIgnore
	@OneToMany(mappedBy="razza")
	private List<AnimaleSegnalato> animaliSegnalati;


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getNomeRazza() {
		return nomeRazza;
	}


	public void setNomeRazza(String nomeRazza) {
		this.nomeRazza = nomeRazza;
	}


	public Specie getSpecie() {
		return specie;
	}


	public void setSpecie(Specie specie) {
		this.specie = specie;
	}


	public List<AnimaleSegnalato> getAnimaliSegnalati() {
		return animaliSegnalati;
	}


	public void setAnimaliSegnalati(List<AnimaleSegnalato> animaliSegnalati) {
		this.animaliSegnalati = animaliSegnalati;
	}
	
	public void addAnimale(AnimaleSegnalato animale) {
		if (this.animaliSegnalati == null) {
			this.animaliSegnalati = new ArrayList<AnimaleSegnalato>();
		}
		this.animaliSegnalati.add(animale);
		animale.setRazza(this);
	}

}
