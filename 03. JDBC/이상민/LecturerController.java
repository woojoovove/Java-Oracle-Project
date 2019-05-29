package lecturer;

import java.util.Scanner;

import admin.AdministratorView;
import admin.service.AdCourseService;
import admin.service.IAdCourseService;
import lecturer.service.LeAttendanceService;
import lecturer.service.LeGradeService;
import lecturer.service.LePercentService;
import lecturer.service.LeScheduleService;
import login.Cls;
import login.LoginController;

public class LecturerController {

	private static LecturerView lecturerView;	
	private static Scanner scan;
	
	static {
		lecturerView = new LecturerView();		
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
				
				//loading
				
				//강의 스케줄 관리 메뉴
				boolean leScheduleLoop = true;
				
				while (leScheduleLoop) {
					String temp = "";
					//강의 스케쥴 관리 view
					System.out.println("숫자를 입력하세요.");
					
					switch(scan.nextLine()) {
					case "1" : 
						
						LeScheduleService.will();
						
						break; //과정 선택 후 과목,학생 출력
					
					case "2" : 
						LeScheduleService.prog();  //return 필요 
						System.out.println(" 번호를 입력하세요 ");
						temp = scan.nextLine();
						LeScheduleService.substu(temp);
						break; //과정 선택 후 과목,학생 출력
					
					case "3" : 
						LeScheduleService.end();  //return 필요 
						System.out.println(" 번호를 입력하세요 ");
						temp = scan.nextLine();	
						LeScheduleService.substu(temp);
						
						break; //과정 선택 후 과목,학생 출력
									
					case "0" : leScheduleLoop = false; break;
					default : System.out.println("잘못된 입력입니다."); break;
					}
				
					
				}				
				
	//-------------------------------------------------------	
				//b02 교사 배점 입출력 1,2선택해서 뒤로가기 or 진행 선택하게 해야함.
			} else if (select.equals("2")) {
				
				//배점 관리
				boolean lePercentLoop = true;
				
				while (lePercentLoop) {
					//과정 title
					LePercentService.course();// 과정 출력
					
					
					System.out.println("번호를 입력하세요.");
					String selcou = scan.nextLine();
//					
					if(selcou.equals("0")){
						lePercentLoop = false;
					}else {						
						lepercentSub(selcou);
						
					};
							
										
																				
					
				};					
				
	//-------------------------------------------------------
				
			} else if (select.equals("3")) {
				
				//성적 관리
				boolean leGradeLoop = true;
				
				while (leGradeLoop) {
					
					System.out.println("번호를 입력하세요");
					switch(scan.nextLine()) {
					case "1" : leGraInsert(); break;
					case "2" : leGraModify(); break;
					case "0" : leGradeLoop = false; break;
					default : System.out.println("번호를 다시 입력해주세요.");
					}
					
					
					
				}
				
	//-------------------------------------------------------			
				
			} else if (select.equals("4")) {
				
				//출결 관리
				boolean leAttendanceLoop = true;
				
				while (leAttendanceLoop) {
					
					System.out.println("번호를 입력하세요");
					if(scan.nextLine().equals("0")) {
						leAttendanceLoop=false;
					}else if(scan.nextLine().equals("1")) {
						leAttendanceview();
					}else {
						System.out.println("잘못된 입력입니다.");
					}
					
					
				}
				
	//-------------------------------------------------------	
								
			} else if (select.equals("5")) {
				
				//추천서 관리
				boolean leRecommendationLoop = true;
				
				while (leRecommendationLoop) {
					
				}
				
	//-------------------------------------------------------
				
			} else {
				
				//로그아웃
				lecturerLoop = false;
				
				Cls.clearScreen();
				System.out.println("\t\t\t\t\tLOADING.....");
				Thread.sleep(700);
				Cls.clearScreen();
				
				LoginController.main(args);
				
			}
		
		}//While End					
		
	}

private static void leAttendanceview() {
	
	LeAttendanceService.course();
	boolean loop = true;
	System.out.println("번호를 입력하세요.");
	while(loop) {
		if(scan.nextLine().equals("0")){
			loop = false;
		}else {						
			leAttendanceviewselect(scan.nextLine());
		}
	}
	
}

private static void leAttendanceviewselect(String nextLine) {
	
	LeAttendanceService.course(nextLine);
	boolean loop = true;
	System.out.println("번호를 입력하세요.");
	
	while(loop) {
		if(scan.nextLine().equals("1")){
			LeAttendanceService.allview();
		}else if(scan.nextLine().equals("2")) {						
			LeAttendanceperiod();
		}else if(scan.nextLine().equals("0")) {						
			loop = false;
		}else {
			System.out.println("잘못된 입력입니다.");
		}
	}
	
}

private static void LeAttendanceperiod() {
	
	boolean loop = true;
	LeAttendanceService.month();
	System.out.println("번호를 입력하세요.");
	
	while(loop) {
		if(scan.nextLine().equals("0")){
			loop = false;
		}else {						
			leAttendanceviewselmon(scan.nextLine());
		}
	}
	
	
}

