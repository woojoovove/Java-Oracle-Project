package student;

import java.util.Scanner;

import login.Cls;
import student.service.IStAttendanceRecordService;
import student.service.IStAttendanceViewService;
import student.service.IStGradeService;
import student.service.StAttendanceRecordService;
import student.service.StAttendanceViewService;
import student.service.StGradeService;

public class StudentController {

	private static StudentView studentView;	
	
	private static IStGradeService stGradeService;
	private static IStAttendanceRecordService stAttRecordService;
	private static IStAttendanceViewService stAttViewService;
	
	private static Scanner scan;
	
	static {
		studentView = new StudentView();
		
		stGradeService = new StGradeService();
		stAttRecordService = new StAttendanceRecordService();
		stAttViewService = new StAttendanceViewService();
		
		scan = new Scanner(System.in);
	}
	
//=============================================================================================	
	
	public static void main(String[] args) throws Exception {

		boolean studentLoop = true;
		
		while (studentLoop) {
			
			//StGradeService.stgser = new StGradeService();
			//IStGradeService stgser = null;
			
			Cls.clearScreen();
			System.out.println("\t\t\t\t\tLOADING.....");
			Thread.sleep(700);
			Cls.clearScreen();
			
			studentView.begin();
			
			
			
			studentView.menu();
			String select = scan.nextLine();
			
	//-------------------------------------------------------
			
			if (select.equals("1")) {
				
				//성적 조회
				
				stGradeService.gradeList();
				
				gradeService2();
					
				studentView.pause(); //pause 필요에 따라 사용해 주세요
				
	//-------------------------------------------------------		
				
			} else if (select.equals("2")) {
				
				stAttRecordService.attendanceRecordAdd();
				
				attendanceRecord1();
				
				studentView.pause(); //pause 필요에 따라 사용해 주세요
				
	//-------------------------------------------------------
				
			} else if (select.equals("3")) {
				
				attendanceView1();
				
				studentView.pause(); //pause 필요에 따라 사용해 주세요
				
	//-------------------------------------------------------
				
			} else if (select.equals("0")) {
				
				studentLoop = false;
				
				Cls.clearScreen();
				System.out.println("\t\t\t\t\tLOADING.....");
				Thread.sleep(700);
				Cls.clearScreen();
				
			}
			
		}//While End				
		
	}//Method : main

//=============================================================================================
	
	private static void attendanceView1() {
		//출결 조회
		boolean stAttendanceLoop = true;
		
		while (stAttendanceLoop) {
			
			StudentView.studentAttendanceMenu();
			
			String select = scan.nextLine();					
			
			if(select.equals("1")) {
				stAttViewService.entireAttendanceList();
				
				entireAttendance1();
				
			} else if (select.equals("2")) {
				stAttViewService.monthlyAttendanceList(); // TODO service 월 리스트 작성
				
				monthlyAttendance1();
	
			} else if (select.equals("0")) {
				studentView.begin();
				studentView.menu();
			} else {
				studentView.error();
			}
			
		}
		
	}

	private static void monthlyAttendance1() {
		
		boolean monthlyAttendanceList = true; 
		
		while (monthlyAttendanceList) {
			
			String select = scan.nextLine();
			
			if (select.equals("0")) {
				
				stAttViewService.monthlyAttendanceList(); //TODO service 월 별 출석현황 data 작성
				
			} else if (select.equals("")) { //TODO 사용자 번호 입력
				
				monthlyAttendanceDetail1();
				
			} else {
				studentView.error();
			}
				
		}
		
	}

	private static void monthlyAttendanceDetail1() {
		
		boolean monthlyAttendanceDetail = true;
		
		while (monthlyAttendanceDetail) {
			
			String select = scan.nextLine();
			
			if (select.equals("0")) {
				
				stAttViewService.monthlyAttendanceList(); // TODO service 월 리스트 작성
				
			} else if (select.equals("*")) { //TODO service 일별 조회 
				
				stAttViewService.dailyAttendanceList(); 
				
				dailyAttendanceList1();
					
			} else {
				studentView.error();
			}
			
		}
		
	}

	private static void dailyAttendanceList1() {
		
		boolean dailyAttendanceList = true;
		
		while (dailyAttendanceList) {
			
			String select = scan.nextLine();
			
			if (select.equals("0")) {
				
				stAttViewService.monthlyAttendanceList(); // TODO service 월 리스트
				
			} else {
				studentView.error();
			}
		} 
		
	}

	private static void entireAttendance1() {
		
		boolean entireAttendanceList = true;
		
		while (entireAttendanceList) {
			
			String select = scan.nextLine();
			
			if (select.equals("0")) {
				StudentView.studentAttendanceMenu();
			
			} else {
				studentView.error();
			}
		}
		
	}

	private static void gradeService2() {
		
		boolean stGradeLoop = true;
		
		while (stGradeLoop) {
			
			String select = scan.nextLine();
			if (select.equals("0")) {
				studentView.begin();
				studentView.menu();
			
			} else if (select.equals("")) { // TODO 사용자 번호입력 
				stGradeService.quizList();
				 
				gradeService1();
				
			} else {
				studentView.error();
			}
		}
		
	}

	private static void attendanceRecord1() {
		
		boolean stAttendRecord = true;
		
		while (stAttendRecord) {
			String select = scan.nextLine();
			if (select.equals("0")) {
				studentView.begin();
				studentView.menu();
			} else {
				studentView.error();
			}
		}
		
	}

	private static void gradeService1() {
		
		boolean stGradeQuiz = true;
		
		while (stGradeQuiz) {
			String select = scan.nextLine();
			if (select.equals("0")) {
				stGradeService.gradeList();
			} else if (select.equals("#")) {// TODO 다음 페이지로 이동하기
				
			} 
		}
		
	}
	
}//Class : StudentController


