package PetIt;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Animale {
	
	@Id
	private String id;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getIdRazza() {
		return idRazza;
	}
	public void setIdRazza(String idRazza) {
		this.idRazza = idRazza;
	}
	public String getCfPadrone() {
		return cfPadrone;
	}
	public void setCfPadrone(String cfPadrone) {
		this.cfPadrone = cfPadrone;
	}
	public Integer getAnni() {
		return anni;
	}
	public void setAnni(Integer anni) {
		this.anni = anni;
	}
	private String nome;
	private String idRazza;
	private String cfPadrone;
	private Integer anni;

}
