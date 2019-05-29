package login;

import java.io.IOException;
import java.util.Scanner;

import com.github.lalyos.jfiglet.FigletFont;

public class LoginView {

	private static Scanner scan;
	
	static {
		scan = new Scanner(System.in);
	}
	
	public void start() throws IOException {
		
	    String asciiArt1 = FigletFont.convertOneLine(" Double");
	    String asciiArt2 = FigletFont.convertOneLine("      Dragon");
	    String asciiArt3 = FigletFont.convertOneLine("           Institute");
	    System.out.println(asciiArt1);
	    System.out.println(asciiArt2);
	    System.out.println(asciiArt3);
		
	}
	
//--------------------------------------------------------------------------------------------------------------------------	

	public void end() {
		
		System.out.println("\n\t\t\t\t프로그램을 종료합니다...");
		
	}//Method : end	
	
//--------------------------------------------------------------------------------------------------------------------------
	
	public void menu() {
		
		System.out.println("\t\t\t\t[쌍용교육센터 - 로그인]");
		System.out.println("\n\t==========================================================================\n");
		
		System.out.println("\t\t\t\t[1] 로그인\n");
	
		System.out.println("\t\t\t\t[0] 종료\n");
		
		System.out.println("\t--------------------------------------------------------------------------\n");
		
		System.out.println("\t\t\t\t[ ] 안의 번호를 입력하십시오");
		System.out.print("\t\t\t\t입력: ");
		
	}//Method : menu

//--------------------------------------------------------------------------------------------------------------------------
	
	public String login() {
		
		System.out.println("\t\t\t\t[쌍용교육센터 - 로그인]");
		System.out.println("\n\t==========================================================================\n");
				
		System.out.print("\t\t\t\tID를 입력하십시오 : ");
		String id = scan.nextLine();
				
		System.out.print("\t\t\t\tPW를 입력하십시오 : ");
		String pw = scan.nextLine();
		
		return id;
		
	}//Method : login

//--------------------------------------------------------------------------------------------------------------------------
	
	public void loginError() {
		
		System.out.println("\n\t--------------------------------------------------------------------------\n");
		System.out.println("\t\t\t\tID 혹은 PW가 잘못되었습니다\n\t\t\t\t다시 입력하십시오\n");
		System.out.println("\t\t\t\t계속하시려면 ENTER키를 누르십시오");
		
		String enter = scan.nextLine();
		
	}//Method : loginError
	
//--------------------------------------------------------------------------------------------------------------------------	

	public void loginProcess() {
		
		System.out.println("\n\t\t\t\t로그인 중...");
		
	}//Method : loginProcess
	
}//Class : LoginView



