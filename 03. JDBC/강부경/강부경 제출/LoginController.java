package login.controller;

import java.util.Scanner;

import admin.controller.AdministratorController;
import dto.StudentDTO;
import dto.StudentInfoDTO;
import lecturer.controller.LecturerController;
import login.service.ILoginService;
import login.service.LoginService;
import login.view.LoginView;
import student.controller.StudentController;
import util.Cls;

public class LoginController {

	private static LoginView loginView;
	private static ILoginService loginService;
	private static Scanner scan;
	
	public static String id;
	public static String pw;
	
	public static String lecturerSeq;
	//public static String studentSeq;
	public static StudentInfoDTO loginDTO;  // 강부경 수정
	
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
				
				boolean checkLoop = true;
				
				while (checkLoop) {
					
					int type = loginService.loginProcess();
					
					if (type == 1) {
						
						checkLoop = false;
						AdministratorController.main();//관리자메뉴
						
					} else if (type == 2) {
						
						checkLoop = false; 
						LecturerController.main(lecturerSeq); //교사메뉴
						
					} else if (type == 3) {
						
						checkLoop = false; 
						StudentController.main(LoginController.loginDTO); //교육생메뉴
						
					} else {
							 
						Cls.clearScreen();
						continue;
						
					}

				}//while : checkLoop
												
			} else if (select.equals("0")) loginLoop = false;

		}//While : loginLoop
		
		loginView.end();
			
	}//Method : main



}//Class : LoginController


