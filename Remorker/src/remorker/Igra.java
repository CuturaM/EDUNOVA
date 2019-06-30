package remorker;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class Igra {
	UpravljanjeIzborima uIzborima = new UpravljanjeIzborima();
	UI ui = new UI();
	Vidljivost vi = new Vidljivost(ui);

	public static void main(String[] args) {

		new Igra();

	}

	public Igra() {
		ui.napraviUI(uIzborima);
		vi.prikaziGlavniIzbornik();

	}

	public class UpravljanjeIzborima implements ActionListener {
		public void actionPerformed(ActionEvent event) {

			String tvojIzbor = event.getActionCommand();

			switch (tvojIzbor) {
			case "start":
				vi.izlazIzGlavnogIzbornika();
				break;
			case "i1":
				break;
			case "i2":
				break;
			case "i3":
				break;
			case "i4":
				break;

			}

		}
	}

}
