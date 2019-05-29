package dummy;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.util.ArrayList;
import java.util.Random;

public class student_dummy {
	public static Random rnd = new Random();
	
	public static void main(String[] args) {
//		System.out.println(mname());
//		System.out.println(mcodenum());
//		System.out.println(mnum());
//		System.out.println(mdate());
		
		ArrayList<String>list = new ArrayList<String>();
		
		
		
		for(int i=1; i<=2000; i++) {
		
			String test = String.format("INSERT INTO tblStudent VALUES (%s,'%s','%s','%s');",i,mname(),mcodenum(),mnum());
		
			
			System.out.println(test);
			list.add(test);
		}
			String path = ".\\dat\\student";
		try {
			
			BufferedWriter writer = new BufferedWriter(new FileWriter(path));
			
			for(String s : list) {
				writer.write(s+"\r\n");
				writer.flush();
			}
			writer.close();
		} catch (Exception e) {

			System.out.println(e.toString());
		}
		
		
		
		
	}
	
	
	//교육생 이름
	private static String mname() {
		String[] one = {"김","최","왕","유","이","건","신","오","차","홍","문","우","류","하","박"};
		String[] two = {"재","종","윤","원","병","행","형","성","희","신","장","유","소","진"};
		String[] three = {"소","경","양","용","준","수","연","창","존","무","하","규","중"};
		
		String name = one[rnd.nextInt(one.length)]+two[rnd.nextInt(two.length)]+three[rnd.nextInt(three.length)];
		
		
		return name;
		
	}
	
	//주민번호 뒷자리
	private static String mcodenum() {
		String code = (rnd.nextInt(2)+1)+String.format("%05d", rnd.nextInt(1000000));
//		System.out.println(code);
		return code;
		
	}
	
	//전화번호
	private static String mnum() {
		String num = String.format("010-%04d-%04d", rnd.nextInt(10000),rnd.nextInt(10000));
		return num;
		
	}
	
	//등록일 -2017~2019년
	private static String mdate() {
		String date = String.format("%d-%02d-%02d",rnd.nextInt(3)+2017,rnd.nextInt(12)+1,rnd.nextInt(28)+1);
		return date;
		
	}
	
	
	
}
