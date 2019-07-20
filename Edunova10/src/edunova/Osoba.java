package edunova;

import java.util.Date;

public class Osoba {

	private String ime;
	private String prezime;
	private int visina;
	private Date datumRodenja;
	
	
	public Osoba() {
	
	}
	
	
	public Osoba(String ime, String prezime, int visina, Date datumRodenja) {
		this.ime = ime;
		this.prezime = prezime;
		this.visina = visina;
		this.datumRodenja = datumRodenja;
	}




	public String getIme() {
		return ime;
	}
	public void setIme(String ime) {
		this.ime = ime;
	}
	public String getPrezime() {
		return prezime;
	}
	public void setPrezime(String prezime) {
		this.prezime = prezime;
	}
	public int getVisina() {
		return visina;
	}
	public void setVisina(int visina) {
		this.visina = visina;
	}
	public Date getDatumRodenja() {
		return datumRodenja;
	}
	public void setDatumRodenja(Date datumRodenja) {
		this.datumRodenja = datumRodenja;
	}
	
	@Override
	public String toString() {
		return getIme() + " " + getPrezime();
	}
	
}
