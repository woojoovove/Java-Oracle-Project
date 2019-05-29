package admin;

import java.util.Scanner;

public class AdministratorView {

	//기초 정보 관리(과정명 관리)
	public final static int courseName = 100;
	public final static int insertCourseName = 101;
	public final static int modifyCourseName = 102;
	public final static int deleteCourseName = 103;
	
	//기초 정보 관리(과목명 관리)
	public final static int subjectName = 104;
	public final static int insertSubject = 105;
	public final static int modifySubject = 106;
	public final static int deleteSubject = 107;
	
	//기초 정보 관리(강의실명 관리)
	public final static int classRoom = 108;
	public final static int modifyClassRoomName = 109;
	public final static int modifyclassRoomNum = 110;
	
	//기초 정보 관리(교재명 관리)
	public final static int textBook = 111;
	public final static int inserttextBook = 112;
	public final static int modifytextBook = 113;
	public final static int deletetextBook = 114;
	public final static int selectPublisher = 115;
	
	//교사 계정 관리
	public final static int addLecturer = 200;
	public final static int lecturerInfo = 201;
	public final static int detailLecturer= 202;
	public final static int updateLecturer = 203;
	public final static int updateLecturerName = 204;
	public final static int updateLecturerReg = 205;
	public final static int updateLecturerTel = 206;
	public final static int updateLecturerSubject = 207;
	public final static int lecturerCourseInfo = 208;
	
	//과정 관리
	public final static int ADDCOURSENAME = 300;
	public final static int ADDCOURSEDATE = 301;
	public final static int ADDCOURSECLASSROOM = 302;
	public final static int ADDCOURSELECTURER = 303;
	public final static int EDITCOURSE = 304;
	public final static int EDITCOURSEELEMENT = 305;
	public final static int EDITCOURSENAME = 306;
	public final static int EDITCOURSEDATE = 307;
	public final static int EDITCOURSECLASSROOM = 308;
	public final static int EDITCOURSELECTURER = 309;
	public final static int DELTETECOURSE = 310;
	public final static int COURSELIST = 311;
	public final static int COURSESTUDENT = 312;	
	
	//과목 관리
	public final static int SUBJECTLIST = 313;
	public final static int ADDSUBJECT = 314;
	public final static int ADDSUBJECTNAME = 315;
	public final static int ADDSUBJECTDATE = 316;
	public final static int ADDSUBJECTTEXTBOOK = 317;
	public final static int EDITSUBJECT = 318;
	public final static int EDITSUBJECTNAME = 319;
	public final static int EDITSUBJECTDATE = 320;
	public final static int EDITSUBJECTTEXTBOOK = 321;
	public final static int DELETESUBJECT = 322;
	
	//교육생 관리
	public final static int STUDENT = 400;
	public final static int ADDSTUDENT = 401;
	public final static int STUDENTINFOMANAGEMENT = 402;
	public final static int SEARCHBYNAME = 403;
	public final static int SEARCHBYCOURSE = 404;
	public final static int EDITSTUDENT = 405;
	public final static int DELETESTUDENT = 406;
	
	//성적
	public final static int GRADE = 500;
	public final static int GRADEBYCOURSE = 501;
	public final static int GRADEBYNAME = 502;
	
	//출결, 추천서
	public final static int ATTENDANCEBYCOURSE = 600;
	public static final int ATTENDANCE = 601;
	public static final int RECOMMENDATION = 700;
	
	private static Scanner scan;
	
	static {
		scan = new Scanner(System.in);
	}
	
//관리자 메뉴 메인	
//==================================================================================================================================
	
	public void begin() {
		
		System.out.println("\t\t\t\t[쌍용교육센터 - 관리자]");
		
	}//Method : begin
	
	public void menu() {
		
		System.out.println("\n\t==========================================================================\n");

		System.out.println("\t\t\t\t[1] 기초 정보 관리\n");
		System.out.println("\t\t\t\t[2] 교사 계정 관리\n");
		System.out.println("\t\t\t\t[3] 개설 과정 관리\n");
		System.out.println("\t\t\t\t[4] 교육생 관리\n");
		System.out.println("\t\t\t\t[5] 성적 관리\n");
		System.out.println("\t\t\t\t[6] 출결 관리\n");
		System.out.println("\t\t\t\t[7] 추천서 관리\n\n");
		
		System.out.println("\t\t\t\t[0] 로그아웃\n");
		
		System.out.println("\t--------------------------------------------------------------------------\n");
		
		System.out.println("\t\t\t\t[ ] 안의 번호를 입력하십시오");
		System.out.print("\t\t\t\t입력: ");
		
	}//Method : menu
	
//==================================================================================================================================


	
//기초 정보 관리	
//==================================================================================================================================

