package lecturer;

import java.util.Scanner;

import lecturer.service.ILeAttendanceService;
import lecturer.service.ILeGradeService;
import lecturer.service.ILePercentService;
import lecturer.service.ILeRecommendationService;
import lecturer.service.ILeScheduleService;
import lecturer.service.LeAttendanceService;
import lecturer.service.LeGradeService;
import lecturer.service.LePercentService;
import lecturer.service.LeRecommendationService;
import lecturer.service.LeScheduleService;
import login.Cls;

public class LecturerController {

	private static LecturerView lecturerView;
	
	private static ILeAttendanceService leAttendanceService;
	private static ILeGradeService leGradeService;
	private static ILePercentService lePercentService;
	private static ILeRecommendationService leRecommendationService;
	private static ILeScheduleService leScheduleService;
	
	private static Scanner scan;
	
	static {
		lecturerView = new LecturerView();	
		
		leAttendanceService = new LeAttendanceService();
		leGradeService = new LeGradeService();
		lePercentService = new LePercentService();
		leRecommendationService = new LeRecommendationService();
		leScheduleService = new LeScheduleService();
		
		scan = new Scanner(System.in);
	}
	
//===================================================================================	
	
	public static void main(String[] args) throws Exception {

		boolean lecturerLoop = true;
		
		while (lecturerLoop) {
			
			Cls.clearScreen();
			System.out.println("\t\t\t\t\tLOADING.....");
			Thread.sleep(700);
			Cls.clearScreen();
			
			lecturerView.begin();
			lecturerView.menu();
			String select = scan.nextLine();
			
	//-------------------------------------------------------	
			
			if (select.equals("1")) {
				
				//강의 스케줄 관리 메뉴
				boolean leScheduleLoop = true;
				
				while (leScheduleLoop) {
					
					String temp = "";
					
					//강의 스케쥴 관리 view
					
					System.out.println("숫자를 입력하세요.");
					
					switch(scan.nextLine()) {
					
					case "1" : 
						
						leScheduleService.will();
						
						break; //과정 선택 후 과목,학생 출력
					
					case "2" : 
						
						leScheduleService.prog();  //return 필요 
						System.out.println(" 번호를 입력하세요 ");
						temp = scan.nextLine();
						leScheduleService.substu(temp);
						
						break; //과정 선택 후 과목,학생 출력
					
					case "3" : 
						
						leScheduleService.end();  //return 필요 
						System.out.println(" 번호를 입력하세요 ");
						temp = scan.nextLine();	
						leScheduleService.substu(temp);
						
						break; //과정 선택 후 과목,학생 출력
									
					case "0" : leScheduleLoop = false; break;
					
					default : System.out.println("잘못된 입력입니다."); break;
					
					}
					
				}//while : leScheduleLoop			
				
	//-------------------------------------------------------	
				
			} else if (select.equals("2")) {
				
				//배점 관리
				boolean lePercentLoop = true;
				
				while (lePercentLoop) {
					
					//과정 title
					lePercentService.course();// 과정 출력
										
					System.out.println("번호를 입력하세요.");
					String selcou = scan.nextLine();
					
					if(selcou.equals("0")){
						
						lePercentLoop = false;
						
					} else {	
						
						lepercentSub(selcou);
						
						
					}
					
				}//while : lePercentLoop				
				
	//-------------------------------------------------------
				
			} else if (select.equals("3")) {
				
				//성적 관리
				boolean leGradeLoop = true;
				
				while (leGradeLoop) {
					
					System.out.println("번호를 입력하세요");
					
					switch(scan.nextLine()) 
					
					{
					case "1" : leGraInsert(); break;
					
					case "2" : leGraModify(); break;
					
					case "0" : leGradeLoop = false; break;
					
					default : System.out.println("번호를 다시 입력해주세요.");
					}
					
				}//while ; leGradeLoop
				
	//-------------------------------------------------------			
				
			} else if (select.equals("4")) {
				
				//출결 관리
				boolean leAttendanceLoop = true;
				
				while (leAttendanceLoop) {
					
					System.out.println("번호를 입력하세요");
					
					if(scan.nextLine().equals("0")) {
						
						leAttendanceLoop=false;
						
					} else if(scan.nextLine().equals("1")) {
						
						leAttendanceview();
						
					} else {
						
						System.out.println("잘못된 입력입니다.");
						
					}
					
				}//while : leAttendanceLoop
				
	//-------------------------------------------------------	
								
			} else if (select.equals("5")) {
				
				//추천서 관리
				boolean leRecommendationLoop = true;
				
				while (leRecommendationLoop) {
					
					
					
				}//while : leRecommendationLoop
				
	//-------------------------------------------------------
				
			} else {
				
				//로그아웃
				lecturerLoop = false;
				
				Cls.clearScreen();
				System.out.println("\t\t\t\t\tLOADING.....");
				Thread.sleep(700);
				Cls.clearScreen();
				
			}
			
		}//While End					
		
	}//Method : main
	
//-----------------------------------------------------------------------------------------------
	
