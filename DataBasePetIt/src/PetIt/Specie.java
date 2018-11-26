package PetIt;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Specie {

	@Id
	private String idSpecie;
	private String nomeSpecie;

	public String getIdSpecie() {
		return idSpecie;
	}

	public void setIdSpecie(String idSpecie) {
		this.idSpecie = idSpecie;
	}

	public String getNomeSpecie() {
		return nomeSpecie;
	}

	public void setNomeSpecie(String nomeSpecie) {
		this.nomeSpecie = nomeSpecie;
	}

}