	public void basicInfomenu() {
		
		System.out.println("\n\t==========================================================================\n");
		System.out.println("\t\t\t\t[1] 과정명\n");
		System.out.println("\t\t\t\t[2] 과목명\n");
		System.out.println("\t\t\t\t[3] 강의실명\n");
		System.out.println("\t\t\t\t[4] 교재명\n");
		
		System.out.println("\t\t\t\t[0] 돌아가기\n");
		
		System.out.println("\t--------------------------------------------------------------------------\n");
		
		System.out.println("\t\t\t\t[ ] 안의 번호를 입력하십시오");
		System.out.print("\t\t\t\t입력: ");
		
		
	}
	
	
	public void courseNameMenu() {
		
		System.out.println("\n\t==========================================================================\n");
		System.out.println("\t\t\t\t[1] 과정 추가\n");
		System.out.println("\t\t\t\t[2] 과정 수정\n");
		System.out.println("\t\t\t\t[3] 과정 삭제\n");
		
		System.out.println("\t\t\t\t[0] 돌아가기\n");
		
		System.out.println("\t--------------------------------------------------------------------------\n");
		
		System.out.println("\t\t\t\t[ ] 안의 번호를 입력하십시오");
		System.out.print("\t\t\t\t입력: ");
		
	}
	
	
	public void subjectNameMenu() {
		
		System.out.println("\n\t==========================================================================\n");
		System.out.println("\t\t\t\t[1] 과목 추가\n");
		System.out.println("\t\t\t\t[2] 과목 수정\n");
		System.out.println("\t\t\t\t[3] 과목 삭제\n");
		
		System.out.println("\t\t\t\t[0] 돌아가기\n");
		
		System.out.println("\t--------------------------------------------------------------------------\n");
		
		System.out.println("\t[ ] 안의 번호를 입력하십시오");
		System.out.print("\t입력: ");
		
	}
	
	public void textBookMenu() {
		
		System.out.println("\n\t==========================================================================\n");
		System.out.println("\t\t\t\t[1] 교재 추가\n");
		System.out.println("\t\t\t\t[2] 교재 수정\n");
		System.out.println("\t\t\t\t[3] 교재 삭제\n");
		
		System.out.println("\t\t\t\t[0] 돌아가기\n");
		
		System.out.println("\t--------------------------------------------------------------------------\n");
		
		System.out.println("\t\t\t\t[ ] 안의 번호를 입력하십시오");
		System.out.print("\t\t\t\t입력: ");
		
	}
	
//==================================================================================================================================

	
	
//교사 계정 관리	
//==================================================================================================================================
	
	public void lecturerBasicInfoSelect() {
		// TODO Auto-generated method stub
		
	}
	
	public void lecturerBasicInfomenu() {
		
		System.out.println("\n\t==========================================================================\n");
		System.out.println("\t\t\t\t[1] 교사 추가\n");
		System.out.println("\t\t\t\t[2] 교사 정보 조회\n");
		
		System.out.println("\t\t\t\t[0] 돌아가기\n");
		
		System.out.println("\t--------------------------------------------------------------------------\n");
		
		System.out.println("\t\t\t\t[ ] 안의 번호를 입력하십시오");
		System.out.print("\t\t\t\t입력: ");
		
	}
	
	public void lecturerBasicInfoUpdate() {
		
		System.out.println("\n\t==========================================================================\n");
		System.out.println("\t\t\t\t[1] 수정\n");
		System.out.println("\t\t\t\t[2] 삭제\n");
		
		System.out.println("\t\t\t\t[0] 돌아가기\n");
		
		System.out.println("\t--------------------------------------------------------------------------\n");
		
		System.out.println("\t\t\t\t[ ] 안의 번호를 입력하십시오");
		System.out.print("\t\t\t\t입력: ");
	}
	
//==================================================================================================================================	
	
	
	
//과정 관리
//==================================================================================================================================	
	
	public void thinLine() {
		
		System.out.println("\t--------------------------------------------------------------------------");
		
	}//method : line
	
	public void thickLine() {
		
		System.out.println("\t==========================================================================");
		
	}//method : line
	
//------------------------------------------------------------------------------------------------------------------------	
	
	//과정 관리 메인 메뉴
	public void courseManagement() {
		
		System.out.println("\t\t\t\t[개설 과정 관리]");
		System.out.println("\n\t==========================================================================\n");

		System.out.println("\t\t\t\t[1] 개설 과정 신규 등록\n");
		System.out.println("\t\t\t\t[2] 개설 과정 수정\n");
		System.out.println("\t\t\t\t[3] 개설 과정 삭제\n");
		System.out.println("\t\t\t\t[4] 개설 과정 조회\n\n");
		
		System.out.println("\t\t\t\t[0] 돌아가기\n");
		
		System.out.println("\t--------------------------------------------------------------------------");
		
		System.out.println("\t\t\t\t[ ] 안의 번호를 입력하십시오");
		System.out.print("\t\t\t\t입력: ");
		
	}//Method : courseManagement
	
//------------------------------------------------------------------------------------------------------------------------
	