	private static void leAttendanceview() {
		
		leAttendanceService.course();
		boolean loop = true;
		System.out.println("번호를 입력하세요.");
		
		while(loop) {
			if(scan.nextLine().equals("0")){
				
				loop = false;
				
			} else {	
				
				leAttendanceviewselect(scan.nextLine());
				
			}
			
		}
		
	}

//-----------------------------------------------------------------------------------------------
	
	private static void leAttendanceviewselect(String nextLine) {
		
		leAttendanceService.course(nextLine);
		boolean loop = true;
		System.out.println("번호를 입력하세요.");
		
		while(loop) {
			if(scan.nextLine().equals("1")){
				
				leAttendanceService.allview();
				
			}else if(scan.nextLine().equals("2")) {	
				
				LeAttendanceperiod();
				
			}else if(scan.nextLine().equals("0")) {	
				
				loop = false;
				
			} else {
				System.out.println("잘못된 입력입니다.");
			}
		}
		
	}

//-----------------------------------------------------------------------------------------------
	
	private static void LeAttendanceperiod() {
		
		boolean loop = true;
		leAttendanceService.month();
		System.out.println("번호를 입력하세요.");
		
		while(loop) {
			if(scan.nextLine().equals("0")){
				
				loop = false;
				
			} else {		
				
				leAttendanceviewselmon(scan.nextLine());
				
			}
			
		}
				
	}

//-----------------------------------------------------------------------------------------------
	
	private static void leAttendanceviewselmon(String nextLine) {
		
		boolean loop = true;
		leAttendanceService.month(nextLine);
		System.out.println("번호를 입력하세요.");
		
		while(loop) {
			if(scan.nextLine().equals("0")){
				
				loop = false;
				
			} else if(scan.nextLine().equals("1")) {	
				
				leAttendanceviewselday();
				
			}
		}
		
	}

//-----------------------------------------------------------------------------------------------
	
	private static void leAttendanceviewselday() {
		
		leAttendanceService.viewday();
		
	}

//-----------------------------------------------------------------------------------------------
	
	private static void leGraModify() {
		
		leGradeService.allsubject(); //끝난 모든 과목
		boolean loop = true;
		System.out.println("번호를 입력하세요.");
		
		while(loop) {
			if(scan.nextLine().equals("0")){
				
				loop = false;
				
			} else {	
				
				leGraallStudent(scan.nextLine());
				
			}
			
		}									
		
	}

//-----------------------------------------------------------------------------------------------
	
	private static void leGraallStudent(String nextLine) {
		
		leGradeService.student(nextLine); //특정 과목 student들
		boolean loop = true;
		System.out.println("번호를 입력하세요.");
		
		while(loop) {
			if(scan.nextLine().equals("0")){
				
				loop = false;
				
			} else {	
				
			int temp =	leGradeService.alleachstudent(scan.nextLine()); //대상 학생
				leGraallScore(temp);
				
			}
			
		}
		
	}

//-----------------------------------------------------------------------------------------------
	
