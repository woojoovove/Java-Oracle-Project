package login.service;

import java.util.ArrayList;
import java.util.Scanner;

import dto.LecturerDTO;
import dto.StudentInfoDTO;
import login.LoginDAO;
import login.LoginView;

public class LoginService implements ILoginService {

	private static LoginView loginView;
	private static Scanner scan;
	
	static {
		loginView = new LoginView();
		scan = new Scanner(System.in);
	}

//--------------------------------------------------------------------------------------------	
	
	@Override
	public int loginProcess() {
				
		String id = loginView.login();
				
		if (id.startsWith("admin")) {
			
			loginView.loginProcess();
			return 1;			
			
		} else if (!id.startsWith("admin")) {
			
			boolean lecturerFlag = false;
			boolean studentFlag = false;

			LoginDAO loginDao = new LoginDAO();	
			
			ArrayList<LecturerDTO> lecturerList = loginDao.lecturerLogin();	
			ArrayList<StudentInfoDTO> studentList = loginDao.studentLogin();	
			
			for (LecturerDTO lecturerDto : lecturerList) {
				if (id.equals(lecturerDto.getName())) lecturerFlag = true;
			}
			
			for (StudentInfoDTO studentDto : studentList) {
				if (id.equals(studentDto.getName())) studentFlag = true;
			}
			
			loginDao.close();
			
			if (lecturerFlag == true) return 2;
			if (studentFlag == true) return 3;
									
		}
			
		loginView.loginError(); 
		return 0;
		
	}//method : loginProcess

}//Class : LoginService
