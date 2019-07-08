package spirala;

import javax.swing.JOptionPane;

public class CiklicnaSpirala {
	public static void main(String[] args) {

		int n = Integer.parseInt(JOptionPane.showInputDialog("Broj redaka"));

		int m;

		while (true) {

			m = Integer.parseInt(JOptionPane.showInputDialog("Broj stupaca"));
			if (m == n) {
				break;
			}

			JOptionPane.showConfirmDialog(null, "Broj stupaca mora biti jednak broju redaka!");
		}

		int a[][] = new int[n][m];
		int k = 1, c1 = 0, c2 = n - 1, r1 = 0, r2 = n - 1;

		while (k <= n * m) {
			for (int i = c1; i <= c2; i++) {
				a[r1][i] = k++;
			}

			for (int j = r1 + 1; j <= r2; j++) {
				a[j][c2] = k++;
			}

			for (int i = c2 - 1; i >= c1; i--) {
				a[r2][i] = k++;
			}

			for (int j = r2 - 1; j >= r1 + 1; j--) {
				a[j][c1] = k++;
			}

			c1++;
			c2--;
			r1++;
			r2--;
		}

		System.out.println("Ciklična tablica:");
		for (int i = 0; i < n; i++) {
			for (int j = 0; j < n; j++) {
				System.out.print(a[i][j] + "\t");
			}
			System.out.println();
		}

	}

}