	//과정 추가 01 - 과정명
	public String addCourseName01() {
		
		System.out.println("\t==========================================================================");
		System.out.println("\t[ ] 안의 번호를 입력하십시오");
		System.out.print("\t입력: ");
		String select = scan.nextLine();
		
		return select;
		
	}//method : addCourseName01
		
	public void addCourseName02(String courseName) {
		
		System.out.println("\t--------------------------------------------------------------------------");
		System.out.printf("\t선택하신 과정명은\n\t'%s'입니다\n\n", courseName);
		System.out.println("\t계속하시려면 ENTER키를 누르십시오");
		
		String enter = scan.nextLine();
		
	}//method : addCourseName02
	
//------------------------------------------------------------------------------------------------------------------------
	
	//과정 추가 02 - 과정기간
	public void addCourseDate(String startDate, String endDate) {
		
		System.out.println("\n\t==========================================================================");
		System.out.printf("\t과정 시작일은 %s 이며\n\t과정 종료일은 %s 입니다\n\n", startDate, endDate);
		System.out.println("\t계속하시려면 ENTER키를 누르십시오");
		
		String enter = scan.nextLine();
		
	}//method : addCourseDate
	
//------------------------------------------------------------------------------------------------------------------------
	
	//과정 추가 03 - 강의실
	public String addCourseClassroom01() {
		
		System.out.println("\t==========================================================================");
		System.out.println("\t[ ] 안의 번호를 입력하십시오");
		System.out.print("\t입력: ");
		String select = scan.nextLine();
		
		return select;
		
	}//method : addCourseClassroom01
	
	public void addCourseClassroom02(String classroomSeq) {
		
		System.out.println("\t--------------------------------------------------------------------------");
		System.out.printf("\t'제 %s강의실' 을 선택하였습니다\n\n", classroomSeq);
		System.out.println("\t계속하시려면 ENTER키를 누르십시오");
		
		String enter = scan.nextLine();
		
	}//method : addCourseClassroom02
	
//------------------------------------------------------------------------------------------------------------------------ㅃ
	
	//과정 추가 04 - 교사
	public String addLecturer01() {

		System.out.println("\t==========================================================================");
		System.out.println("\t[ ] 안의 번호를 입력하십시오");
		System.out.print("\t입력: ");
		String select = scan.nextLine();
		
		return select;
		
	}//method : addLecturer01

	public void addLecturer02(String lecturerName) {
		
		System.out.println("\t--------------------------------------------------------------------------");
		System.out.printf("\t'%s' 교사를 선택하였습니다\n\n", lecturerName);
		System.out.println("\t계속하시려면 ENTER키를 누르십시오");
		
		String enter = scan.nextLine();
				
	}//method : addLecturer02
	
//------------------------------------------------------------------------------------------------------------------------
	
	//과정 추가 완료
	public void courseAddFinish() {
				
		System.out.println("\t==========================================================================");
		System.out.println("\t개설 과정 추가를 완료합니다");
		System.out.println("\t개설 과정 관리 화면으로 돌아갑니다\n");
		System.out.println("\t계속하시려면 ENTER키를 누르십시오");
		
		String enter = scan.nextLine();
				
	}//method : addLecturer02
	
//------------------------------------------------------------------------------------------------------------------------
	
	//과정 수정 01 - 과정 선택
	public String courseEdit01() {
		
		System.out.println("\t수정할 과목 번호를 선택하십시오");
		System.out.println("\t--------------------------------------------------------------------------");
		System.out.println("\t[0]돌아가기");
		System.out.println("\t--------------------------------------------------------------------------");
		System.out.println("\t[ ] 안의 번호를 입력하십시오");
		System.out.print("\t입력: ");
		String select = scan.nextLine();
		
		if(select.equals("0")) {
			
			System.out.println("\t--------------------------------------------------------------------------");
			System.out.println("\t이전 화면으로 이동합니다\n");
			System.out.println("\t계속하시려면 ENTER키를 누르십시오");
			String enter = scan.nextLine();
			return select;	
			
		} else {			
			return select;			
		}
		
	}//method : courseEdit01

	public void courseEdit02(String courseName) {
		
		System.out.println("\t--------------------------------------------------------------------------");
		System.out.printf("\t'%s' 과정을 선택하였습니다\n\n", courseName);
		System.out.println("\t계속하시려면 ENTER키를 누르십시오");
		
		String enter = scan.nextLine();
		
	}//method : courseEdit01
	
//------------------------------------------------------------------------------------------------------------------------
	
