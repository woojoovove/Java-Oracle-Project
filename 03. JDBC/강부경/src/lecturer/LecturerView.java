package lecturer;

public class LecturerView {
	
	//강의 스케줄 조회
	public final static int SCHEDULESERVICE = 510;
	public final static int SCHEDULESERVICEYET = 511;
	public final static int SCHEDULESERVICECURRENT = 512;
	public final static int SCHEDULESERVICEEND = 513;	
				
	//배점관리
	public final static int PERCENTCOURSELIST = 520;
	public final static int PERCENTCOURSE = 521;
	public final static int CHOICESUBJECT = 522;
	public final static int PERCENTSUBJECT = 523;
	public final static int PERCENTADD = 524;
	public final static int PERCENTEDIT = 525;
	public final static int PERCENTDELETE = 526;
	public final static int QUIZDATE = 527;
	public final static int QUIZDATEADD = 528;
	public final static int QUIZDATEDELETE = 529;
	public final static int QUIZ = 530;
	public final static int QUIZADD = 531;	
	public final static int QUIZDELETE = 532;		
		
	//성적관리
	public final static int GRADE = 540;	
	public final static int ENDCOURSE = 541;	
	public final static int STUDENTLIST = 542;	
	public final static int GRADEADD = 543;	
	public final static int WRITTENGRADEADD = 544;	
	public final static int PRACTICALGRADEADD = 545;
	public final static int GRADESUBJECTCHOICE = 546;
	public final static int GRADESTUDENTCHOICE  = 547;	
	public final static int GRADEEDIT = 548;
	public final static int WRITTENGRADEEDIT = 549;	
	public final static int PRACTICALGRADEEDIT = 550;

	//출결관리
	public final static int ATTENDANCE= 570;	
	public final static int COURSEATTENDANCE= 571;
	public final static int STUDENTATTENDANCE= 572;	
	public final static int MONTHATTENDANCE= 573;	
	public final static int DATETENDANCE= 574;
	
	//추천서관리
	public final static int RECOMMENDATION= 580;	
	public final static int RECOMMENDATIONADD = 581;
	
//-----------------------------------------------------------------
	
	public void begin() {
		
		System.out.println("\t\t\t\t[쌍용교육센터 - 교사]");
		
	}//Method : begin
	
//-----------------------------------------------------------------
	
	public void menu() {
	
		System.out.println("\n\t==========================================================================\n");

		System.out.println("\t\t\t\t[1] 강의 스케줄 관리\n");
		System.out.println("\t\t\t\t[2] 배점 관리\n");
		System.out.println("\t\t\t\t[3] 성적 관리\n");
		System.out.println("\t\t\t\t[4] 출결 관리\n");
		System.out.println("\t\t\t\t[5] 추천서 관리\n\n");
		
		System.out.println("\t\t\t\t[0] 로그아웃\n");
		
		System.out.println("\t--------------------------------------------------------------------------\n");
		
		System.out.println("\t\t\t\t[ ] 안의 번호를 입력하십시오");
		System.out.print("\t\t\t\t입력: ");
		
	}//Method : menu
	
	public void title(int n) {
	
		switch(n)
		{

		//강의 스케줄 조회
		case LecturerView.SCHEDULESERVICE			: System.out.println("\t\t[강의 스케줄 조회]"); break;		
		case LecturerView.SCHEDULESERVICEYET		: System.out.println("\t\t[강의 예정 스케줄]"); break;
		case LecturerView.SCHEDULESERVICECURRENT	: System.out.println("\t\t[강의 중 스케줄]"); break;
		case LecturerView.SCHEDULESERVICEEND		: System.out.println("\t\t[강의종료 스케줄]"); break;

	//--------------------------------------------------------------------------------------------------------------
		
		//배점 관리
		case LecturerView.PERCENTCOURSELIST		: System.out.println("\t\t[과정 목록]"); break;	
		case LecturerView.PERCENTCOURSE			: System.out.println("\t\t[과정 정보]"); break;
		case LecturerView.CHOICESUBJECT 		: System.out.println("\t\t[선택과목]"); break;
		case LecturerView.PERCENTSUBJECT 		: System.out.println("\t\t[배점관리]"); break;	
		case LecturerView.PERCENTADD			: System.out.println("\t\t[배점 입력]"); break;
		case LecturerView.PERCENTEDIT 			: System.out.println("\t\t[배점 수정]"); break;
		case LecturerView.PERCENTDELETE			: System.out.println("\t\t[배점 삭제]"); break;
		case LecturerView.QUIZDATE 				: System.out.println("\t\t[시험날짜관리]"); break;		
		case LecturerView.QUIZDATEADD			: System.out.println("\t\t[시험날짜입력]"); break;
		case LecturerView.QUIZDATEDELETE		: System.out.println("\t\t[시험날짜삭제]"); break;
		case LecturerView.QUIZ					: System.out.println("\t\t[시험문제관리]"); break;	
		case LecturerView.QUIZADD				: System.out.println("\t\t[시험문제입력]"); break;	
		case LecturerView.QUIZDELETE			: System.out.println("\t\t[시험문제삭제]"); break;	
	//--------------------------------------------------------------------------------------------------------------
		//성적 관리
		case LecturerView.GRADE		 				: System.out.println("\t\t[성적입출력]"); break;
		case LecturerView.ENDCOURSE 				: System.out.println("\t\t[종강 과목 조회]"); break;
		case LecturerView.STUDENTLIST 				: System.out.println("\t\t[교육생]"); break;
		case LecturerView.GRADEADD 					: System.out.println("\t\t[성적입력]"); break;
		case LecturerView.WRITTENGRADEADD 			: System.out.println("\t\t[필기점수입력]"); break;
		case LecturerView.PRACTICALGRADEADD 		: System.out.println("\t\t[실기점수입력]"); break;
		case LecturerView.GRADESUBJECTCHOICE		: System.out.println("\t\t[과목선택]"); break;
		case LecturerView.GRADESTUDENTCHOICE		: System.out.println("\t\t[교육생선택]"); break;
		case LecturerView.GRADEEDIT					: System.out.println("\t\t[성적수정]"); break;
		case LecturerView.WRITTENGRADEEDIT			: System.out.println("\t\t[필기점수수정]"); break;
		case LecturerView.PRACTICALGRADEEDIT		: System.out.println("\t\t[실기점수수정]"); break;
		
		
	//--------------------------------------------------------------------------------------------------------------
				
		//출결 관리
		case LecturerView.ATTENDANCE 				: System.out.println("\t\t[출결 관리]"); break;
		case LecturerView.COURSEATTENDANCE 			: System.out.println("\t\t[과정별 출결 조회]"); break;
		case LecturerView.STUDENTATTENDANCE 		: System.out.println("\t\t[과정별 출결 학생조회]"); break;
		case LecturerView.MONTHATTENDANCE			: System.out.println("\t\t[월별 출결 조회]"); break;
		case LecturerView.DATETENDANCE				: System.out.println("\t\t[일별 출결 조회]"); break;
	
		
	//--------------------------------------------------------------------------------------------------------------
		
		//추천서 관리
		case LecturerView.RECOMMENDATION 					: System.out.println("\t\t[추천서 관리]"); break;
		case LecturerView.RECOMMENDATIONADD 				: System.out.println("\t\t[추천서 사유 입력]"); break;
		
		}//switch End
		
		
		
	}
	
}//Class : LecturerView
