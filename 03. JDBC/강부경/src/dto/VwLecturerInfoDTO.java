package dto;

public class VwLecturerInfoDTO {
	
	private String vCourseNum;
	private String vCourseName;
	private String vCourseStart;
	private String vCourseEnd;
	private String vClassroomName;
	
//----------------------------------------------------------	
	
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
	public String getvClassroomName() {
		return vClassroomName;
	}
	public void setvClassroomName(String vClassroomName) {
		this.vClassroomName = vClassroomName;
	}
	
}
