package student.service;

import java.util.ArrayList;
import java.util.Scanner;

import dto.VwGradeListDTO;
import dto.VwQuizListDTO;
import dto.VwStudentInfoDTO;
import dto.VwstugrainfoDTO;
import student.StudentView;

public class StGradeService implements IStGradeService {

	
	
	private static StudentView studentview;
	//public static StGradeService stgser;
	private Scanner scan;
	
	
	public StGradeService() {
		studentview = new StudentView();
		scan = new Scanner(System.in);
	}
	
	
	
//	
//	public void personalInfo() {
//		
//		
//		StudentView stview = new StudentView() ;
//		
//		stview.begin();
//		
//		System.out.print("검색어 입력 : "); 
//		String word = scan.nextLine();
//		
//		StGradeDAO stgdao = new StGradeDAO();
//		
//		ArrayList<VwStudentInfoDTO> list = stgdao.list(word);
//		
//		for(VwStudentInfoDTO vwstInfoDto : list) {
//			System.out.print("[교육생 정보]");
//			System.out.println("\n\t==========================================================================\n");
//			System.out.printf("이름             : %s",vwstInfoDto.getvStudentName());
//			System.out.printf("현재 수강 중인 과정 : %s",vwstInfoDto.getvCourseName());
//			System.out.printf("수강 과정 기간     : %s ~ %s",vwstInfoDto.getvCourseStartDate(),vwstInfoDto.getvCourseEndDate());
//			System.out.printf("강의실            : %s",vwstInfoDto.getvClassRoom());
//			
//		}
//		
//		stgdao.close();
//		
//		studentview.pause();
//		
//		
//	}

	
	@Override
	public void gradeList() {
		
		studentview.title(StudentView.GRADE);
		System.out.println("에러");
		
		StGradeDAO dao = new StGradeDAO();
		
		ArrayList<VwGradeListDTO> gradeList = dao.gradelist();
		
		for(VwGradeListDTO dto : gradeList) {
		
			System.out.printf("과목번호 : %s", dto.getvSubjectSeq());
			System.out.printf("과목명 : %s", dto.getvSubjectName());
			System.out.printf("과목기간 : %s ~ %s", dto.getvSubjectStartDate(), dto.getvSubjectEndDate());
			System.out.printf("교재명 : %s", dto.getvTextBook());
			System.out.printf("교사명 : %s", dto.getvLecturer());
			System.out.printf("배점 정보 : 필기배점 %s  실기배점 %s  출결배점 %s"
							, dto.getvWrittenpercent(), dto.getvPracticalPercent(), dto.getvAttendancepercent());
			System.out.printf("배점 : 필기점 %s  실기점수 %s  출결점수 %s"
					, dto.getvWrittenTotal(), dto.getvPracticalTotal(), dto.getvAttendanceTotal());
			// 성적정보 과목번호 시험날짜 첫날 . 끝날
			System.out.printf("시험날짜 : %s   %s", dto.getvQuizDate(),dto.getvQuizDate());
			
		}
		dao.close();
		studentview.pause();
		
		
	}

	@Override
	public void quizList() {
		//tblvwQuizList
		
		studentview.title(StudentView.QUIZ);
		System.out.println("\n\t==========================================================================\n");
		
		StGradeDAO stgdao = new StGradeDAO();
		
		//VwQuizListDTO
		ArrayList<VwQuizListDTO> quizList = stgdao.quizList();
		
		for(VwQuizListDTO dto : quizList) {

			System.out.printf("과목명     %s", dto.getvSubjectName());
		}
		for(VwQuizListDTO dto : quizList) {
			
			System.out.printf("문제번호 %s", dto.getvQuizNum());
			System.out.printf("문제 %s", dto.getvQuizContents());
			System.out.printf("문제 정답 %s", dto.getvQuizAnswer());
	}
		stgdao.close();
		studentview.pause();
		

	}



	@Override
	public void personalInfo() {
		// TODO Auto-generated method stub
		
	}
}
