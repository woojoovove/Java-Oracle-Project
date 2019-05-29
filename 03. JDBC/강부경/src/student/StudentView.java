package student;

import java.util.Scanner;

public class StudentView {

	public final static int GRADE = 1;
	public final static int QUIZ = 2;
	private static final int ATTENDANCERECORD = 3;
	private static final int ATTENDANCEVIEW = 4;
	private static final int ATTENDANCEENTIREVIEW = 5;
	private static final int ATTENDANCEMONTHLYVIEW = 6;
	private static final int ATTENDANCEDAILYVIEW = 7;

	public  void begin() {
		
		System.out.println("\t\t\t\t[쌍용교육센터 - 교육생]");
		
	}//Method : begin
	
//------------------------------------------------------------------------------------------------------------------
	
	public void menu() {
				
		System.out.println("\n\t==========================================================================\n");

		System.out.println("\t\t\t\t[1] 성적 조회\n");
		System.out.println("\t\t\t\t[2] 출결 등록\n");
		System.out.println("\t\t\t\t[3] 출결 관리\n\n");
		
		System.out.println("\t\t\t\t[0] 로그아웃\n");
		
		System.out.println("\t--------------------------------------------------------------------------\n");
		
		System.out.println("\t\t\t\t[ ] 안의 번호를 입력하십시오");
		System.out.print("\t\t\t\t입력: ");
		
	}//Method : menu

//------------------------------------------------------------------------------------------------------------------
	
	public static void studentAttendanceMenu() {
		
		System.out.println("[1] 전체 기간 조회");
		System.out.println("[2] 월별 조회");
		System.out.println();
		System.out.println("[0] 이전 화면으로 돌아가기");
		
	}// Method : studentAttendanceMenu
	
//------------------------------------------------------------------------------------------------------------------
	
	public void title(int n) {
		if (n == StudentView.GRADE) {
			System.out.println("[성적 조회]");
		} else if ( n == StudentView.QUIZ) {
			System.out.println("[시험문제 확인]");
		} else if ( n == StudentView.ATTENDANCERECORD) {
			System.out.println("[출결 등록]");
		} else if ( n == StudentView.ATTENDANCEVIEW) {
			System.out.println("[출결 조회]");
		} else if ( n == StudentView.ATTENDANCEENTIREVIEW) {
			System.out.println("[출결 조회 - 전체 기간]");
		} else if ( n == StudentView.ATTENDANCEMONTHLYVIEW) {
			System.out.println("[출결 조회 - 월별]");
		} else if ( n == StudentView.ATTENDANCEDAILYVIEW) {
			System.out.println("[출결 조회 - 일별]");
		}
	}

//------------------------------------------------------------------------------------------------------------------
	
	@SuppressWarnings("resource")
	public void pause() {
		
		System.out.println("계속하려면 ENTER키를 누르십시오.");
		Scanner scan = new Scanner(System.in);
		scan.nextLine();
		
	}

//------------------------------------------------------------------------------------------------------------------
	
	@SuppressWarnings("resource")
	public void error() {
		
		System.out.println("잘못 입력하셨습니다. 다시 입력해주세요.");
		Scanner scan = new Scanner(System.in);
		scan.nextLine();
		
	}
	
}//Class : StudentView
