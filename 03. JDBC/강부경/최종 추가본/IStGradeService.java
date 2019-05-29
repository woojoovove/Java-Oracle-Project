package student.service;

import dto.StudentInfoDTO;

public interface IStGradeService {

	void gradeList(String studentSeq);

	void quizList();

	void personalInfo(String studentSeq);

}