	//과정 수정 02 - 수정 항목 선택
	public String courseEditElement() {
		
		System.out.println("\t수정할 항목을 선택하십시오");
		System.out.println("\t--------------------------------------------------------------------------");
		System.out.println("\t[1]과정명");
		System.out.println("\t[2]과정기간");
		System.out.println("\t[3]강의실");
		System.out.println("\t[4]교사");
		System.out.println("\t[0]돌아가기");
		System.out.println("\t--------------------------------------------------------------------------");
		System.out.println("\t[ ] 안의 번호를 입력하십시오");
		System.out.print("\t입력: ");
		String select = scan.nextLine();
		
		String editElement;
		
		if(select.equals("1")) {
			
			editElement = "1";
			System.out.println("\t--------------------------------------------------------------------------");
			System.out.println("\t과정명 수정 페이지로 이동합니다\n");
			System.out.println("\t계속하시려면 ENTER키를 누르십시오");
			String enter = scan.nextLine();
			return editElement;
			
		} else if (select.equals("2")) {
			
			editElement = "2";
			System.out.println("\t--------------------------------------------------------------------------");
			System.out.println("\t과정기간 수정 페이지로 이동합니다\n");
			System.out.println("\t계속하시려면 ENTER키를 누르십시오");
			String enter = scan.nextLine();
			return editElement;
			
		} else if (select.equals("3")) {
			
			editElement = "3";
			System.out.println("\t--------------------------------------------------------------------------");
			System.out.println("\t강의실 수정 페이지로 이동합니다\n");
			System.out.println("\t계속하시려면 ENTER키를 누르십시오");
			String enter = scan.nextLine();
			return editElement;
			
		} else if (select.equals("4")) {
			
			editElement = "4";
			System.out.println("\t--------------------------------------------------------------------------");
			System.out.println("\t교사 수정 페이지로 이동합니다\n");
			System.out.println("\t계속하시려면 ENTER키를 누르십시오");
			String enter = scan.nextLine();
			return editElement;
			
		} else if (select.equals("0")) {
			
			editElement = "0";
			System.out.println("\t--------------------------------------------------------------------------");
			System.out.println("\t이전 화면으로 이동합니다\n");
			System.out.println("\t계속하시려면 ENTER키를 누르십시오");
			String enter = scan.nextLine();
			return editElement;
			
		}
		
		return null;
		
	}//method : courseEditElement
	

	
	
//------------------------------------------------------------------------------------------------------------------------
	
	//과정 수정 - 과정명 수정
	public String editCourseName01() {
		
		System.out.println("\t==========================================================================");
		System.out.println("\t[ ] 안의 번호를 입력하십시오");
		System.out.print("\t입력: ");
		String select = scan.nextLine();
		
		return select;
		
	}//method : editCourseName01
	
	public void editCourseName02(String newCourseNameSeq) {
		
		System.out.println("\t--------------------------------------------------------------------------");
		System.out.printf("\t과정명을 '%s' 으로 변경합니다\n\n", newCourseNameSeq);
		System.out.println("\t계속하시려면 ENTER키를 누르십시오");
		
		String enter = scan.nextLine();
		
	}//method : editCourseName01
	
//------------------------------------------------------------------------------------------------------------------------
	
	//과정 수정 - 과정 기간 수정
	public void editCourseDate() {
		
		System.out.println("\t--------------------------------------------------------------------------");
		System.out.printf("\t과정기간을 수정하였습니다\n\n");
		System.out.println("\t계속하시려면 ENTER키를 누르십시오");
		
		String enter = scan.nextLine();
		
	}//method : editCourseDate
	
//------------------------------------------------------------------------------------------------------------------------
	
	//과정 수정 - 강의실 수정
	public void editCourseClassroom01() {
		
		System.out.println("\t번호\t강의실명\t강의실정원");
		System.out.println("\t==========================================================================");
		
	}//method : editCourseClassroom02
	
	public void editCourseClassroom02(String newClassroomSeq) {
		
		System.out.println("\t--------------------------------------------------------------------------");
		System.out.printf("\t강의실을 '제 %s강의실' 로 변경합니다\n\n", newClassroomSeq);
		System.out.println("\t계속하시려면 ENTER키를 누르십시오");
		
		String enter = scan.nextLine();
		
	}//method : editCourseClassroom02
	
//------------------------------------------------------------------------------------------------------------------------
	
	//과정 수정 - 교사 수정
	public void editCourseLecturer01() {
		
		System.out.println("\t번호\t교사명\t\t주민번호뒷자리\t\t전화번호\t");
		System.out.println("\t==========================================================================");
		
	}//method : editCourseLecturer01
	
	public void editCourseLecturer02(String lecturerName) {
		
		System.out.println("\t--------------------------------------------------------------------------");
		System.out.printf("\t교사를 '%s' 으로 변경합니다\n\n", lecturerName);
		System.out.println("\t계속하시려면 ENTER키를 누르십시오");
		
		String enter = scan.nextLine();
		
	}//method : editCourseLecturer02
	
//------------------------------------------------------------------------------------------------------------------------
	
