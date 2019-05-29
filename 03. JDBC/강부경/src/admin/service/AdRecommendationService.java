package admin.service;

import java.util.Scanner;

import admin.AdministratorView;

public class AdRecommendationService implements IAdRecommendationService {

	private AdministratorView view;
	private Scanner scan;
	
	@Override
	public void recommendation() {

		boolean recommendationLoop	= true;
		
		while(recommendationLoop) {
			
			view.listLastCourse();
			
			String f = scan.nextLine();
			
			if (f.equals("1")) {
				// 첫 번째로 출력된 강좌의 추천서 5개출력
			} else {
				recommendationLoop = false;
			}
			
			view.pause(AdministratorView.RECOMMENDATION);
		}
	}
}