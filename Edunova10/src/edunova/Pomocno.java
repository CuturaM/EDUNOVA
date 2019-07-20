package edunova;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.swing.JOptionPane;

public class Pomocno {
	
	public static final String FORMAT_DATUMA="dd.MM.yyyy.";
	
	public static String unosString(String poruka) {
		
		String s;
		while(true) {
			s=JOptionPane.showInputDialog(poruka);
			
			if(s.trim().length()==0) {
				JOptionPane.
				showConfirmDialog(null,"Obavezan unos");
				continue;
			}
			return s;
		}
		
		
		
		//return "";
	}
	
	public static int unosInteger(String poruka) {
		int i;
		while(true) {
			try {
				i=Integer.parseInt(
						JOptionPane.showInputDialog(poruka));
				if(i<=0) {
					JOptionPane.showConfirmDialog(null, 
							"Broj mora biti veæi od nule");
					continue;
				}
				return i;
			} catch (Exception e) {
				JOptionPane.showConfirmDialog(null, 
						"Obavezan unos broja");
			}
			
			
		}
		
		
	}
	
	
	public static Date unosDatum(String poruka) {
		
		SimpleDateFormat df = new SimpleDateFormat(FORMAT_DATUMA);
		while(true) {
			
			try {
				return df.parse(JOptionPane.showInputDialog(poruka));
			} catch (Exception e) {
				JOptionPane.showConfirmDialog(null, 
						"Obavezan unos u formatu: " + FORMAT_DATUMA 
						+ "\nPrimjer na današnjem datumu:" + df.format(new Date()));
			}
	
		}
		
		
	}
	

}
