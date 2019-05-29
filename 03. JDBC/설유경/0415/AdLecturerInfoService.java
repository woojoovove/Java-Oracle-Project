package admin.service;

import java.util.ArrayList;
import java.util.Scanner;

import admin.AdLecturerInfoDAO;
import admin.AdministratorView;
import dto.AvlbDTO;
import dto.VwGradeListDTO;
import dto.VwLecturerDTO;
import student.StudentView;

public class AdLecturerInfoService implements IAdLecturerInfoService {

	private static AdministratorView administratorview;
	private Scanner scan;
	
	
	public AdLecturerInfoService() {
		administratorview = new AdministratorView();
		scan = new Scanner(System.in);
	}//AdLecturerInfoService()
	
	              
	
public void Lectureradd() {
		
		
		administratorview.title(AdministratorView.addLecturer);
	
		System.out.println(" ");
		System.out.print("\t\t\t\t교사 이름 :  ");
		String name =  scan.nextLine();
		name = name.replace("'", "''");
		
		System.out.println("\t--------------------------------------------------------------------------\n");
		
		System.out.print("\t\t\t\t주민번호 뒷자리 :  ");
		String ssn = scan.nextLine();
		ssn = ssn.replace("'", "''");
		
		System.out.println("\t--------------------------------------------------------------------------\n");
		
		System.out.print("\t\t\t\t전화번호 :  ");
		String tel = scan.nextLine();
		tel = tel.replace("'", "''");
		
		System.out.println("\t--------------------------------------------------------------------------\n");
		
		System.out.println("\t\t\t\t[강의 가능 과목]");
		
		System.out.println("\t==========================================================================\n");
		
			
		AdLecturerInfoDAO dao = new AdLecturerInfoDAO();
			
		VwLecturerDTO dto = new VwLecturerDTO(); 
		dto.setVlecturerName(name);
		dto.setVlecturerRegistrationNum(ssn);
		dto.setVlecturerPhoneNum(tel);
		
		int result = dao.AdLecturerInfoadd(dto);
		

		
		
		//		
		ArrayList<VwLecturerDTO> avlbnamelist = dao.avlbnamelist();
		
		for(VwLecturerDTO subjectdto : avlbnamelist) {
			
			System.out.printf("\t\t[%s] %s", dto.getVsubjectSeq(), dto.getVsubjectName());
			
		}//for
		
		for (VwLecturerDTO subjectdto : avlbnamelist) {
			scan.nextLine();
			dao.avlbnamelist();
		}
		
		
		
		
		
		if (result == 1) {
			System.out.println("교사정보 추가 완료");
		} else {
			System.out.println("교사정보 추가 실패");
		}
		
		dao.close();
		administratorview.enterpause();
		
	}//Lectureradd()
	

public void Lecturerlist() {
	
	
	administratorview.title(AdministratorView.lecturerInfo );
	
	
	System.out.println("\t==========================================================================\n");
	System.out.println("\t[교사번호]\t[교사이름]\t[주민번호 뒷자리]\t[전화번호]\t\t[강의가능과목]");
	System.out.println("\t==========================================================================\n");
	
	
	//DB작업 > DAO위임(SELECT)
	AdLecturerInfoDAO dao = new AdLecturerInfoDAO();
	ArrayList<VwLecturerDTO> lecturerinfolist = dao.lecturerinfolist();
	
//	System.out.println(lecturerinfolist == null);
	
	//rs.next() -> 컬럼값	//재탐색 불가능, 부가 기능 X
	//배열 탐색(컬렉션 탐색) //재탐색 가능, 부가 기능O
	for(VwLecturerDTO dto : lecturerinfolist) {
		System.out.printf("\t[%s] ", dto.getVlecturerSeq());
		
		System.out.printf("\t%s ", dto.getVlecturerName());
		
		System.out.printf("\t%s ", dto.getVlecturerRegistrationNum());
		
		System.out.printf("\t%s ", dto.getVlecturerPhoneNum());
		
		System.out.print("\t세부사항 참조\n");
		
	}
	System.out.print("\t--------------------------------------------------------------------------\n");	
	
	System.out.println("\t\t\t[ ] 안의 번호를 입력하면 해당 교사의 세부사항 페이지로 이동합니다.");
	System.out.println("\t\t\t[0] 돌아가기");
	
	
	dao.close();
	
	administratorview.scanpause();
	
}//Lecturerlist()



public static void detailLecturer() {
	administratorview.title(AdministratorView.detailLecturer);
	System.out.println("\t==========================================================================\n");
	
	AdLecturerInfoDAO dao = new AdLecturerInfoDAO();
	ArrayList<VwLecturerDTO> lecturerinfolist = dao.lecturerinfolist();
	
	System.out.println(lecturerinfolist == null);
	
	
	for(VwLecturerDTO dto : lecturerinfolist) {
		System.out.printf("\t[%s]\t%s\t%s\t\t%s\t 세부사항 참조\n"
							, dto.getVlecturerSeq()
							, dto.getVlecturerName()
							, dto.getVlecturerRegistrationNum()
							, dto.getVlecturerPhoneNum()
							
							);
		
		
		
		for(VwLecturerDTO dto2 : lecturerinfolist) {
		System.out.println("\t\t[강의 가능 과목] : ");
		System.out.printf("%s,  ", dto.getVsubjectName());
	}
		System.out.println("\t--------------------------------------------------------------------------\n");

	}
	
	
}



	
}//class
