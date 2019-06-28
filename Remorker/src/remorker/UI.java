package remorker;

import java.awt.Color;
import java.awt.Font;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;

public class UI {

	JFrame window;
	JPanel imeNaslovnicePanel, startTipkaPanel;
	JLabel imeNaslovniceLable;
	JButton startTipka;
	Font naslovnicaFont = new Font("Times New Roman", Font.PLAIN,90);
	Font normalniFont = new Font("Times New Roman", Font.PLAIN,26);

	public void napraviUI() {

		// WINDOW
		window = new JFrame();
		window.setSize(800, 600);
		window.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		window.getContentPane().setBackground(Color.black);
		window.setLayout(null);
		
		
		//NASLOVNA STRANA
		imeNaslovnicePanel = new JPanel();
		imeNaslovnicePanel.setBounds(100, 100, 600, 500);
		imeNaslovnicePanel.setBackground(Color.black);
		imeNaslovniceLable = new JLabel("REMORKER");
		imeNaslovniceLable.setForeground(Color.red);
		imeNaslovniceLable.setFont(naslovnicaFont);
		imeNaslovnicePanel.add(imeNaslovniceLable);
		
		startTipkaPanel = new JPanel();
		startTipkaPanel.setBounds(300, 400, 200, 100);
		startTipkaPanel.setBackground(Color.black);
		startTipka = new JButton("START");
		startTipka.setBackground(Color.black);
		startTipka.setForeground(Color.red);
		startTipka.setFont(normalniFont);
		startTipka.setFocusPainted(false);
		startTipkaPanel.add(startTipka);
		
		window.add(imeNaslovnicePanel);
		window.add(startTipkaPanel);
		
		//IGRA IZBORNIK
		
		
		window.setVisible(true);
		
		
		
		
		

	}
}
