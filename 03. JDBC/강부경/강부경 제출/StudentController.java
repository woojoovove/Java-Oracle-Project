package student.controller;

import java.util.ArrayList;
import java.util.Scanner;

import dto.StudentInfoDTO;
import dto.VwQuizListDTO;
import util.Cls;

import student.StudentView;
import student.service.IStAttendanceRecordService;
import student.service.IStAttendanceViewService;
import student.service.IStGradeService;
import student.service.StAttendanceRecordService;
import student.service.StAttendanceViewService;
import student.service.StGradeDAO;
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
		// stAttRecordService = new StAttendanceRecordService();
		// stAttViewService = new StAttendanceViewService();

		scan = new Scanner(System.in);
	}

//=============================================================================================	

	public static void main(StudentInfoDTO loginDTO) throws Exception {

		boolean studentLoop = true;

		while (studentLoop) {

			// StGradeService.stgser = new StGradeService();
			// IStGradeService stgser = null;

			Cls.clearScreen();
			System.out.println("\t\t\t\t\tLOADING.....");
			Thread.sleep(700);
			Cls.clearScreen();

			studentView.begin();

			stGradeService.personalInfo();

			studentView.menu();
			String select = scan.nextLine();

			// -------------------------------------------------------

			if (select.equals("1")) {

				// 성적 조회
				Cls.clearScreen();

				stGradeService.gradeList();
				studentView.quizlist();

				gradeService2();

				studentView.pause(); // pause 필요에 따라 사용해 주세요

				// -------------------------------------------------------

			} else if (select.equals("2")) {

				stAttRecordService.attendanceRecordAdd(select);

				attendanceRecord1();

				studentView.pause(); // pause 필요에 따라 사용해 주세요

				// -------------------------------------------------------

			} else if (select.equals("3")) {

				attendanceView1();

				studentView.pause(); // pause 필요에 따라 사용해 주세요

				// -------------------------------------------------------

			} else if (select.equals("0")) {

				studentLoop = false;

				Cls.clearScreen();
				System.out.println("\t\t\t\t\tLOADING.....");
				Thread.sleep(700);
				Cls.clearScreen();

			}

		} // While End

	}// Method : main

//=============================================================================================

	private static void attendanceView1() {
		// 출결 조회
		boolean stAttendanceLoop = true;

		while (stAttendanceLoop) {

			StudentView.studentAttendanceMenu();

			String select = scan.nextLine();

			if (select.equals("1")) {
				stAttViewService.entireAttendanceList();

				entireAttendance1();

			} else if (select.equals("2")) {
				stAttViewService.entireAttendanceList(); // TODO service 월 리스트 작성

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

				stAttViewService.entireAttendanceList(); // TODO service 월 별 출석현황 data 작성

			} else if (select.equals("")) { // TODO 사용자 번호 입력

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

				stAttViewService.entireAttendanceList(); // TODO service 월 리스트 작성

			} else if (select.equals("*")) { // TODO service 일별 조회

				stAttViewService.entireAttendanceList();

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

				stAttViewService.entireAttendanceList(); // TODO service 월 리스트

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
//-------------------------------------------------------밑에까지 강부경
	public static void gradeService1() {

		boolean stGradeQuiz = true;

		while (stGradeQuiz) {
			String select = scan.nextLine();
			if (select.equals("0")) {
				try {

					Cls.clearScreen();
					System.out.println("\t\t\t\t\tLOADING.....");
					Thread.sleep(700);
					Cls.clearScreen();

					stGradeService.gradeList();
					studentView.quizlist();
					back();

				} catch (Exception e) {

					e.printStackTrace();
				}

			} else {
				studentView.error();
				studentView.quizlist2();
				gradeService1();

			}
		}

	}

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

				//Cls.clearScreen();
				

				stGradeService.quizList();
				studentView.quizlist2();
				gradeService1();

			} else {
				studentView.error();
				studentView.quizlist();

			}
		}

	}

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

				studentView.quizlist2();

				gradeService1();

			} else {
				studentView.error();

			}

		}
	}


}// Class : StudentController
