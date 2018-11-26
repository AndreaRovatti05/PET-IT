package PetIt;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Utenti {
	
	@Id
	private String idUtenti;
	private String idTipo;
	private String nome;
	private String cognome;
	private Date dataNascita;
	private boolean padrone;
	private boolean liberoproffessionista;
	private String codiceFiscale;
	private String partitaIva;
	private Integer numeroAnimali;
	private Integer numeroTelefono;

}
