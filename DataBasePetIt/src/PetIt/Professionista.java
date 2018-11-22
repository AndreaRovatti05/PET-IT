package PetIt;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Professionista {
	@Id
	private Integer id;
	private String nome;
	private String cognome;
	private String servizioOfferto;
	private int numeroDiTelefono;
	private String indirizzo;
	private String email;
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
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
	public String getServizioOfferto() {
		return servizioOfferto;
	}
	public void setServizioOfferto(String servizioOfferto) {
		this.servizioOfferto = servizioOfferto;
	}
	public int getNumeroDiTelefono() {
		return numeroDiTelefono;
	}
	public void setNumeroDiTelefono(int numeroDiTelefono) {
		this.numeroDiTelefono = numeroDiTelefono;
	}
	public String getIndirizzo() {
		return indirizzo;
	}
	public void setIndirizzo(String indirizzo) {
		this.indirizzo = indirizzo;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	

}
