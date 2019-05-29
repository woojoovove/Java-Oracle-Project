package admin;

import java.util.Scanner;

import admin.service.AdAttendanceService;
import admin.service.AdBasicInfoService;
import admin.service.AdCourseService;
import admin.service.AdGradeService;
import admin.service.AdLecturerInfoService;
import admin.service.AdRecommendationService;
import admin.service.AdStudentService;
import admin.service.IAdAttendanceService;
import admin.service.IAdBasicInfoService;
import admin.service.IAdCourseService;
import admin.service.IAdGradeService;
import admin.service.IAdLecturerInfoService;
import admin.service.IAdRecommendationService;
import admin.service.IAdStudentService;
import login.Cls;
import login.LoginController;

public class AdministratorController {

	private static AdministratorView administratorView;
	
	private static IAdCourseService adCourseService;
	private static IAdStudentService adStudentService;
	private static IAdAttendanceService adAttendanceService;
	private static IAdRecommendationService adRecommendationService;
	private static IAdGradeService adGradeService;
	private static IAdBasicInfoService adBasicInfoService;
	private static IAdLecturerInfoService adLecturerInfoService;
	
	private static Scanner scan;
	
	static {
		administratorView = new AdministratorView();
		
		adCourseService = new AdCourseService();
		adStudentService = new AdStudentService();
		adAttendanceService = new AdAttendanceService();
		adRecommendationService = new AdRecommendationService();
		adGradeService = new AdGradeService();
		adBasicInfoService = new AdBasicInfoService();
		adLecturerInfoService = new AdLecturerInfoService();
		
		scan = new Scanner(System.in);
	}
	
//=================================================================================================================================
	
