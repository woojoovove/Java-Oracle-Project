package admin.service;

import java.util.Scanner;

import admin.AdministratorView;

public class AdCourseService implements IAdCourseService {

	private static AdministratorView administratorView;
	private Scanner scan;
	
	public AdCourseService() {
		administratorView = new AdministratorView();
		scan = new Scanner(System.in);
	}
	
//----------------------------------------------------------------------------
	
	@Override
	public void courseAdd() {
				
		//과정명 선택
		administratorView.title(AdministratorView.ADDCOURSENAME);
		administratorView.addCourseName();
		
		//과정 기간 입력
		administratorView.title(AdministratorView.ADDCOURSEDATE);
		
		
		//강의실 정보 입력
		administratorView.title(AdministratorView.ADDCOURSECLASSROOM);
		
		
		//교사 정보 입력
		administratorView.title(AdministratorView.ADDCOURSELECTURER);
		
		
		
	}//Method : courseAdd

//----------------------------------------------------------------------------
	
	@Override
	public String courseList() {
		
		//개설 과정 정보
		administratorView.title(AdministratorView.COURSELIST);
		
		System.out.print("과정 번호 입력 : ");
		String select = scan.nextLine();
		
		if (select.equals("0")) {		
			return "0";	
		} else if (select.equals("99")) {
			return "again";
		} else {
			return select; //과정 번호 리턴
		}
		
	}//Method ; courseList

//----------------------------------------------------------------------------
	
	@Override
	public void courseEdit() {
		// TODO Auto-generated method stub
		
	}

//----------------------------------------------------------------------------
	
	@Override
	public void courseDelete() {
		// TODO Auto-generated method stub
		
	}

//----------------------------------------------------------------------------	
	
	@Override
	public void subjectAdd() {
		// TODO Auto-generated method stub
		
	}

//----------------------------------------------------------------------------
	
	@Override
	public void subjectList() {
		// TODO Auto-generated method stub
		
	}

//----------------------------------------------------------------------------
	
	@Override
	public void subjectEdit() {
		// TODO Auto-generated method stub
		
	}

//----------------------------------------------------------------------------
	
	@Override
	public void subjectDelete() {
		// TODO Auto-generated method stub
		
	}

}
