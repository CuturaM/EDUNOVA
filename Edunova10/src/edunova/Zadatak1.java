package edunova;

public class Zadatak1 {
	
	public Zadatak1() {
		
		String s = "0712980300501";
		int i = Integer.parseInt(s.substring(2,3));
		int j=1;
		
		i+=j--;//2 j=0
		j-=1;//-1
		System.out.println(i+j); //2+(-1)=1
		
		
	}
	
	
	public static void main(String[] args) {
		new Zadatak1();
	}

}