	//과정 삭제
	public String courseDelete() {
		
		System.out.println("\t삭제할 과정 번호를 선택하십시오");
		System.out.println("\t--------------------------------------------------------------------------");
		System.out.println("\t[0] 돌아가기");
		System.out.println("\t--------------------------------------------------------------------------");
		System.out.println("\t[ ] 안의 번호를 입력하십시오");
		System.out.print("\t입력: ");
		String select = scan.nextLine();
		
		if(select.equals("0")) {
			
			System.out.println("\t--------------------------------------------------------------------------");
			System.out.println("\t이전 화면으로 이동합니다\n");
			System.out.println("\t계속하시려면 ENTER키를 누르십시오");
			String enter = scan.nextLine();
			return select;	
			
		} else {			
			return select;			
		}
		
	}//method : courseDelete
	
	public void courseDeleteFinish(String deleteCourseName) {
		
		System.out.println("\t--------------------------------------------------------------------------");
		System.out.printf("\t'%s' 과정을 삭제합니다\n\n", deleteCourseName);
		System.out.println("\t계속하시려면 ENTER키를 누르십시오");
		
		String enter = scan.nextLine();
		
	}//method : courseDeleteFinish
	
//------------------------------------------------------------------------------------------------------------------------
	
	//과정 조회 01 - 과정 선택
	public String courseList01() {
		
		System.out.println("\t과정을 선택하면 해당 과정의 개설 과목 관리 페이지로 이동합니다");
		System.out.println("\t--------------------------------------------------------------------------");
		System.out.println("\t[0]돌아가기");
		System.out.println("\t--------------------------------------------------------------------------");
		System.out.println("\t[ ] 안의 번호를 입력하십시오");
		System.out.print("\t입력: ");
		String select = scan.nextLine();
		
		if(select.equals("0")) {
			
			System.out.println("\t--------------------------------------------------------------------------");
			System.out.println("\t이전 화면으로 이동합니다\n");
			System.out.println("\t계속하시려면 ENTER키를 누르십시오");
			String enter = scan.nextLine();
			return select;	
			
		} else {			
			return select;			
		}
		
	}//method : courseEdit01

	public void courseList02(String courseName) {
		
		System.out.println("\t--------------------------------------------------------------------------");
		System.out.printf("\t'%s' 과정을 선택하였습니다\n", courseName);
		System.out.println("\t해당 과정의 과목 관리 페이지로 이동합니다\n");
		System.out.println("\t계속하시려면 ENTER키를 누르십시오");
		
		String enter = scan.nextLine();
		
	}//method : courseEdit01
	
//------------------------------------------------------------------------------------------------------------------------
	
	//과정 조회 02 - 과목 관리 메뉴
	public String courseManagementMenu() {
		
		System.out.println();
		System.out.println("\t\t\t\t[1] 과목 정보\n");
		System.out.println("\t\t\t\t[2] 과목 추가\n");
		System.out.println("\t\t\t\t[3] 과목 수정\n");
		System.out.println("\t\t\t\t[4] 과목 삭제\n");
		System.out.println("\t\t\t\t[5] 교육생 목록\n\n");
		System.out.println("\t\t\t\t[0] 돌아가기\n");	
		System.out.println("\t--------------------------------------------------------------------------");
		System.out.println("\t\t\t\t[ ] 안의 번호를 입력하십시오");
		System.out.print("\t\t\t\t입력: ");
		
		String select = scan.nextLine();
		
		String editElement;
		
		if(select.equals("1")) {
			
			editElement = "1";
			System.out.println("\t--------------------------------------------------------------------------");
			System.out.println("\t과목 정보 페이지로 이동합니다\n");
			System.out.println("\t계속하시려면 ENTER키를 누르십시오");
			String enter = scan.nextLine();
			return editElement;
			
		} else if (select.equals("2")) {
			
			editElement = "2";
			System.out.println("\t--------------------------------------------------------------------------");
			System.out.println("\t과목 추가 페이지로 이동합니다\n");
			System.out.println("\t계속하시려면 ENTER키를 누르십시오");
			String enter = scan.nextLine();
			return editElement;
			
		} else if (select.equals("3")) {
			
			editElement = "3";
			System.out.println("\t--------------------------------------------------------------------------");
			System.out.println("\t과목 수정 페이지로 이동합니다\n");
			System.out.println("\t계속하시려면 ENTER키를 누르십시오");
			String enter = scan.nextLine();
			return editElement;
			
		} else if (select.equals("4")) {
			
			editElement = "4";
			System.out.println("\t--------------------------------------------------------------------------");
			System.out.println("\t과목 삭제 페이지로 이동합니다\n");
			System.out.println("\t계속하시려면 ENTER키를 누르십시오");
			String enter = scan.nextLine();
			return editElement;
			
		} else if (select.equals("5")) {
			
			editElement = "5";
			System.out.println("\t--------------------------------------------------------------------------");
			System.out.println("\t교육생 목록 페이지로 이동합니다\n");
			System.out.println("\t계속하시려면 ENTER키를 누르십시오");
			String enter = scan.nextLine();
			return editElement;
			
		} else if (select.equals("0")) {
			
			editElement = "0";
			System.out.println("\t--------------------------------------------------------------------------");
			System.out.println("\t이전 화면으로 이동합니다\n");
			System.out.println("\t계속하시려면 ENTER키를 누르십시오");
			String enter = scan.nextLine();
			return editElement;
			
		}
		
		return null;
		
	}//method : courseManagementMenu
	
//------------------------------------------------------------------------------------------------------------------------
	
