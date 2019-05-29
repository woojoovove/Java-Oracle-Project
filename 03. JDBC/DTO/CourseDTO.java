package dto;

public class courseDTO {
	
	private String seq;
	private String courseNameSeq;
	private String lecturerSeq;
	private String classroomSeq;
	private String startDate;
	private String endDate;

//----------------------------------------------------------	
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	
	public String getCourseNameSeq() {
		return courseNameSeq;
	}
	public void setCourseNameSeq(String courseNameSeq) {
		this.courseNameSeq = courseNameSeq;
	}
	
	public String getLecturerSeq() {
		return lecturerSeq;
	}
	public void setLecturerSeq(String lecturerSeq) {
		this.lecturerSeq = lecturerSeq;
	}
	
	public String getClassroomSeq() {
		return classroomSeq;
	}
	public void setClassroomSeq(String classroomSeq) {
		this.classroomSeq = classroomSeq;
	}
	
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
		
}
