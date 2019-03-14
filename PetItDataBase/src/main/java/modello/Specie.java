package modello;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Specie {

	@Id
	@GeneratedValue
	private Integer idSpecie;
	private String nomeSpecie;
	
	@JsonIgnore
	@OneToMany(mappedBy="specie")
	private List<Razza> razze;

	public Integer getIdSpecie() {
		return idSpecie;
	}
	 
	public void setIdSpecie(Integer idSpecie) {
		this.idSpecie = idSpecie;
	}

	public String getNomeSpecie() {
		return nomeSpecie;
	}

	public void setNomeSpecie(String nomeSpecie) {
		this.nomeSpecie = nomeSpecie;
	}

	public List<Razza> getRazze() {
		return razze;
	}

	public void setRazze(List<Razza> razze) {
		this.razze = razze;
	}
	
	public void addRazza(Razza r) {
		if (this.razze == null) {
			this.razze = new ArrayList<Razza>();
		}
		this.razze.add(r);
		r.setSpecie(this);
	}
	
}
