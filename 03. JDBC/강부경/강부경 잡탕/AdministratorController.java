package admin;

import java.util.Scanner;

import admin.service.AdBasicInfoService;
import admin.service.AdCourseService;
import admin.service.AdGradeService;
import admin.service.AdStudentService;
import admin.service.IAdCourseService;
import admin.service.IAdGradeService;
import admin.service.IAdStudentService;
import login.Cls;
import login.LoginController;

public class AdministratorController {

	private static AdministratorView administratorView;

	private static IAdCourseService adCourseService;
	private static IAdStudentService studentService;
	private static IAdGradeService gradeService;

	private static Scanner scan;

	static {
		administratorView = new AdministratorView();

		adCourseService = new AdCourseService();
		studentService = new AdStudentService();
		gradeService = new AdGradeService();

		scan = new Scanner(System.in);
	}

//==========================================================================================================

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

			// ------------------------------------------------------------------------------------------------------

			if (select.equals("1")) { // 기초 정보 관리

				boolean adBasicInfoLoop = true;

				while (adBasicInfoLoop) {

					administratorView.basicInfomenu();
					select = scan.nextLine();

					AdBasicInfoService abis = new AdBasicInfoService();

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
						administratorView.menu();

					} else {
						System.out.println("다시 입력해 주세요");

						continue;
					}

				}

// ------------------------------------------------------------------------------------------------------

			} else if (select.equals("2")) { // 교사 계정 관리

				boolean adLecturerInfoLoop = true;

				while (adLecturerInfoLoop) {
					
					administratorView.basicInfomenu();
					select = scan.nextLine();

					AdBasicInfoService abis = new AdBasicInfoService();
					
					
					if(select.equals("1")) {  //교사 추가하기
						abis.addLecturer();   //교사 추가
					}else if(select.equals("2")) {//교사 정보 조회
						detailLecturerInfo();
						
					}else if(select.equals("0")) {
						System.out.println("이전 화면으로 돌아갑니다");
						continue;
					}

				}

		  }
