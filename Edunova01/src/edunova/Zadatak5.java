package edunova;

import javax.swing.JOptionPane;

public class Zadatak5 {
	public static void main(String[] args) {
		
		boolean Q;

		Q = Boolean.parseBoolean(JOptionPane.showInputDialog("Herbivores eat meat?"));

		System.out.println("Herbivores eat meat?");
		System.out.println("Answer = " + Q);
	}
}