	private static void leGraallScore(int temp) {
		
		boolean loop = true;
		System.out.println("번호를 입력하세요.");
		
		while(loop) {
			
			switch(scan.nextLine()) {
			
			case "1" : leGradeService.written(); break;
			
			case "2" : leGradeService.practical(); break;
			
			case "0" :  break;
			
			default : System.out.println("잘못된 입력입니다."); break;
			
			}
			
		}
		
	}

//-----------------------------------------------------------------------------------------------
	
	private static void leGraInsert() {
		
			leGradeService.subject();
			boolean loop = true;
			System.out.println("번호를 입력하세요.");
			
			while(loop) {
				if(scan.nextLine().equals("0")){
					
					loop = false;
					
				} else {	
					
					leGraStudent(scan.nextLine());
					
				}
				
			}
							
		}

//-----------------------------------------------------------------------------------------------
	
	private static void leGraStudent(String nextLine) {
		
		leGradeService.student(nextLine); //특정 과목 student들
		boolean loop = true;
		System.out.println("번호를 입력하세요.");
		
		while(loop) {
			if(scan.nextLine().equals("0")){
				
				loop = false;
				
			} else {	
				
			int temp =	leGradeService.eachstudent(scan.nextLine()); //대상 학생
				leGraScore(temp);
				
			}
			
		}
		
	}
	
//-----------------------------------------------------------------------------------------------
	
	private static void leGraScore(int temp) {
		
		boolean loop = true;
		System.out.println("번호를 입력하세요.");
		
		while(loop) {
			
			switch(scan.nextLine()) {
			
			case "1" : leGradeService.written(); break;
			
			case "2" : leGradeService.practical(); break;
			
			case "0" :  break;
			
			default : System.out.println("잘못된 입력입니다."); break;
			
			}
		}
		
	}

//-----------------------------------------------------------------------------------------------
	
	private static void lepercentSub(String selcou) {
			
		boolean loop = true; 
		
		while(loop) {
			
			leScheduleService.subject(selcou);
			System.out.println("번호를 입력하세요");
			String select = scan.nextLine();
			
			if(select.equals("0")){
				loop = false;
			}else {						
				leperSub(select);  //배점 입력
				
			}
			
		}
			
	}

//-----------------------------------------------------------------------------------------------
	
	private static void leperSub(String select) {
		
		boolean loop = true;
		
		while(loop) {
			
			System.out.println("번호를 입력하세요.");
			switch(scan.nextLine()) {
			
			case "1": leperpercentmanage(); break; 
			
			case "2": leperdatemanage(); break;
			
			case "3": leperquizmanage(); break;
			
			case "0": loop=false; break;
			
			default : System.out.println("잘못된 입력입니다."); break;
			
			}
					
		}
			
	}
	
//-----------------------------------------------------------------------------------------------
	
	private static void leperquizmanage() {
		
		boolean loop = true;
		
		while(loop) {
			System.out.println("번호를 입력하세요.");
			switch(scan.nextLine()) {
			
			case "1": lePercentService.leperquizadd(); break; 
			
			case "2": lePercentService.leperquizdel(); break;
			
			case "0": loop=false; break;
			
			default : System.out.println("잘못된 입력입니다."); break;
			
			}
	
		}
		
	}

//-----------------------------------------------------------------------------------------------

	private static void leperdatemanage() {

	boolean loop = true;
		
		while(loop) {
			
			System.out.println("번호를 입력하세요.");
			switch(scan.nextLine()) {
			
			case "1": lePercentService.leperdateadd(); break; 
			
			case "2": lePercentService.leperdatedel(); break;
			
			case "0": loop=false; break;
			
			default : System.out.println("잘못된 입력입니다."); break;
			
			}
	
		}
		
	}

//-----------------------------------------------------------------------------------------------
	
	private static void leperpercentmanage() {

		boolean loop = true;
		
		while(loop) {
			System.out.println("번호를 입력하세요.");
			switch(scan.nextLine()) {
			
			case "1": lePercentService.leperadd(); break; 
			
			case "2": lePercentService.lepermodify(); break;
			
			case "3": lePercentService.leperdel(); break;
			
			case "0": loop=false; break;
			
			default : System.out.println("잘못된 입력입니다."); break;
			}

		}
		
	}
	
}//Class : lecturerController