// ------------------------------------------------------------------------------------------------------

			} else if (select.equals("3")) { // 개설 과정 관리

				boolean adCourseLoop = true;

				while (adCourseLoop) {

					select = scan.nextLine();

					if (select.equals("1")) {

						// 개설 과정 신규 등록
						adCourseService.courseAdd();

						// 과정명 선택
						// 과정 기간 입력
						// 강의실 정보 입력
						// 교사 정보 입력

					} else if (select.equals("2")) { // 개설 과정 정보

						adCourseService.courseList();

						// 과정 정보 출력하는 쿼리

						select = scan.nextLine();

						if (select.equals("없는 과정 번호")) {

							System.out.println("존재하지 않는 과정 번호입니다");

						} else if (select.equals("0")) {

							System.out.println("이전 화면으로 돌아갑니다");
							continue;

						} else {

							// 해당 과목의 개설 과목 관리 메뉴로 이동
							boolean adSubjectLoop = true;

							while (adSubjectLoop) {

								select = scan.nextLine();

								if (select.equals("1")) {

									// 과목 정보 출력

								} else if (select.equals("2")) {

									// 과목 추가하기

								} else if (select.equals("3")) {

									// 과목 수정하기

								} else if (select.equals("4")) {

									// 과목 삭제하기

								} else if (select.equals("5")) {

									// 교육생 목록

								} else if (select.equals("0")) {

									System.out.println("이전 화면으로 돌아갑니다");
									adSubjectLoop = false;

								}

							} // While End

						}

					} else if (select.equals("0")) { // 이전 메뉴로 돌아가기

						System.out.println("이전 화면으로 돌아갑니다");
						adCourseLoop = false;

					}

				} // While End

				// ------------------------------------------------------------------------------------------------------

			} else if (select.equals("4")) { // 교육생 관리

				boolean adStudentLoop = true;

				while (adStudentLoop) {

					// administratorView.menuAdStudent();

					String sel = scan.nextLine();
					if (sel.equals("1")) {

						// studentService.studentAdd();

					}

					else if (sel.equals("2")) {

						boolean bool = true;

						while (bool) {

							// administratorView.menuManageStudent();

							String p = scan.nextLine();
							if (p.equals("1")) {

								// studentService.searchByName();

							}

							else if (p.equals("2")) {

								// studentService.searchByCourse();

							}
						}

					} else
						adStudentLoop = false;

				}

				// ------------------------------------------------------------------------------------------------------

			} else if (select.equals("5")) { // 성적 관리

				boolean adGradeLoop = true;

				while (adGradeLoop) {

					// administratorView.menuGrade();

					String pick = scan.nextLine();

					if (pick.equals("1")) {

						// gradeService.gradeByCourse();

					}

					else if (pick.equals("2")) {

						// gradeService.gradeByName();

					}

					else
						adGradeLoop = false;

				}

				// ------------------------------------------------------------------------------------------------------

			} else if (select.equals("6")) { // 출결 관리

				boolean adAttendanceLoop = true;

				while (adAttendanceLoop) {

				}

				// ------------------------------------------------------------------------------------------------------

			} else if (select.equals("7")) { // 추천서 관리

				boolean adRecommendationLoop = true;

				while (adRecommendationLoop) {

				}

				// ------------------------------------------------------------------------------------------------------

			} else if (select.equals("0")) { // 로그아웃

				administratorLoop = false;

				Cls.clearScreen();
				System.out.println("\t\t\t\t\tLOADING.....");
				Thread.sleep(700);
				Cls.clearScreen();

				LoginController.main(args);

			}

		}

	private static void detailLecturerInfo() {

		boolean detailLecturerInfo = true;
		AdBasicInfoService abis = new AdBasicInfoService();
		while (detailLecturerInfo) {
			abis.lecturerInfo();
			String select = scan.nextLine();

			if (select.equals("교사번호")) {
				detailLecturer(); // 교사 세부사항

			} else if (select.equals("0")) {

				System.out.println("돌아가기");
				administratorView.lecturerBasicInfomenu();
			}
		}

	}

	private static void detailLecturer() {

		boolean detailLecturer = true;
		AdBasicInfoService abis = new AdBasicInfoService();

		while (detailLecturer) {
			abis.detailLecturer();
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
	}// While End

	// -==========================메소드 ===================================

	private static void updateLecturer() {
		boolean updateLecturer = true;
		AdBasicInfoService abis = new AdBasicInfoService();

		while (updateLecturer) {
			abis.detailLecturer();  //교사 세부사항 
			administratorView.lecturerBasicInfoSelect();
			
			String select = scan.nextLine();
			
			if(select.equals("1")) {
				abis.updateLecturerName();
			}else if(select.equals("2")) {
				abis.updateLecturerReg();
			}else if(select.equals("3")) {
				abis.updateLecturerTel();
			}else if(select.equals("4")) {
				abis.updateLecturerSubject();
			}else if(select.equasl("0")) {
				administratorView.lecturerBasicInfoSelect();
			}
		
	}
	}
	private static void FourthTextBook() { // 교재 선택
		boolean textBook = true;
		AdBasicInfoService abis = new AdBasicInfoService();
		while (textBook) {
			abis.textBook();
			String select = scan.nextLine();

			if (select.equals("#")) {
				// 다음페이지 이동
			} else if (select.equals("*")) {
				textBookUpdate(); // 교재 추가 수정 삭제
			}
		}

	}

	private static void textBookUpdate() { // 교재 수정 추가 삭제
		boolean textBookUpdate = true;
		AdBasicInfoService abis = new AdBasicInfoService();

		while (textBookUpdate) {
			abis.textBookMenu();
			String select = scan.nextLine();

			if (select.equals("1")) {
				selectPublisher(); // 교재 추가시 출판사 선택
			} else if (select.equals("2")) {
				abis.modifytextBook();
			} else if (select.equals("3")) {
				abis.deletetextBook();
			} else if (select.equals("0")) {
				System.out.println("돌아가기");
				administratorView.basicInfomenu();
			}
		}
	}

	private static void selectPublisher() {
		boolean selectPublisher = true;
		AdBasicInfoService abis = new AdBasicInfoService();
		while (selectPublisher) {
			abis.selectPublisher(); // 출판사 읽기
			String select = scan.nextLine();

		}
	}

	private static void ThirdClassRoom() {
		boolean basicClassRoom = true;
		AdBasicInfoService abis = new AdBasicInfoService();
		while (basicClassRoom) {
			abis.classRoom();
			String select = scan.nextLine();

			if (select.equals("*")) {
				abis.modifyClassRoomName();
			} else if (select.equals("#")) {
				abis.modifyclassRoomNum();
			} else if (select.equals("0")) {
				System.out.println("돌아가기");
				administratorView.basicInfomenu();
			}
		}
	}

	private static void secondSubjectName() { // 과목명선택 메소드
		boolean basicSubjectName = true;
		AdBasicInfoService abis = new AdBasicInfoService();
		while (basicSubjectName) {
			abis.subjectName();
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

	private static void subjectInDeUp() { // 과목명 추가 수정 삭제 메소드

		boolean subjectUpdate = true;
		AdBasicInfoService abis = new AdBasicInfoService();

		while (subjectUpdate) {
			administratorView.courseNameMenu();

			String select = scan.nextLine();

			if (select.equals("1")) {
				abis.insertSubject();
			} else if (select.equals("2")) {
				abis.modifySubject();
			} else if (select.equals("3")) {
				abis.deleteSubject();
			} else if (select.equals("0")) {
				administratorView.basicInfomenu();
			}
		}

	}
	// Method : main

	private static void firstCourseName() {

		boolean basicCourseName = true;
		AdBasicInfoService abis = new AdBasicInfoService();
		while (basicCourseName) {
			administratorView.basicInfomenu();
			String select = scan.nextLine();

			if (select.equals("*")) { // 과정 추가 삭제 수정
				courseInDeUp(); // 과정 추가삭제수정 메소드
			} else if (select.equals("0")) { // 돌아가기
				abis.basicInfomenu();

			}
		}
	}

	private static void courseInDeUp() {   // 과정 추가삭제수정 메소드
		 boolean courseUpdate = true;
		 AdBasicInfoService abis = new AdBasicInfoService();
		 while (courseUpdate) {
			 administratorView.courseNameMenu();
			 String select = scan.nextLine();
			 
		if(select.equals("1")) {
			abis.insertCourseName();
		}else if(select.equals("2")) {
			abis.modifyCourseName();
		}else if(select.equals("3")) {
			abis.deleteCourseName();
		}
	}
	
	
	
}// Class : AdministratorController