	public static void main(String[] args) throws Exception {

		boolean administratorLoop = true;
		
		while (administratorLoop) {
			
			Cls.clearScreen();
			System.out.println("\t\t\t\t\tLOADING.....");
			Thread.sleep(700);
			Cls.clearScreen();
			
			administratorView.begin();
			administratorView.menu();
			String select = scan.nextLine();
			
	//------------------------------------------------------------------------------------------------------
			
			if (select.equals("1")) { //기초 정보 관리
							
				boolean adBasicInfoLoop = true;
				
				while (adBasicInfoLoop) {
					
					administratorView.basicInfomenu();
					select = scan.nextLine();

					if (select.equals("1")) { // 과정명 보기
						
						firstCourseName();

					} else if (select.equals("2")) { // 과목명 보기
						
						secondSubjectName();
						
					} else if (select.equals("3")) { // 강의실명 보기
						
						ThirdClassRoom();
						
					} else if (select.equals("4")) { // 교재명 보기
						
						FourthTextBook();
						
					} else if (select.equals("0")) { // 돌아가기

						System.out.println("이전 화면으로 돌아갑니다");
						adBasicInfoLoop = false;
						administratorView.menu();

					} else {
						
						System.out.println("다시 입력해 주세요");
						continue;
					}
					
				}//While : adBasicInfoLoop		
				
	//------------------------------------------------------------------------------------------------------
				
			} else if (select.equals("2")) { //교사 계정 관리
								
				boolean adLecturerInfoLoop = true;
				
				while (adLecturerInfoLoop) {
					
					administratorView.basicInfomenu();
					select = scan.nextLine();
				
					if(select.equals("1")) {  //교사 추가하기
						
						adBasicInfoService.addLecturer();   //교사 추가
						
					} else if(select.equals("2")) {//교사 정보 조회
						
						detailLecturerInfo();
						
					} else if(select.equals("0")) {
						
						System.out.println("이전 화면으로 돌아갑니다");
						adLecturerInfoLoop = false;
						continue;
						
					}
					
				}	
				
	//------------------------------------------------------------------------------------------------------
				
			} else if (select.equals("3")) { //개설 과정 관리
						
				Cls.clearScreen();
				System.out.println("\t\t\t\t\tLOADING.....");
				Thread.sleep(700);
				Cls.clearScreen();
				administratorView.courseManagement();
				
				boolean adCourseLoop = true;
				
				while (adCourseLoop) {
					
					select = scan.nextLine();
					
					//개설 과정 신규 등록
					if (select.equals("1")) adCourseAdd();
					
					//개설 과정 수정
					else if (select.equals("2")) adCourseEdit();
						
					//개설 과정 삭제
					else if (select.equals("3")) adCourseDelete();
						
					//개설 과정 조회
					else if (select.equals("4")) adCourseInfo(); 
						
					//이전 메뉴로 돌아가기
					else if (select.equals("0")) adCourseLoop = false; 
						
					//그 외
					else System.out.println("\t\t\t\t잘못된 입력입니다");						
					
				}//While : adCourseLoop	
								
	//------------------------------------------------------------------------------------------------------	
				
			} else if (select.equals("4")) { //교육생 관리
								
				boolean adStudentLoop = true;
				
				while (adStudentLoop) {
					
					//administratorView.menuAdStudent();
					
					String sel = scan.nextLine();
					if (sel.equals("1")) {
						
						//studentService.studentAdd();
						
					}
						
					else if (sel.equals("2")) {
						
						boolean bool = true;
						
						while(bool) {

							//administratorView.menuManageStudent();
							
							String p = scan.nextLine();
							if (p.equals("1")) {
								
								//studentService.searchByName();
								
							}
							
							else if (p.equals("2")) {
								
								//studentService.searchByCourse();
								
							}
						}
						
					} else adStudentLoop = false;
					
				}	
				
	//------------------------------------------------------------------------------------------------------
				
			} else if (select.equals("5")) { //성적 관리
							
				boolean adGradeLoop = true;
				
				while (adGradeLoop) {
					
					//administratorView.menuGrade();
					
					String pick = scan.nextLine();
					
					if (pick.equals("1")) {
						
						//gradeService.gradeByCourse();
						
					}
					
					else if (pick.equals("2")) {
						
						//gradeService.gradeByName();
						
					}
					
					else adGradeLoop = false;
					
				}	
				
	//------------------------------------------------------------------------------------------------------
				
			} else if (select.equals("6")) { //출결 관리
								
				boolean adAttendanceLoop = true;
				
				while (adAttendanceLoop) {
					
					administratorView.menuAttendance();
					
					select = scan.nextLine();
					
					if (select.equals("1")) {
						
						boolean p = true;
						
						while(p) {
							
							administratorView.menuCourse();
							
							select = scan.nextLine();
							
							if(select.equals("1")) {
								adAttendanceService.fullAttendance();
							} else if (select.equals("2")) {
								adAttendanceService.attendanceByMonth();
							} else {
								p = false;
							}
						}
					}
					
					else if (select.equals("0")) adAttendanceLoop = false;
					
				}	
				
	//------------------------------------------------------------------------------------------------------
				
			} else if (select.equals("7")) { //추천서 관리
								
				boolean adRecommendationLoop = true;
				
				while (adRecommendationLoop) {
					
					administratorView.title(AdministratorView.RECOMMENDATION);
					adRecommendationService.recommendation();
					
				}	
				
	//------------------------------------------------------------------------------------------------------	
				
			} else if (select.equals("0")) { //로그아웃
								
				administratorLoop = false;	
				
				Cls.clearScreen();
				System.out.println("\t\t\t\t\tLOADING.....");
				Thread.sleep(700);
				Cls.clearScreen();
				
			}
			
		}//While : administratorLoop
		
	}//Method : main

//=================================================================================================================================	

	private static void detailLecturerInfo() {

		boolean detailLecturerInfo = true;
		
		while (detailLecturerInfo) {
			adBasicInfoService.lecturerInfo();
			String select = scan.nextLine();

			if (select.equals("교사번호")) {
				detailLecturer(); // 교사 세부사항

			} else if (select.equals("0")) {

				System.out.println("돌아가기");
				administratorView.lecturerBasicInfomenu();
			}
		}

	}

//---------------------------------------------------------------------------------------------------------------------------------
	
