package student.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import dto.VwGradeListDTO;
import dto.VwQuizListDTO;
import dto.VwStudentInfoDTO;
import dto.VwstugrainfoDTO;

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

//	public ArrayList<VwStudentInfoDTO> list(String word) {   //학생 개인정보 메소
//
//		try {
//
//			String sql = "select * from tblvwStudentinfo where vStudentName like '%' || ? || '%'"; // 뷰 학생 로그인번호로 바꿔야
//			ResultSet rs = stat.executeQuery(sql);
//
//			ArrayList<VwStudentInfoDTO> list = new ArrayList<VwStudentInfoDTO>();
//
//			while (rs.next()) {
//
//				VwStudentInfoDTO vwstInfoDto = new VwStudentInfoDTO();
//
//				vwstInfoDto.setvStudentName(rs.getString("vStudentName"));
//				vwstInfoDto.setvCourseName(rs.getString("vCourseName"));
//				vwstInfoDto.setvCourseStartDate(rs.getString("vCourseStartDate"));
//				vwstInfoDto.setvCourseEndDate(rs.getString("vCourseEndDate"));
//				vwstInfoDto.setvClassRoom(rs.getString("vClassRoom"));
//
//				list.add(vwstInfoDto);
//
//			}
//			return list;
//
//		} catch (Exception e) {
//			System.out.println(e.toString());
//		}
//		return null;
//	}



	public ArrayList<VwGradeListDTO> gradelist() {

		
		try {
			
			String sql = "select * from tblvwGradeList";
			
			ResultSet rs = stat.executeQuery(sql);
			
			ArrayList<VwGradeListDTO> gradelist = new ArrayList<VwGradeListDTO>();
			
			while(rs.next()) {
				
				VwGradeListDTO dto = new VwGradeListDTO();
				
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

	public ArrayList<VwQuizListDTO> quizList() {
		
		try {
			
			String sql = "select * from tblvwQuizList";
			ResultSet rs = stat.executeQuery(sql);
			
			ArrayList<VwQuizListDTO> quizList = new ArrayList <VwQuizListDTO>();
			
			
			while(rs.next()) {
				
				VwQuizListDTO dto = new VwQuizListDTO();
				
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

	


}// dao
