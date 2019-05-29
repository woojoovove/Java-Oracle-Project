package dto;

public class vwCourseListDTO {

	private String vCourseNum;
	private String vCourseName;
	private String vCourseStart;
	private String vCourseEnd;
	
//--------------------------------------------------------	
	
	public String getvCourseNum() {
		return vCourseNum;
	}
	public void setvCourseNum(String vCourseNum) {
		this.vCourseNum = vCourseNum;
	}
	public String getvCourseName() {
		return vCourseName;
	}
	public void setvCourseName(String vCourseName) {
		this.vCourseName = vCourseName;
	}
	public String getvCourseStart() {
		return vCourseStart;
	}
	public void setvCourseStart(String vCourseStart) {
		this.vCourseStart = vCourseStart;
	}
	public String getvCourseEnd() {
		return vCourseEnd;
	}
	public void setvCourseEnd(String vCourseEnd) {
		this.vCourseEnd = vCourseEnd;
	}
	
}
