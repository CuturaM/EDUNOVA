package remorker;

import java.awt.Color;
import java.awt.Font;
import java.awt.GridLayout;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextArea;

import remorker.Igra.UpravljanjeIzborima;

public class UI {

	JFrame window;
	JPanel imeNaslovnicePanel, startTipkaPanel, glavniTekstPanel, izboriTipkaPanel, igracPanel;
	JLabel imeNaslovniceLable, hpLabel, hpBrojLabel, oruzjeLable, oruzjeImeLabel;
	JButton startTipka, izbor1, izbor2, izbor3, izbor4;
	JTextArea glavnoTekstPodrucje;
	Font naslovnicaFont = new Font("Times New Roman", Font.PLAIN, 90);
	Font normalniFont = new Font("Times New Roman", Font.PLAIN, 26);

	public void napraviUI(UpravljanjeIzborima uIzborima) {

		// WINDOW
		window = new JFrame();
		window.setSize(800, 600);
		window.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		window.getContentPane().setBackground(Color.black);
		window.setLayout(null);

		// NASLOVNA STRANA
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
		startTipka.addActionListener(uIzborima);
		startTipka.setActionCommand("start");
		startTipkaPanel.add(startTipka);

		window.add(imeNaslovnicePanel);
		window.add(startTipkaPanel);

		// IGRA EKRAN
		glavniTekstPanel = new JPanel();
		glavniTekstPanel.setBounds(100, 100, 600, 250);
		glavniTekstPanel.setBackground(Color.black);
		window.add(glavniTekstPanel);

		glavnoTekstPodrucje = new JTextArea("Ovo je glavno područje teksta");
		glavnoTekstPodrucje.setBounds(100, 100, 600, 250);
		glavnoTekstPodrucje.setBackground(Color.black);
		glavnoTekstPodrucje.setForeground(Color.red);
		glavnoTekstPodrucje.setFont(normalniFont);
		glavnoTekstPodrucje.setLineWrap(true);
		glavnoTekstPodrucje.setWrapStyleWord(true);
		glavnoTekstPodrucje.setEditable(false);
		glavniTekstPanel.add(glavnoTekstPodrucje);

		izboriTipkaPanel = new JPanel();
		izboriTipkaPanel.setBounds(250, 370, 300, 150);
		izboriTipkaPanel.setBackground(Color.black);
		izboriTipkaPanel.setLayout(new GridLayout(4, 1));
		window.add(izboriTipkaPanel);

		izbor1 = new JButton("izbor1");
		izbor1.setBackground(Color.black);
		izbor1.setForeground(Color.red);
		izbor1.setFont(normalniFont);
		izbor1.setFocusPainted(false);
		izbor1.addActionListener(uIzborima);
		izbor1.setActionCommand("i1");
		izboriTipkaPanel.add(izbor1);
		izbor2 = new JButton("izbor2");
		izbor2.setBackground(Color.black);
		izbor2.setForeground(Color.red);
		izbor2.setFont(normalniFont);
		izbor2.setFocusPainted(false);
		izbor1.addActionListener(uIzborima);
		izbor1.setActionCommand("i2");
		izboriTipkaPanel.add(izbor2);
		izbor3 = new JButton("izbor3");
		izbor3.setBackground(Color.black);
		izbor3.setForeground(Color.red);
		izbor3.setFont(normalniFont);
		izbor3.setFocusPainted(false);
		izbor1.addActionListener(uIzborima);
		izbor1.setActionCommand("i3");
		izboriTipkaPanel.add(izbor3);
		izbor4 = new JButton("izbor4");
		izbor4.setBackground(Color.black);
		izbor4.setForeground(Color.red);
		izbor4.setFont(normalniFont);
		izbor4.setFocusPainted(false);
		izbor1.addActionListener(uIzborima);
		izbor1.setActionCommand("i4");
		izboriTipkaPanel.add(izbor4);

		igracPanel = new JPanel();
		igracPanel.setBounds(100, 15, 600, 50);
		igracPanel.setBackground(Color.black);
		igracPanel.setLayout(new GridLayout(1, 4));
		window.add(igracPanel);

		hpLabel = new JLabel("HP:");
		hpLabel.setFont(normalniFont);
		hpLabel.setForeground(Color.red);
		igracPanel.add(hpLabel);
		hpBrojLabel = new JLabel();
		hpBrojLabel.setFont(normalniFont);
		hpBrojLabel.setForeground(Color.red);
		igracPanel.add(hpBrojLabel);
		oruzjeLable = new JLabel("Oružje:");
		oruzjeLable.setFont(normalniFont);
		oruzjeLable.setForeground(Color.red);
		igracPanel.add(oruzjeLable);
		oruzjeImeLabel = new JLabel();
		oruzjeImeLabel.setFont(normalniFont);
		oruzjeImeLabel.setForeground(Color.red);
		igracPanel.add(oruzjeImeLabel);

		window.setVisible(true);

	}
}