	//과목 정보
	public String subjectList() {
		
		System.out.println("\t[0] 돌아가기");	
		System.out.println("\t--------------------------------------------------------------------------");
		System.out.println("\t[ ] 안의 번호를 입력하십시오");
		System.out.print("\t입력: ");
		
		String select = scan.nextLine();
		
		return select;
		
	}//method : subjectList
		
//------------------------------------------------------------------------------------------------------------------------	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
//------------------------------------------------------------------------------------------------------------------------	
	
	//과목 삭제
	public String deleteSubjectList() {
		
		System.out.println("\t삭제할 과목 번호를 선택하십시오");
		System.out.println("\t--------------------------------------------------------------------------");
		System.out.println("\t[0]돌아가기");
		System.out.println("\t--------------------------------------------------------------------------");
		System.out.println("\t[ ] 안의 번호를 입력하십시오");
		System.out.print("\t입력: ");
		String select = scan.nextLine();
		
		if(select.equals("0")) {
			
			System.out.println("\t--------------------------------------------------------------------------");
			System.out.println("\t이전 화면으로 이동합니다\n");
			System.out.println("\t계속하시려면 ENTER키를 누르십시오");
			String enter = scan.nextLine();
			return select;	
			
		} else {			
			return select;			
		}
		
	}//method : deleteSubjectList
	
	public void deleteSubjectFinish(String deleteSubjectName) {
		
		System.out.println("\t--------------------------------------------------------------------------");
		System.out.printf("\t'%s' 과목을 삭제합니다\n\n", deleteSubjectName);
		System.out.println("\t계속하시려면 ENTER키를 누르십시오");
		
		String enter = scan.nextLine();
		
	}
	
//==================================================================================================================================

	
	
//교육생 관리
//==================================================================================================================================	
	
	public void menuAdStudent() {
		// TODO Auto-generated method stub
		
	}

	public void menuManageStudent() {
		// TODO Auto-generated method stub
		
	}
	
	public void menuEditStudent() {
		
	}
	
//==================================================================================================================================	

	
	
//성적 관리
//==================================================================================================================================	
	
	public void menuGrade() {
		// TODO Auto-generated method stub
		
	}
	
//==================================================================================================================================	
	
	
	
//출결, 추천서	
//==================================================================================================================================	

	public void menuAttendance() {

//		#A07-001. 메인 메뉴 화면
//
//		 [출결 관리]
//
//		======================================================================
//
//		     [1]  과정별 출결 조회
//
//			 [0] 돌아가기
//
//		----------------------------------------------------------------------

	}
	
	public void menuCourse() {

		/* 
		 * A07-002.와 같이 출력
		 * 과정별 출결 조회를 위한 과정 목록 출력 : 10개씩 끊어서 보여주기
		최신순으로 정렬,
		SELECT coursename FROM course ORDER BY startdate desc; 
		
		*/
		
	}
	
	public void monthlyAttendance() {

		/*
		 * [1] 1월
		 * [2] 2월
		 * .
		 * .
		 * .
		 */
	}

	public void dailyAttendance() {

		/*
		 * [조회날짜 입력]
		======================================================================
		조회중인 월 : 2월
		----------------------------------------------------------------------
		조회할 날짜를 입력하십시오

		조회 가능한 날짜 (1일 ~ 28일)

		입력 : 

		 */
	}
	
	public void listCurrCourse() {
		// SELECT FROM tblCourse WHERE 상태 = 진행중 
	}


	public void listLastCourse() {

		/*
		 * 종료된 강좌 출력
		 * SELECT 강좌명 FROM tblCourse WHERE 상태 = 수료 ORDER BY enddate desc;
		 */
	}
	
	public void pause(int n) {
		
		if (n == AdministratorView.RECOMMENDATION) { 
			
			System.out.println("추천서 입력을 계속 하시려면 엔터를 입력해주세요");
			scan.nextLine();
		}
	}
	
//==================================================================================================================================		
	
