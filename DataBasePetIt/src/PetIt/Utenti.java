package PetIt;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Utenti {
	
	@Id
	private String idUtenti;
	public String getIdUtenti() {
		return idUtenti;
	}
	public void setIdUtenti(String idUtenti) {
		this.idUtenti = idUtenti;
	}
	public String getIdTipo() {
		return idTipo;
	}
	public void setIdTipo(String idTipo) {
		this.idTipo = idTipo;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCognome() {
		return cognome;
	}
	public void setCognome(String cognome) {
		this.cognome = cognome;
	}
	public Date getDataNascita() {
		return dataNascita;
	}
	public void setDataNascita(Date dataNascita) {
		this.dataNascita = dataNascita;
	}
	public boolean isPadrone() {
		return padrone;
	}
	public void setPadrone(boolean padrone) {
		this.padrone = padrone;
	}
	public boolean isLiberoproffessionista() {
		return liberoproffessionista;
	}
	public void setLiberoproffessionista(boolean liberoproffessionista) {
		this.liberoproffessionista = liberoproffessionista;
	}
	public String getCodiceFiscale() {
		return codiceFiscale;
	}
	public void setCodiceFiscale(String codiceFiscale) {
		this.codiceFiscale = codiceFiscale;
	}
	public String getPartitaIva() {
		return partitaIva;
	}
	public void setPartitaIva(String partitaIva) {
		this.partitaIva = partitaIva;
	}
	public Integer getNumeroAnimali() {
		return numeroAnimali;
	}
	public void setNumeroAnimali(Integer numeroAnimali) {
		this.numeroAnimali = numeroAnimali;
	}
	public Integer getNumeroTelefono() {
		return numeroTelefono;
	}
	public void setNumeroTelefono(Integer numeroTelefono) {
		this.numeroTelefono = numeroTelefono;
	}
	private String idTipo;
	private String nome;
	private String cognome;
	@Temporal(TemporalType.TIME)
	private Date dataNascita;
	private boolean padrone;
	private boolean liberoproffessionista;
	private String codiceFiscale;
	private String partitaIva;
	private Integer numeroAnimali;
	private Integer numeroTelefono;

}
