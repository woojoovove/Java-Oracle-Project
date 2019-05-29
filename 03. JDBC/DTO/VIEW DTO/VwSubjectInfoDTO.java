package dto;

public class vwSubjectInfoDTO {

	private String vSubjectNum;
	private String vSubjectName;
	private String vTextbookName;
	private String vLecturerName;
	
//----------------------------------------------------------	
	
	public String getvSubjectNum() {
		return vSubjectNum;
	}
	public void setvSubjectNum(String vSubjectNum) {
		this.vSubjectNum = vSubjectNum;
	}
	public String getvSubjectName() {
		return vSubjectName;
	}
	public void setvSubjectName(String vSubjectName) {
		this.vSubjectName = vSubjectName;
	}
	public String getvTextbookName() {
		return vTextbookName;
	}
	public void setvTextbookName(String vTextbookName) {
		this.vTextbookName = vTextbookName;
	}
	public String getvLecturerName() {
		return vLecturerName;
	}
	public void setvLecturerName(String vLecturerName) {
		this.vLecturerName = vLecturerName;
	}
	
}
