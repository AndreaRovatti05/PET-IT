package PetIt;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Razza {
	@Id
	private String idRazza;
	public String getIdRazza() {
		return idRazza;
	}
	public void setIdRazza(String idRazza) {
		this.idRazza = idRazza;
	}
	public String getNomeRazza() {
		return nomeRazza;
	}
	public void setNomeRazza(String nomeRazza) {
		this.nomeRazza = nomeRazza;
	}
	private String nomeRazza;

}
