package modello;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Razza {

	@Id
	private Integer id;
	private String nomeRazza;
	
	@ManyToOne
	private Specie specie;


	@OneToMany(mappedBy="razza")
	private List<AnimaleSegnalato> animaliSegnalati;


	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
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
	

}
