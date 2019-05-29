package admin;

public class AdministratorView {

	//과정 관리
	public final static int COURSE = 300;
	public final static int ADDCOURSE = 301;
	public final static int ADDCOURSENAME = 302;
	public final static int ADDCOURSEDATE = 303;
	public final static int ADDCOURSECLASSROOM = 304;
	public final static int ADDCOURSELECTURER = 305;
	public final static int COURSEINFO = 306;
	public final static int COURSESTUDENT = 307;	
	
	//과목 관리
	public final static int SUBJECTINFO = 308;
	public final static int ADDSUBJECT = 309;
	public final static int ADDSUBJECTNAME = 310;
	public final static int ADDSUBJECTDATE = 311;
	public final static int ADDSUBJECTTEXTBOOK = 312;
	public final static int EDITSUBJECT = 313;
	public final static int EDITSUBJECTNAME = 314;
	public final static int EDITSUBJECTDATE = 315;
	public final static int EDITSUBJECTTEXTBOOK = 316;
	public final static int DELETESUBJECT = 317;
	
	//교육생 관리
	public final static int STUDENT = 400;
	public final static int ADDSTUDENT = 401;
	public final static int STUDENTINFOMANAGEMENT = 402;
	public final static int SEARCHBYNAME = 403;
	public final static int SEARCHBYCOURSE = 404;
	public final static int EDITSTUDENT = 405;
	public final static int DELETESTUDENT = 406;
	
	//성적
	public final static int GRADE = 507;
	public final static int GRADEBYCOURSE = 508;
	public final static int GRADEBYNAME = 509;
	
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
	
	
//------------------------------------------------------------------------------------------------------------------	
	
	public void begin() {
		
		System.out.println("\t\t\t\t[쌍용교육센터 - 관리자]");
		
	}//Method : begin
	
//------------------------------------------------------------------------------------------------------------------
	
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

	
//------------------------------------------------------------------------------------------------------------------
	
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
		
		System.out.println("\t\t\t\t[ ] 안의 번호를 입력하십시오");
		System.out.print("\t\t\t\t입력: ");
		
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
	
	
	
	
//------------------------------------------------------------------------------------------------------------------

	public void title(int n) {
		
		switch(n)
		{

		//개설 과정 관리
		case AdministratorView.COURSE				: System.out.println("\t\t[개설 과정 관리]"); break;		
		case AdministratorView.ADDCOURSE 			: System.out.println("\t\t[개설 과정 신규 등록]"); break;
		case AdministratorView.ADDCOURSENAME 		: System.out.println("\t\t[과정명 선택]"); break;
		case AdministratorView.ADDCOURSEDATE 		: System.out.println("\t\t[과정 기간 입력]"); break;
		case AdministratorView.ADDCOURSECLASSROOM 	: System.out.println("\t\t[강의실 정보 입력]"); break;
		case AdministratorView.ADDCOURSELECTURER 	: System.out.println("\t\t[교사 정보 입력]"); break;
		case AdministratorView.COURSEINFO 			: System.out.println("\t\t[개설 과정 정보]"); break;
		case AdministratorView.COURSESTUDENT 		: System.out.println("\t\t[교육생 목록]"); break;
		
	//--------------------------------------------------------------------------------------------------------------
		
		//개설 과목 관리
		case AdministratorView.SUBJECTINFO 			: System.out.println("\t\t[과목 정보]"); break;	
		case AdministratorView.ADDSUBJECT 			: System.out.println("\t\t[과목 추가]"); break;
		case AdministratorView.ADDSUBJECTNAME 		: System.out.println("\t\t[과목명 선택]"); break;
		case AdministratorView.ADDSUBJECTDATE 		: System.out.println("\t\t[과목 기간 입력]"); break;
		case AdministratorView.ADDSUBJECTTEXTBOOK 	: System.out.println("\t\t[교재 선택]"); break;		
		case AdministratorView.EDITSUBJECT 			: System.out.println("\t\t[과목 수정]"); break;
		case AdministratorView.EDITSUBJECTNAME 		: System.out.println("\t\t[과목명 선택]"); break;
		case AdministratorView.EDITSUBJECTDATE 		: System.out.println("\t\t[과목 기간 수정]"); break;
		case AdministratorView.EDITSUBJECTTEXTBOOK 	: System.out.println("\t\t[교재 수정]"); break;		
		case AdministratorView.DELETESUBJECT 		: System.out.println("\t\t[과목 삭제]"); break;
				
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
		case AdministratorView.GRADE 			: System.out.println("\t\t[성적 관리]"); break;
		case AdministratorView.GRADEBYCOURSE 	: System.out.println("\t\t[과정별 시험 및 성적 관리]"); break;
		case AdministratorView.GRADEBYNAME 		: System.out.println("\t\t[교육생별 시험 및 성적 관리]"); break;

		
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
		
		case AdministratorView.addLecturer 					: System.out.println("\t\t[교사 추가]"); break;
		case AdministratorView.lecturerInfo 				: System.out.println("\t\t[교사 정보]"); break;
		case AdministratorView.detailLecturer 				: System.out.println("\t\t[교사 상세정보]"); break;
		case AdministratorView.updateLecturer 				: System.out.println("\t\t[교사 정보 수정]"); break;
		case AdministratorView.updateLecturerName 			: System.out.println("\t\t[교사 이름 수정]"); break;
		case AdministratorView.updateLecturerReg 			: System.out.println("\t\t[교사 주민번호 수정]"); break;
		case AdministratorView.updateLecturerTel 			: System.out.println("\t\t[교사 전화번호 수정"); break;
		case AdministratorView.updateLecturerSubject 		: System.out.println("\t\t[교사 가능과목 수정]"); break;
		case AdministratorView.lecturerCourseInfo 			: System.out.println("\t\t[교사 과정 확인]"); break;
		
		
		
		
		
		
		
		
		
		
		}//switch End
		
//		if (n == AdministratorView.ADDSTUDENT) { System.out.println("[교육생 등록]");
//		} else if (n == AdministratorView.STUDENTINFOMANAGEMENT) { System.out.println("[교육생 정보 관리]");
//		} else if (n == AdministratorView.SEARCHBYNAME) { System.out.println("[이름으로 교육생 검색]");
//		} else if (n == AdministratorView.SEARCHBYCOURSE) { System.out.println("[과정명으로 교육생 검색]");
//		} else if (n == AdministratorView.EDITSTUDENT) { System.out.println("[학생 정보 수정]");
//		} else if (n == AdministratorView.STUDENT) { System.out.println("[교육생 관리]");
//		} else if (n == AdministratorView.GRADE) { System.out.println("[성적 관리]");
//		} else if (n == AdministratorView.GRADEBYCOURSE) { System.out.println("[강좌별 시험 및 성적 관리]");
//		} else if (n == AdministratorView.GRADEBYNAME) { System.out.println("[교육생별 시험 및 성적 관리]");
//		}
		
		

		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}//Method : title

	public void pause() {
		// TODO Auto-generated method stub
		
	}
	
}//Class : AdministratorView



