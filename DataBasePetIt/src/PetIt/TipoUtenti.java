package PetIt;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class TipoUtenti {
	@Id
	private String idTipo;
	public String getIdTipo() {
		return idTipo;
	}
	public void setIdTipo(String idTipo) {
		this.idTipo = idTipo;
	}
	public String getNomeTipo() {
		return nomeTipo;
	}
	public void setNomeTipo(String nomeTipo) {
		this.nomeTipo = nomeTipo;
	}
	private String nomeTipo;
}
