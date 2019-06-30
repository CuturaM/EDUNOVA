package remorker;

public class Vidljivost {

	UI ui;

	public Vidljivost(UI korisnickoSucelje) {

		ui = korisnickoSucelje;

	}

	public void prikaziGlavniIzbornik() {

		ui.imeNaslovnicePanel.setVisible(true);
		ui.startTipkaPanel.setVisible(true);

		ui.glavniTekstPanel.setVisible(false);
		ui.izboriTipkaPanel.setVisible(false);
		ui.igracPanel.setVisible(false);

	}

	public void izlazIzGlavnogIzbornika() {

		ui.imeNaslovnicePanel.setVisible(false);
		ui.startTipkaPanel.setVisible(false);

		ui.glavniTekstPanel.setVisible(true);
		ui.izboriTipkaPanel.setVisible(true);
		ui.igracPanel.setVisible(true);
	}

}
