package PetIt;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Specie {
	
	@Id
	private Integer id;
	
	private String nomeSpecie;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNomeSpecie() {
		return nomeSpecie;
	}

	public void setNomeSpecie(String nomeSpecie) {
		this.nomeSpecie = nomeSpecie;
	}
	
	
}
