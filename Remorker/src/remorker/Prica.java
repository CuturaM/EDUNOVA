package remorker;

import oruzje.ONoz;

public class Prica {

	Igra igra;
	UI ui;
	Vidljivost vi;
	Igrac igrac = new Igrac();

	public Prica(Igra i, UI korisnickoSucelje, Vidljivost vidlj) {

		igra = i;
		ui = korisnickoSucelje;
		vi = vidlj;

	}

	public void zadanePostavke() {
		igrac.hp = 10;
		ui.hpBrojLabel.setText("" + igrac.hp);

		igrac.trenutnoOruzje = new ONoz();
		ui.oruzjeImeLabel.setText(igrac.trenutnoOruzje.ime);

	}

}
