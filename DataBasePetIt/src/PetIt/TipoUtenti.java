package PetIt;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class TipoUtenti {
	@Id
	private String idTipo;
	private String nomeTipo;
}
