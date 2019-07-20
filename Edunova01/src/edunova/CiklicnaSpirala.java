package edunova;

import javax.swing.JOptionPane;

public class CiklicnaSpirala {

	public static void main(String[] args) {

		int r = Integer.parseInt(JOptionPane.showInputDialog("Unesite broj redaka matrice: "));
		int k = Integer.parseInt(JOptionPane.showInputDialog("Unesite broj kolona matrice: "));

		int[][] m = new int[r][k];

		int maxBroj = (r * k);
		r--;
		k--;
		int rPoc = r;
		int kPoc = k;
		int broj = 1;
		int rMin = 0;
		int rMax = r;
		int kMin = 0;
		int kMax = k;

		while (broj < maxBroj) {

			while (r == rMax && k > kMin) { // lijevo
				m[r][k--] = broj++; // m [4][4--] = 1++; ... m[4][0] = 5;
			}
			if (broj == maxBroj) {
				break;
			}
			kPoc++;
			while (r > rMin) { // gore
				m[r--][k] = broj++; // m[4--][0] = 5; ... m[0][0] = 9;
			}

			rPoc++;
			while (k < kMax) {
				m[r][k++] = broj++; // m[0][0++] = 9; ... m[0][4] = 13;

			}
			kPoc--;
			while (r < rMax - 1) { // dolje
				m[r++][k] = broj++; // m[0++][4] = 13; ... m[3][4] = 16;
			}
			rPoc--;

			rMin++;
			rMax--;
			kMin++;
			kMax--;

		}

		rPoc++;
		kPoc++;

		if (maxBroj % 2 != 0) {
			m[rPoc / 2][kPoc / 2] = maxBroj;
		} else {
			m[r][k] = maxBroj;
		}

		for (int i = 0; i < rPoc; i++) {
			for (int j = 0; j < kPoc; j++) {
				System.out.print(m[i][j] + "\t");

			}
			System.out.println("\n\t");
		}
		System.out.println("\t");
	}

}
