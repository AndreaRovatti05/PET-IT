package modello;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Specie {

	@Id
	@Column(length=50)
	private String idSpecie;
	private String nomeSpecie;
	
	@JsonIgnore
	@OneToMany(mappedBy="specie")
	private List<Razza> razze;

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
