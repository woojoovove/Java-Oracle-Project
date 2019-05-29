package student.controller;

import java.util.Scanner;

import student.service.IStAttendanceRecordService;
import student.service.IStAttendanceViewService;
import student.service.IStGradeService;
import student.service.StAttendanceRecordService;
import student.service.StAttendanceViewService;
import student.service.StGradeService;
import student.view.StudentAttendanceView;
import student.view.StudentGradeView;
import util.Cls;

public class StudentController {

	private static StudentAttendanceView studentAttendanceView;	
	private static StudentGradeView studentGradeView;
	
	private static IStGradeService stGradeService;
	private static IStAttendanceRecordService stAttRecordService;
	private static IStAttendanceViewService stAttViewService;
	
	private static Scanner scan;
	
	static {
		studentAttendanceView = new StudentAttendanceView();
		studentGradeView = new StudentGradeView();
		
		stGradeService = new StGradeService();
		stAttRecordService = new StAttendanceRecordService();
		stAttViewService = new StAttendanceViewService();
		
		scan = new Scanner(System.in);
	}
	
//===============================================================================================================================	
	
	public static void main(String studentSeq) throws Exception {

		boolean studentLoop = true;
		
		while (studentLoop) {
			
			Cls.clearScreen();
		
			studentAttendanceView.begin();
			stGradeService.personalInfo(studentSeq);
			String select = studentAttendanceView.menu();
			
			
	//-------------------------------------------------------------------------------------------------------
			
			if (select.equals("1")) { //성적 조회

				stGradeService.gradeList(studentSeq);
				
				studentGradeView.quizlist();

				gradeService2(); //시험문제 조회

				studentGradeView.pause();
				
	//-------------------------------------------------------------------------------------------------------
				
			} else if (select.equals("2")) { //출결 기록 입력
				
				stAttRecordService.attendanceRecordAdd(studentSeq);
				
	//-------------------------------------------------------------------------------------------------------
				
			} else if (select.equals("3")) { //출결 조회
				
				boolean studentAttendanceViewLoop = true;
				
				while (studentAttendanceViewLoop) {
					
					Cls.clearScreen();
					studentAttendanceView.title(StudentAttendanceView.ATTENDANCEVIEW);
					
					String menuSelect = studentAttendanceView.studentAttendanceViewMenu01();
					
			//--------------------------------------------------------------------------------
					
					if (menuSelect.equals("1")) { //출결 조회 방법 선택
						
						boolean AttendanceViewTypeLoop = true;
						
						while (AttendanceViewTypeLoop) {
							
							Cls.clearScreen();
							studentAttendanceView.title(StudentAttendanceView.ATTENDANCEVIEW);
							
							menuSelect = studentAttendanceView.studentAttendanceViewMenu02();
							
							if (menuSelect.equals("1")) { //전체 기간 조회
							
								stAttViewService.entireAttendanceView(studentSeq);
				
							} else if (menuSelect.equals("2")) { //과목별 기간 조회
								
								stAttViewService.subjectAttendanceView(studentSeq);
								
							} else if (menuSelect.equals("0")) AttendanceViewTypeLoop = false; else continue;
							
						}//while : AttendanceViewTypeLoop

					} else if (menuSelect.equals("0")) studentAttendanceViewLoop = false; else continue;
					
				}//while : studentAttendanceViewLoop
								
	//-------------------------------------------------------------------------------------------------------
				
			} else if (select.equals("4")) { //추천서 조회
				
				
				
				
	//-------------------------------------------------------------------------------------------------------			
				
			} else if (select.equals("0")) { //로그아웃
				
				studentLoop = false;				
				Cls.clearScreen();
				
			}
			
		}//While : studentLoop				
		
	}//method : main
	
//===============================================================================================================================	
	
	public static void gradeService1() {

		boolean stGradeQuiz = true;

		while (stGradeQuiz) {
			
			String select = scan.nextLine();
			
			if (select.equals("0")) {
				
				try {

					Cls.clearScreen();

					
					stGradeService.gradeList(select);
					studentGradeView.quizlist();
					back();

				} catch (Exception e) {

					e.printStackTrace();
					
				}

			} else {
				
				studentGradeView.error();
				studentGradeView.quizlist2();
				gradeService1();

			}
			
		}

	}//method : gradeService1

//-----------------------------------------------------------------------------
	
	private static void gradeService2() {

		boolean stGradeLoop = true;

		while (stGradeLoop) {

			String select = scan.nextLine();
			
			if (select.equals("0")) {
				
				try {
					StudentController.main(null);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			} else if (select.equals("#")) { // 시험 문제 보기

				stGradeService.quizList();
				studentGradeView.quizlist2();
				gradeService1();

			} else {
				
				studentGradeView.error();
				studentGradeView.quizlist();

			}
			
		}

	}//method : gradeService2

//-----------------------------------------------------------------------------	
	
	private static void back() {

		boolean back = true;

		while (back) {
			
			String select = scan.nextLine();

			if (select.equals("0")) {
				
				try {
					StudentController.main(null);
				} catch (Exception e) {

					e.printStackTrace();
				}
				
			} else if (select.equals("#")) {

				Cls.clearScreen();
				stGradeService.quizList();

				studentGradeView.quizlist2();

				gradeService1();

			} else {
				
				studentGradeView.error();

			}

		}
		
	}//method : back
	
}//Class : StudentController


