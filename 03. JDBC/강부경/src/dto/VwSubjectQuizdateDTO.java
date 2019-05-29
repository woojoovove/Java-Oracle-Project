package dto;

public class VwSubjectQuizdateDTO {

	private String vCourseNum;
	private String subjectName;
	private String quizdate;
	
//-----------------------------------------------------	
	
	public String getvCourseNum() {
		return vCourseNum;
	}
	public void setvCourseNum(String vCourseNum) {
		this.vCourseNum = vCourseNum;
	}
	public String getSubjectName() {
		return subjectName;
	}
	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}
	public String getQuizdate() {
		return quizdate;
	}
	public void setQuizdate(String quizdate) {
		this.quizdate = quizdate;
	}
	
}