	private static void detailLecturer() {

		boolean detailLecturer = true;

		while (detailLecturer) {
			adBasicInfoService.detailLecturer();
			administratorView.lecturerBasicInfoUpdate();
			String select = scan.nextLine();

			if (select.equals("*")) {
				updateLecturer();
			} else if (select.equals("#")) {
				// 담당 강의 확인 호출
			} else if (select.equals("0")) {
				administratorView.lecturerBasicInfomenu();

			}
			
		}
		
	}
	
//---------------------------------------------------------------------------------------------------------------------------------
	
	private static void updateLecturer() {
		boolean updateLecturer = true;

		while (updateLecturer) {
			
			adBasicInfoService.detailLecturer();  //교사 세부사항 
			administratorView.lecturerBasicInfoSelect();
			
			String select = scan.nextLine();
			
			if(select.equals("1")) {
				
				adBasicInfoService.updateLecturerName();
				
			}else if(select.equals("2")) {
				
				adBasicInfoService.updateLecturerReg();
				
			}else if(select.equals("3")) {
				
				adBasicInfoService.updateLecturerTel();
				
			}else if(select.equals("4")) {
				
				adBasicInfoService.updateLecturerSubject();
				
			}else if(select.equals("0")) {
				
				administratorView.lecturerBasicInfoSelect();
				
			}
		
		}
	}
	
//---------------------------------------------------------------------------------------------------------------------------------
	
	private static void FourthTextBook() { // 교재 선택
		
		boolean textBook = true;
		
		while (textBook) {
			
			adBasicInfoService.textBook();
			String select = scan.nextLine();

			if (select.equals("#")) {
				// 다음페이지 이동
			} else if (select.equals("*")) {
				textBookUpdate(); // 교재 추가 수정 삭제
			}
		}

	}

//---------------------------------------------------------------------------------------------------------------------------------
	
	private static void textBookUpdate() { // 교재 수정 추가 삭제
		boolean textBookUpdate = true;

		while (textBookUpdate) {
			
			adBasicInfoService.textBookMenu();
			String select = scan.nextLine();

			if (select.equals("1")) {
				
				selectPublisher(); // 교재 추가시 출판사 선택
				
			} else if (select.equals("2")) {
				
				adBasicInfoService.modifytextBook();
				
			} else if (select.equals("3")) {
				
				adBasicInfoService.deletetextBook();
				
			} else if (select.equals("0")) {
				
				System.out.println("돌아가기");
				administratorView.basicInfomenu();
				
			}
		}
	}

//---------------------------------------------------------------------------------------------------------------------------------
	
	private static void selectPublisher() {
		
		boolean selectPublisher = true;
	
		while (selectPublisher) {
			
			adBasicInfoService.selectPublisher(); // 출판사 읽기
			String select = scan.nextLine();

		}
		
	}

//---------------------------------------------------------------------------------------------------------------------------------
	
	private static void ThirdClassRoom() {
		
		boolean basicClassRoom = true;
		
		while (basicClassRoom) {
			
			adBasicInfoService.classRoom();
			String select = scan.nextLine();

			if (select.equals("*")) {
				
				adBasicInfoService.modifyClassRoomName();
				
			} else if (select.equals("#")) {
				
				adBasicInfoService.modifyclassRoomNum();
				
			} else if (select.equals("0")) {
				
				System.out.println("돌아가기");
				administratorView.basicInfomenu();
				
			}
		}
		
	}

//---------------------------------------------------------------------------------------------------------------------------------
	
	private static void secondSubjectName() { // 과목명선택 메소드
		
		boolean basicSubjectName = true;
		
		while (basicSubjectName) {
			
			adBasicInfoService.subjectName();
			String select = scan.nextLine();

			if (select.equals("#")) { // 다음페이지
				
				// 다음 페이지 이동
				
			} else if (select.equals("*")) {
				
				subjectInDeUp();
				
			} else if (select.equals("0")) {
				
				administratorView.basicInfomenu();
				
			}
			
		}

	}

//---------------------------------------------------------------------------------------------------------------------------------
	
