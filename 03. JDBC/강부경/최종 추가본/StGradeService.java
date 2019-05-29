package student.service;

import java.util.ArrayList;
import java.util.Scanner;

import dto.StudentInfoDTO;
import dto.VwGradeListDTO;
import dto.VwQuizListDTO;
import dto.VwStudentInfoDTO;
import login.controller.LoginController;
import student.dao.StGradeDAO;
import student.view.StudentGradeView;
import util.Cls;

public class StGradeService implements IStGradeService {

	private static StudentGradeView sudentGradeView;
	public static StGradeService stgser;
	private Scanner scan;

	public StGradeService() {
		sudentGradeView = new StudentGradeView();
		scan = new Scanner(System.in);
	}

//===============================================================================================================================	
	
	@Override
	public void gradeList(String studentSeq) {

		Cls.clearScreen();

		sudentGradeView.title(StudentGradeView.GRADE);

		StGradeDAO dao = new StGradeDAO();

		ArrayList<VwGradeListDTO> gradelist = dao.gradelist(studentSeq);

		for (VwGradeListDTO dto :  gradelist) {

			System.out.println("\n\t==========================================================================\n");
			System.out.printf("\t과목번호  : %s	\n", dto.getvSubjectSeq());
			System.out.printf("\t과목명    : %s\n", dto.getvSubjectName());
			System.out.printf("\t과목기간  : %s  ~  %s\n", dto.getvSubjectStartDate().substring(0, 10),
					dto.getvSubjectEndDate().substring(0, 10));
			System.out.printf("\t교재명    : %s\n", dto.getvTextBook());
			System.out.printf("\t교사명    : %s\n", dto.getvLecturer());
			System.out.printf("\t배점 정보 : 필기배점 %s  실기배점 %s  출결배점 %s\n", dto.getvWrittenpercent(),
					dto.getvPracticalPercent(), dto.getvAttendancepercent());
			System.out.printf("\t배점      : 필기배점 %s  실기점수 %s  출결점수 %s\n", dto.getvWrittenTotal(),
					dto.getvPracticalTotal(), dto.getvAttendanceTotal());

			System.out.printf("\t시험날짜  : %s  ~  %s\n", dto.getvQuizDate().substring(0, 10),
					dto.getvQuizDate().substring(0, 10));
		
		}

	}//method : gradeList

//===============================================================================================================================
	
	@Override
	public void quizList() {
	
		System.out.print("\n\n\t원하는 과목번호를 입력해주세요.\n\t입력 : ");
		String select = scan.nextLine();
		
		StGradeDAO dao = new StGradeDAO();
		ArrayList<VwQuizListDTO> quizList = dao.quizList(select);
		
		try {	
			System.out.printf("\n\t'%s'과목의 시험문제로 이동합니다\n\n\t잠시만 기다려주세요", quizList.get(0).getVsubjectSeq());
			Thread.sleep(700);
			Cls.clearScreen();
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		sudentGradeView.title(StudentGradeView.QUIZ);
		
		System.out.printf("\t과목명     : %s\n", quizList.get(1).getvSubjectName());
	
		for(VwQuizListDTO dto : quizList) {


		System.out.println("\t========================================================"
				+ "=================================================================================================");

			System.out.printf("\t문제번호   : %s\n", dto.getvQuizNum());
			System.out.printf("\t문제       : %s\n", dto.getvQuizContents());
			System.out.printf("\t문제 정답  : %s\n", dto.getvQuizAnswer());
			System.out.println();
			
		}
		System.out.println("\t======================================================"
				+ "===================================================================================================\n\n");

		//studentview.pause();

	}//method : quizList
	
//===============================================================================================================================	

	@Override
	public void personalInfo(String studentSeq) {
		
		StGradeDAO dao = new StGradeDAO();
		ArrayList<VwStudentInfoDTO> list = dao.personalInfo(studentSeq);
	
		for(VwStudentInfoDTO dto : list) {

	

			System.out.print("\t[교육생 정보]");
			System.out.println("\n\t==========================================================================\n");
			System.out.printf("\t이름                : %s\n", dto.getvStudentName());
			System.out.printf("\t현재 수강 중인 과정 : %s\n", dto.getvCourseName());
			System.out.printf("\t수강 과정 기간      : %s ~ %s\n", dto.getvCourseStartDate().substring(0, 10),
					dto.getvCourseEndDate().substring(0, 10));
			System.out.printf("\t강의실              : %s\n", dto.getvClassRoom());
			
		}

		dao.close();

	}//method : personalInfo


}//class : StGradeService
