package dto;

public class VwSubjectPercentDTO {

	private String vSubjectNum;
	private String subjectName;
	private String writtenPercent;
	private String practicalPercent;
	private String attendancePercent;
	
//------------------------------------------------------------------	
	
	public String getvSubjectNum() {
		return vSubjectNum;
	}
	public void setvSubjectNum(String vSubjectNum) {
		this.vSubjectNum = vSubjectNum;
	}
	public String getSubjectName() {
		return subjectName;
	}
	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
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
	public String getAttendancePercent() {
		return attendancePercent;
	}
	public void setAttendancePercent(String attendancePercent) {
		this.attendancePercent = attendancePercent;
	}
	
}
