package student.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import dto.StudentDTO;
import dto.StudentInfoDTO;
import dto.VwGradeListDTO;
import dto.VwQuizListDTO;
import dto.VwStudentInfoDTO;
import login.dao.LoginDAO;
import util.DBUtil;

public class StGradeDAO {

	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;

	public StGradeDAO() {

		try {

			DBUtil util = new DBUtil();
			this.conn = util.connect();
			this.stat = conn.createStatement();

		} catch (SQLException e) {

			e.printStackTrace();
			System.out.println("DStGradeDAOAO.Constructor");
		}
	}

	public boolean isConnected() {

		try {
			return !this.conn.isClosed();
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return false;

	}

	public void close() {
		try {

			this.conn.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}

	}

	



	public ArrayList<VwGradeListDTO>  gradelist() {

		StudentInfoDTO studentDto = new StudentInfoDTO();
		try {
			
			String sql = "select * from vwGradeList where stuseq = 28 order by vSubjectSeq";   //로그인 한 사람
			
			
			
			pstat = conn.prepareStatement(sql);
			//pstat.setString(1, "");  // 학생번호 추가
			ResultSet rs = pstat.executeQuery();
		
			
			ArrayList<VwGradeListDTO> gradelist = new ArrayList<VwGradeListDTO>();
		
			while(rs.next()) {
				
				VwGradeListDTO dto = new VwGradeListDTO();
				
//				dto1.setvQuizAnswer(rs.getString("vQuizAnswer"));
//				quizList.add(dto1);
				
				dto.setvSubjectSeq(rs.getString("vSubjectSeq"));
				dto.setvSubjectName(rs.getString("vSubjectName"));
				dto.setvSubjectStartDate(rs.getString("vSubjectStartDate"));
				dto.setvSubjectEndDate(rs.getString("vSubjectEndDate"));
				dto.setvTextBook(rs.getString("vTextBook"));
				dto.setvLecturer(rs.getString("vLecturer"));
				dto.setvWrittenpercent(rs.getString("vWrittenpercent"));
				dto.setvPracticalPercent(rs.getString("vPracticalPercent"));
				dto.setvAttendancepercent(rs.getString("vAttendancepercent"));
				dto.setvWrittenTotal(rs.getString("vwritten"));
				dto.setvPracticalTotal(rs.getString("vpractical"));
				dto.setvAttendanceTotal(rs.getString("vattendance"));
				dto.setvQuizDate(rs.getString("vQuizDate"));
				
				// 성적 정보 , 시험 날짜 처음과 끝 / 과목번호
				
				gradelist.add(dto);
				
				
			}
			return gradelist;
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return null;
	}

	public ArrayList<VwQuizListDTO> quizList(String select) {
		
		try {
			
			String sql = "select *from vwQuizList where vseq = ? order by vQuizNum asc";
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, select);

			ResultSet rs = pstat.executeQuery();
			
			
			ArrayList<VwQuizListDTO> quizList = new ArrayList<VwQuizListDTO>();
			
			while(rs.next()) { 
				 VwQuizListDTO dto = new VwQuizListDTO();
				
				dto.setVsubjectSeq(rs.getString("vseq"));
				dto.setvSubjectName(rs.getString("vSubjectName"));
				dto.setvQuizNum(rs.getString("vQuizNum"));
				dto.setvQuizContents(rs.getString("vQuizContents"));
				dto.setvQuizAnswer(rs.getString("vQuizAnswer"));
				
				quizList.add(dto);
				
				
			}
			return quizList;
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return null;
		
	}

	public VwStudentInfoDTO list(StudentInfoDTO loginDTO) {
	
		try {

		
			System.out.println();

			LoginDAO dao = new LoginDAO();
			
						
			String sql = "select * from vwStudentinfo where vstuSeq = ? and vstudentname = ? ";
			
			
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, loginDTO.getSeq());
			 
			pstat.setString(2, loginDTO.getName());
			
			ResultSet rs = pstat.executeQuery();

			VwStudentInfoDTO dto = new VwStudentInfoDTO();
			
			if(rs.next()) {

				dto.setvStudentName(rs.getString("vStudentName"));
				dto.setvCourseName(rs.getString("vCourseName"));
				dto.setvCourseStartDate(rs.getString("vCourseStartDate"));
				dto.setvCourseEndDate(rs.getString("vCourseEndDate"));
				dto.setvClassRoom(rs.getString("vClassRoom"));

				return dto;

			}
			

		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return null;
		
	}

	


	


}// dao
