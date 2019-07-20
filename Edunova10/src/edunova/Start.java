package edunova;

import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

public class Start {
	
	private List<Osoba> osobe;
	
	//DZ za uber programere
	//umjesto JoptioPane koristiti Scanner
	
	public Start() {
		osobe = new ArrayList<>();
		glavna_petlja:
		while(true) {
			izbornik();
			switch (Pomocno.unosInteger("Odaberite redni broj akcije")) {
			case 5:
				break glavna_petlja;
			case 1:
				izlistajOsobe();
				break;
			case 2:
				osobe.add(unosOsobe());
				break;
			case 3:
				promjenaOsobe();
				break;
			case 4:
				brisanjeOsobe();
				break;
			default:
				break;
			}
		}
		
		
	}
	
	private void brisanjeOsobe() {
		izlistajOsobe();
		osobe.remove(redniBrojOsobe()-1);
		
	}

	private void promjenaOsobe() {
		// u programu napraviti da su ponuðene stare vrijednosti
		izlistajOsobe();
		Osoba o = osobe.get(redniBrojOsobe()-1);
		o=postaviVrijednosti(o);
		
		
	}
	
	private int redniBrojOsobe() {
		int rb;
		while(true) {
			rb= Pomocno.unosInteger("Unesite redni broj");
			if(rb>osobe.size()) {
				JOptionPane.showConfirmDialog(null, 
						"Obavezno odabir ponuðenih rednih brojeva");
				continue;
			}
			return rb;
		}
	}

	private void izlistajOsobe() {
		System.out.println("\nIspis osoba");
		int i=0;
		for (Osoba osoba : osobe) {
			System.out.println(++i + ". " + osoba);
		}
		System.out.println("");
		
	}

	private void izbornik() {
		System.out.println("###### Konzolna aplikacija ######");
		System.out.println("1. Izlistaj sve osobe");
		System.out.println("2. Unos nove osobe");
		System.out.println("3. Promjena osobe");
		System.out.println("4. Brisanje osobe");
		System.out.println("5. Izlaz iz programa");
		
	}

	private Osoba unosOsobe() {
		Osoba o = new Osoba();
		o=postaviVrijednosti(o);
		return o;
	}
	
	private Osoba postaviVrijednosti(Osoba o) {
		o.setIme(Pomocno.unosString("Unesi ime"));
		o.setPrezime(Pomocno.unosString("Unesi prezime"));
		o.setVisina(Pomocno.unosInteger("Unesi visinu"));
		o.setDatumRodenja(Pomocno.unosDatum("Unesi datum roðenja"));
		return o;
	}
	
	public static void main(String[] args) {
		new Start();
	}

}