	private static void subjectInDeUp() { // 과목명 추가 수정 삭제 메소드

		boolean subjectUpdate = true;

		while (subjectUpdate) {
			administratorView.courseNameMenu();

			String select = scan.nextLine();

			if (select.equals("1")) {
				adBasicInfoService.insertSubject();
			} else if (select.equals("2")) {
				adBasicInfoService.modifySubject();
			} else if (select.equals("3")) {
				adBasicInfoService.deleteSubject();
			} else if (select.equals("0")) {
				administratorView.basicInfomenu();
			}
		}

	}

//---------------------------------------------------------------------------------------------------------------------------------
	
	private static void firstCourseName() {

		boolean basicCourseName = true;

		while (basicCourseName) {
			
			administratorView.basicInfomenu();
			String select = scan.nextLine();

			if (select.equals("*")) { // 과정 추가 삭제 수정
				
				courseInDeUp(); // 과정 추가삭제수정 메소드
				
			} else if (select.equals("0")) { // 돌아가기
				
				adBasicInfoService.basicInfomenu();

			}
			
		}
		
	}

//---------------------------------------------------------------------------------------------------------------------------------
	
	private static void courseInDeUp() {   // 과정 추가삭제수정 메소드
		
		 boolean courseUpdate = true;

		 while (courseUpdate) {
			 
			 administratorView.courseNameMenu();
			 String select = scan.nextLine();
			 
			if(select.equals("1")) {
				
				adBasicInfoService.insertCourseName();
				
			}else if(select.equals("2")) {
				
				adBasicInfoService.modifyCourseName();
				
			}else if(select.equals("3")) {
				
				adBasicInfoService.deleteCourseName();
				
			}
			
		}
	
	}
	
//=================================================================================================================================
	
	//과정 추가 메소드
	private static void adCourseAdd() {
		
		adCourseService.courseAdd();
		
	}//method : adCourseAdd
	
//---------------------------------------------------------------------------------------------------------------------------------
	
	//과정 수정 메소드
	private static void adCourseEdit() { 
		
		boolean adCourseEditLoop = true;
		
		while (adCourseEditLoop) {
			
			String courseNum = adCourseService.courseList();
			
			if (courseNum.equals("0")) adCourseEditLoop = false;
			else if (courseNum.equals("again")) continue;	
			else {
				
				boolean adCourseEditTypeLoop = true;
				
				while (adCourseEditTypeLoop) {
					
					//화면
					String select = scan.nextLine();
					
					if (select.equals("0")) adCourseEditTypeLoop = false;
					else {
						//수정 메소드
					}
					
				}//while : adCourseEditTypeLoop
				
			}
			
		}//while : adCourseEditLoop
		
	}//method : adCourseEdit
	
//---------------------------------------------------------------------------------------------------------------------------------
	
	//과정 삭제 메소드
	private static void adCourseDelete() {
		// TODO Auto-generated method stub
		
	}//method : adCourseDelete
	
//---------------------------------------------------------------------------------------------------------------------------------
	
	//과정 조회 메소드
	private static void adCourseInfo() {
		
		boolean adCourseListLoop = true;
		
		while (adCourseListLoop) {
			
			String courseNum = adCourseService.courseList();
			
			if (courseNum.equals("0")) adCourseListLoop = false;
			else if (courseNum.equals("again")) continue;	
			else {
				
				//개설 과정 관리(과목, 교육생)
				boolean adSubjectInfoLoop = true;
				
				while (adSubjectInfoLoop) {
					
					String select = scan.nextLine();
					
					if (select.equals("1")) {
						
						adCourseService.subjectList();
						
					} else if (select.equals("2")) {
						
						adCourseService.subjectAdd();
						
					} else if (select.equals("3")) {
						
						adCourseService.subjectEdit();
						
					} else if (select.equals("4")) {
						
						adCourseService.subjectDelete();
						
					} else if (select.equals("5")) {
						
						//교육생 목록
						
					} else if (select.equals("0")) {
						adSubjectInfoLoop = false;
					}
					
				}//While : adSubjectInfoLoop
				
			}

		}//While : adCourseListLoop
		
	}//method : adCourseInfo
	
//=================================================================================================================================	
	
}//Class : AdministratorController


