package login.service;

import java.util.ArrayList;

import dto.LecturerDTO;
import dto.StudentDTO;
import dto.StudentInfoDTO;
import login.controller.LoginController;
import login.dao.LoginDAO;
import login.view.LoginView;

public class LoginService implements ILoginService {

	private static LoginView loginView;
	
	static {
		loginView = new LoginView();
	}

//--------------------------------------------------------------------------------------------	
	
	@Override
	public int loginProcess() {
				
		loginView.login();
				
		if (LoginController.id.startsWith("admin")) {
			
			loginView.loginProcess();
			return 1;			
			
		} else if (!LoginController.id.startsWith("admin")) {
			
			loginView.loginProcess();
			
			boolean lecturerFlag = false;
			boolean studentFlag = false;

			LoginDAO loginDao = new LoginDAO();	
			
			ArrayList<LecturerDTO> lecturerList = loginDao.lecturerLogin();	
			ArrayList<StudentInfoDTO> studentList = loginDao.studentLogin();	
			
			for (LecturerDTO lecturerDto : lecturerList) {
				if (LoginController.id.equals(lecturerDto.getName()) && LoginController.pw.equals(lecturerDto.getRegistrationNum())) {
					lecturerFlag = true;
					LoginController.lecturerSeq = lecturerDto.getSeq();
				}
			}
			
			for (StudentInfoDTO studentDto : studentList) {
				if (LoginController.id.equals(studentDto.getName()) && LoginController.pw.equals(studentDto.getRegistrationNum())) {
					studentFlag = true;
					//LoginController.studentSeq = studentDto.getSeq();
					LoginController.loginDTO = studentDto;    //강부경 수정
				}
			}
			
			loginDao.close();
			
			if (lecturerFlag == true) return 2;
			if (studentFlag == true) return 3;
									
		}
			
		loginView.loginError(); 
		return 0;
		
	}//method : loginProcess

}//Class : LoginService
