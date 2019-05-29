package admin.service;

import java.util.Scanner;

import admin.AdministratorView;

public class AdAttendanceService implements IAdAttendanceService {
	
	private AdministratorView view;
	private Scanner scan;
	
	public AdAttendanceService() {
		view = new AdministratorView();
		scan = new Scanner(System.in);
	}
	

	@Override
	public void fullAttendance() {

		/*
		 * 전체 학생 과정 내 근태 유형별 횟수 출력
		 */
	}

	@Override
	public void attendanceByMonth() {
		
		boolean bool = true;
		
		while(bool) {
			
			view.monthlyAttendance();
			String m = scan.nextLine();
			
			/*
			 * s = SELECT TO_CHAR(startDate,'mm')
			 * e = SELECT TO_CHAR(endDate, 'mm') 
			 * for (int i = s; i<e; i++) {
			 * 	
			 * 	syso println(String.format("%s월",i));
			 * 
			 * };
			 */
			
			String d = scan.nextLine();
			if (d.equals("x")) {
				// SELECT attendance WHERE regdate BETWEEN x월 1일 x월 말일
			} else if (d.equals("*")) {
				// 진입한 월의 특정일 출결 조회할 수 있도록  
				view.dailyAttendance();
				
				String s = scan.nextLine();
				
				// 특정 날짜의 출결 조회 
				// SELECT attendance WHERE regdate = x월 s일
			}
			else {
				bool = false;
			}
		}
	}

}