private static void leAttendanceviewselmon(String nextLine) {
	
	boolean loop = true;
	LeAttendanceService.month(nextLine);
	System.out.println("번호를 입력하세요.");
	
	while(loop) {
		if(scan.nextLine().equals("0")){
			loop = false;
		}else if(scan.nextLine().equals("1")){						
			leAttendanceviewselday();
		}
	}
	
}

private static void leAttendanceviewselday() {
	LeAttendanceService.viewday();
	
}

private static void leGraModify() {
	
	LeGradeService.allsubject(); //끝난 모든 과목
	boolean loop = true;
	System.out.println("번호를 입력하세요.");
	
	while(loop) {
		if(scan.nextLine().equals("0")){
			loop = false;
		}else {						
			leGraallStudent(scan.nextLine());
		}
	}
					
			
	
}

private static void leGraallStudent(String nextLine) {
	
	LeGradeService.student(nextLine); //특정 과목 student들
	boolean loop = true;
	System.out.println("번호를 입력하세요.");
	while(loop) {
		if(scan.nextLine().equals("0")){
			loop = false;
		}else {						
		int temp =	LeGradeService.alleachstudent(scan.nextLine()); //대상 학생
			leGraallScore(temp);
		}
	}
	
}

private static void leGraallScore(int temp) {
	
	boolean loop = true;
	System.out.println("번호를 입력하세요.");
	
	while(loop) {
		
		switch(scan.nextLine()) {
		
		case "1" : LeGradeService.written(); break;
		case "2" : LeGradeService.practical(); break;
		case "0" :  break;
		default : System.out.println("잘못된 입력입니다."); break;
		}
	}
	
}

private static void leGraInsert() {
		LeGradeService.subject();
		boolean loop = true;
		System.out.println("번호를 입력하세요.");
		
		while(loop) {
			if(scan.nextLine().equals("0")){
				loop = false;
			}else {						
				leGraStudent(scan.nextLine());
			}
		}
						
	}

private static void leGraStudent(String nextLine) {
	
	LeGradeService.student(nextLine); //특정 과목 student들
	boolean loop = true;
	System.out.println("번호를 입력하세요.");
	while(loop) {
		if(scan.nextLine().equals("0")){
			loop = false;
		}else {						
		int temp =	LeGradeService.eachstudent(scan.nextLine()); //대상 학생
			leGraScore(temp);
		}
	}
	
}
//-----------------------------------------------------------------------------
private static void leGraScore(int temp) {
	
	boolean loop = true;
	System.out.println("번호를 입력하세요.");
	
	while(loop) {
		
		switch(scan.nextLine()) {
		
		case "1" : LeGradeService.written(); break;
		case "2" : LeGradeService.practical(); break;
		case "0" :  break;
		default : System.out.println("잘못된 입력입니다."); break;
		}
	}
	
}


//---------------------------------------------------------------------------------
private static void lepercentSub(String selcou) {
		
		boolean loop = true; 
		while(loop) {
			LeScheduleService.subject(selcou);
			System.out.println("번호를 입력하세요");
			String select = scan.nextLine();
			
			if(select.equals("0")){
				loop = false;
			}else {						
				leperSub(select);  //배점 입력
				
			}
		}
		 
	
}

private static void leperSub(String select) {
	
		boolean loop = true;
		while(loop) {
			System.out.println("번호를 입력하세요.");
			switch(scan.nextLine()) {
			
			case "1":
					leperpercentmanage(); break; 
			case "2":
					leperdatemanage(); break;
			case "3":
					leperquizmanage(); break;
			case "0":
					loop=false; break;
			default : System.out.println("잘못된 입력입니다."); break;
			};
			
			
			
		};
	
	
}
//-----------------------------------------------------------------------------------------------
private static void leperquizmanage() {
	
	boolean loop = true;
	
	while(loop) {
		System.out.println("번호를 입력하세요.");
		switch(scan.nextLine()) {
		
		case "1":
			LePercentService.leperquizadd(); break; 
		case "2":
			LePercentService.leperquizdel(); break;
		case "0":
				loop=false; break;
		default : System.out.println("잘못된 입력입니다."); break;
		}
		
		
		
	}
	
}


//---------------------------------------------------------------------------

private static void leperdatemanage() {

boolean loop = true;
	
	while(loop) {
		System.out.println("번호를 입력하세요.");
		switch(scan.nextLine()) {
		
		case "1":
			LePercentService.leperdateadd(); break; 
		case "2":
			LePercentService.leperdatedel(); break;
		case "0":
				loop=false; break;
		default : System.out.println("잘못된 입력입니다."); break;
		}
	
		
		
	}
	
}


//--------------------------------------------------------------------
private static void leperpercentmanage() {

	boolean loop = true;
	
	while(loop) {
		System.out.println("번호를 입력하세요.");
		switch(scan.nextLine()) {
		
		case "1":
			LePercentService.leperadd(); break; 
		case "2":
			LePercentService.lepermodify(); break;
		case "3":
			LePercentService.leperdel(); break;
		case "0":
				loop=false; break;
		default : System.out.println("잘못된 입력입니다."); break;
		}
		
		
		
	}
	
}



	
}//Method : main
	



