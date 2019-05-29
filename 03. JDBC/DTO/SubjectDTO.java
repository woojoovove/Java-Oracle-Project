package dto;

public class subjectDTO {
	
	private String seq;
	private String subjectNameSeq;
	private String courseSeq;
	private String textbookSeq;
	private String startDate;
	private String endDate;
	private String attendancePercent;
	private String writtenPercent;
	private String practicalPercent;
	private String state;
	
//------------------------------------------------------------	
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	
	public String getSubjectNameSeq() {
		return subjectNameSeq;
	}
	public void setSubjectNameSeq(String subjectNameSeq) {
		this.subjectNameSeq = subjectNameSeq;
	}
	
	public String getCourseSeq() {
		return courseSeq;
	}
	public void setCourseSeq(String courseSeq) {
		this.courseSeq = courseSeq;
	}
	
	public String getTextbookSeq() {
		return textbookSeq;
	}
	public void setTextbookSeq(String textbookSeq) {
		this.textbookSeq = textbookSeq;
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
	
	public String getAttendancePercent() {
		return attendancePercent;
	}
	public void setAttendancePercent(String attendancePercent) {
		this.attendancePercent = attendancePercent;
	}
	
	public String getWrittenPercent() {
		return writtenPercent;
	}
	public void setWrittenPercent(String writtenPercent) {
		this.writtenPercent = writtenPercent;
	}
	
	public String getPracticalPercent() {
		return practicalPercent;
	}
	public void setPracticalPercent(String practicalPercent) {
		this.practicalPercent = practicalPercent;
	}
	
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
}
