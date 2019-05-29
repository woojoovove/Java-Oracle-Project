package login;

import java.util.Scanner;

import admin.AdministratorController;
import lecturer.LecturerController;
import login.service.ILoginService;
import login.service.LoginService;
import student.StudentController;

public class LoginController {

	private static LoginView loginView;
	private static ILoginService loginService;
	private static Scanner scan;
	
	static {
		loginView = new LoginView();
		loginService = new LoginService();
		scan = new Scanner(System.in);
	}
	
//--------------------------------------------------------------------------	
	
	public static void main(String[] args) throws Exception {
		
		boolean loginLoop = true;
		
		while (loginLoop) {
			
			loginView.start();
			loginView.menu();
			
			String select = scan.nextLine();
			
			if (select.equals("1")) {
					
				Cls.clearScreen();
				System.out.println("\t\t\t\t\tLOADING.....");
				Thread.sleep(700);
				Cls.clearScreen();
				
				boolean checkLoop = true;
				
				while (checkLoop) {
					
					int type = loginService.loginProcess();
					
					if (type == 1) {
						
						checkLoop = false;
						AdministratorController.main(args);//관리자메뉴
						
					} else if (type == 2) {
						
						checkLoop = false; 
						LecturerController.main(args); //교사메뉴
						
					} else if (type == 3) {
						
						checkLoop = false; 
						StudentController.main(args); //교육생메뉴
						
					} else {
							 
						Cls.clearScreen();
						System.out.println("\t\t\t\t\tLOADING.....");
						Thread.sleep(700);
						Cls.clearScreen();
						continue;
						
					}

				}//while : checkLoop
												
			} else if (select.equals("0")) {
				
				loginLoop = false;
								
			}
	
		}//While : loginLoop
		
		loginView.end();
			
	}//Method : main

}//Class : LoginController