	public void title(int n) {
		
		switch(n)
		{

		//개설 과정 관리
		case AdministratorView.ADDCOURSENAME : 
			System.out.println("\t\t\t\t[개설 과정 추가 - 과정명 선택]"); 
			System.out.println("\n\t==========================================================================");
			System.out.println("\t번호\t과정명");
			System.out.println("\t==========================================================================");
			break;
		case AdministratorView.ADDCOURSEDATE : 
			System.out.println("\t\t\t\t[개설 과정 추가 - 과정 기간 입력]"); 
			System.out.println("\n\t==========================================================================");
			break;
		case AdministratorView.ADDCOURSECLASSROOM :
			System.out.println("\t\t\t\t[개설 과정 추가 - 강의실 선택]"); 
			System.out.println("\n\t==========================================================================");
			System.out.println("\t번호\t강의실명\t강의실정원");
			System.out.println("\t==========================================================================");
			break;
		case AdministratorView.ADDCOURSELECTURER :
			System.out.println("\t\t\t\t[개설 과정 추가 - 교사 선택]"); 
			System.out.println("\n\t==========================================================================");
			System.out.println("\t번호\t교사명\t\t주민번호뒷자리\t\t전화번호\t");
			System.out.println("\t==========================================================================");
			break;
		case AdministratorView.EDITCOURSE :	
			System.out.println("\t\t\t\t[개설 과정 수정 - 과정 선택]"); 
			System.out.println("\n\t==========================================================================");
			break;
		case AdministratorView.EDITCOURSEELEMENT :	
			System.out.println("\t\t\t\t[개설 과정 수정 - 수정 항목 선택]"); 
			System.out.println("\n\t==========================================================================");
			break;			
		case AdministratorView.EDITCOURSENAME :
			System.out.println("\t\t\t\t[개설 과정 수정 - 과정명 수정]"); 
			System.out.println("\n\t==========================================================================");
			break;
		case AdministratorView.EDITCOURSEDATE :
			System.out.println("\t\t\t\t[개설 과정 수정 - 과정 기간 수정]"); 
			System.out.println("\n\t==========================================================================");
			break;
		case AdministratorView.EDITCOURSECLASSROOM :
			System.out.println("\t\t\t\t[개설 과정 수정 - 강의실 수정]"); 
			System.out.println("\n\t==========================================================================");
			break;
		case AdministratorView.EDITCOURSELECTURER :
			System.out.println("\t\t\t\t[개설 과정 수정 - 교사 수정]"); 
			System.out.println("\n\t==========================================================================");
			break;
		case AdministratorView.DELTETECOURSE :
			System.out.println("\t\t\t\t[개설 과정 삭제]"); 
			System.out.println("\n\t==========================================================================");
			break;
		case AdministratorView.COURSELIST : 
			System.out.println("\t\t\t\t[개설 과정 정보]"); 
			System.out.println("\n\t==========================================================================");
			break;
		case AdministratorView.COURSESTUDENT : 
			System.out.println("\t\t\t\t[교육생 목록]"); 
			System.out.println("\n\t==========================================================================");
			break;
		
	//--------------------------------------------------------------------------------------------------------------
		
		//개설 과목 관리
		case AdministratorView.SUBJECTLIST :
			System.out.println("\t\t\t\t[개설 과목 정보]"); 
			break;
		case AdministratorView.ADDSUBJECT : 
			System.out.println("\t\t\t\t[개설 과목 추가]"); 
			System.out.println("\n\t==========================================================================");
			break;
		case AdministratorView.ADDSUBJECTNAME : 
			System.out.println("\t\t\t\t[개설 과목 추가 - 과목명 선택]"); 
			System.out.println("\n\t==========================================================================");
			break;
		case AdministratorView.ADDSUBJECTDATE : 
			System.out.println("\t\t\t\t[개설 과목 추가 - 과목 기간 입력]"); 
			System.out.println("\n\t==========================================================================");
			break;
		case AdministratorView.ADDSUBJECTTEXTBOOK : 
			System.out.println("\t\t\t\t[개설 과목 추가 - 교재 선택]"); 
			System.out.println("\n\t==========================================================================");
			break;
		case AdministratorView.EDITSUBJECT :
			System.out.println("\t\t\t\t[과목 수정]"); 
			System.out.println("\n\t==========================================================================");
			break;
		case AdministratorView.EDITSUBJECTNAME : 
			System.out.println("\t\t\t\t[과목명 선택]"); 
			System.out.println("\n\t==========================================================================");
			break;
		case AdministratorView.EDITSUBJECTDATE : 
			System.out.println("\t\t\t\t[과목 기간 수정]"); 
			System.out.println("\n\t==========================================================================");
			break;
		case AdministratorView.EDITSUBJECTTEXTBOOK :
			System.out.println("\t\t\t\t[교재 수정]"); 
			System.out.println("\n\t==========================================================================");
			break;
		case AdministratorView.DELETESUBJECT :
			System.out.println("\t\t\t\t[과목 삭제]"); 
			break;
				
	//--------------------------------------------------------------------------------------------------------------
				
		//교육생 관리
		case AdministratorView.ADDSTUDENT 				: System.out.println("\t\t[교육생 등록]"); break;
		case AdministratorView.STUDENTINFOMANAGEMENT 	: System.out.println("\t\t[교육생 정보 관리]"); break;
		case AdministratorView.SEARCHBYNAME 			: System.out.println("\t\t[이름으로 교육생 검색]"); break;
		case AdministratorView.SEARCHBYCOURSE 			: System.out.println("\t\t[과정명으로 교육생 검색]"); break;
		case AdministratorView.EDITSTUDENT 				: System.out.println("\t\t[학생 정보 수정]"); break;
		case AdministratorView.STUDENT 					: System.out.println("\t\t[교육생 관리]"); break;
	
	//--------------------------------------------------------------------------------------------------------------
		
		//성적 관리
		case AdministratorView.GRADE 					: System.out.println("\t\t[성적 관리]"); break;
		case AdministratorView.GRADEBYCOURSE 			: System.out.println("\t\t[과정별 시험 및 성적 관리]"); break;
		case AdministratorView.GRADEBYNAME 				: System.out.println("\t\t[교육생별 시험 및 성적 관리]"); break;
			
	//--------------------------------------------------------------------------------------------------------------
		
		//기초 정보 관리(과정명 관리)
		case AdministratorView.courseName 				: System.out.println("\t\t[과정명 리스트]"); break;
		case AdministratorView.insertCourseName 		: System.out.println("\t\t[과정명 추가]"); break;
		case AdministratorView.modifyCourseName 		: System.out.println("\t\t[과정명 수정]"); break;
		case AdministratorView.deleteCourseName 		: System.out.println("\t\t[과정명 삭제]"); break;
		
	//--------------------------------------------------------------------------------------------------------------	
		
		//기초 정보 관리(과목명 관리)
		case AdministratorView.subjectName 				: System.out.println("\t\t[과목명 리스트]"); break;
		case AdministratorView.insertSubject 			: System.out.println("\t\t[과목명 추가]"); break;
		case AdministratorView.modifySubject 			: System.out.println("\t\t[과목명 수정]"); break;
		case AdministratorView.deleteSubject 			: System.out.println("\t\t[과목명 삭제]"); break;
		
	//--------------------------------------------------------------------------------------------------------------	
		
		//기초 정보 관리(강의실명 관리)	
		case AdministratorView.classRoom 				: System.out.println("\t\t[강의실명]"); break;
		case AdministratorView.modifyClassRoomName 		: System.out.println("\t\t[강의실명 수정]"); break;
		case AdministratorView.modifyclassRoomNum 		: System.out.println("\t\t[강의실 정원 수정]"); break;
		
	//--------------------------------------------------------------------------------------------------------------	
		
		//기초 정보 관리(교재명 관리)			
		case AdministratorView.textBook 				: System.out.println("\t\t[교재명]"); break;
		case AdministratorView.inserttextBook 			: System.out.println("\t\t[교재 추가]"); break;
		case AdministratorView.modifytextBook 			: System.out.println("\t\t[교재 수정]"); break;
		case AdministratorView.deletetextBook 			: System.out.println("\t\t[교재 삭제]"); break;
		case AdministratorView.selectPublisher 			: System.out.println("\t\t[출판사 선택]"); break;
		
	//--------------------------------------------------------------------------------------------------------------	
		
		//교사 계정 관리	
		
		case AdministratorView.addLecturer 				: System.out.println("\t\t\t\t[교사 추가]"); break;
		case AdministratorView.lecturerInfo 			: System.out.println("\t\t\t\t[교사 정보]"); break;
		case AdministratorView.detailLecturer 			: System.out.println("\t\t\t\t[교사 상세정보]"); break;
		case AdministratorView.updateLecturer 			: System.out.println("\t\t\t\t[교사 정보 수정]"); break;
		case AdministratorView.updateLecturerName 		: System.out.println("\t\t\t\t[교사 이름 수정]"); break;
		case AdministratorView.updateLecturerReg 		: System.out.println("\t\t\t\t[교사 주민번호 수정]"); break;
		case AdministratorView.updateLecturerTel 		: System.out.println("\t\t\t\t[교사 전화번호 수정"); break;
		case AdministratorView.updateLecturerSubject 	: System.out.println("\t\t\t\t[교사 가능과목 수정]"); break;
		case AdministratorView.lecturerCourseInfo 		: System.out.println("\t\t\t\t[교사 과정 확인]"); break;
		
	//--------------------------------------------------------------------------------------------------------------
		
		//출결, 추천서 관리
		case AdministratorView.ATTENDANCEBYCOURSE		: System.out.println("[과정별 출결 관리]"); break;
		case AdministratorView.ATTENDANCE				: System.out.println("[출결 관리]"); break;
		case AdministratorView.RECOMMENDATION			: System.out.println("[추천서 관리]"); break;
			
		}//switch End
				
	}//Method : title

	public void enterpause() {
		System.out.println("\t==========================================================================\n");
		System.out.println("계속하려면 엔터를 입력하세요.");
		Scanner scan = new Scanner(System.in);
		scan.nextLine();
		
	}
	
	public void scanpause() {
		System.out.println("\t==========================================================================\n");
		System.out.println("\t\t\t\t[ ] 안의 번호를 입력하세요");
		System.out.print("\t\t\t\t입력 : ");
		
		String select = scan.nextLine();

		
	}
	
	
	
}//Class : AdministratorView



