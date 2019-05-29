package admin.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import dto.WarningDTO;
import util.DBUtil;

public class AdWarningDAO {

	private static Connection conn;
	private static Statement stat;
	private static PreparedStatement pstat;
	
	static {
		try {
			DBUtil util = new DBUtil();
			conn = util.connect();
			stat = conn.createStatement();
		} catch (Exception e) {
			System.out.println(e.toString());
		}
	}
	
	public ArrayList<WarningDTO> getStudent() {
		
		ArrayList<WarningDTO> list = new ArrayList<WarningDTO>();
		
		try {
			
			String sql = "SELECT * FROM vwWarning";
			ResultSet rs = stat.executeQuery(sql);
			
			while (rs.next()) {
				
				WarningDTO dto = new WarningDTO();
				
				dto.setSTUDENTSEQ(rs.getString("STUDENTSEQ"));
				dto.setSTUDENTNAME(rs.getString("STUDENTNAME"));
				dto.setATTENDANCEGRADE(rs.getString("ATTENDANCEGRADE"));
				dto.setCOURSESEQ(rs.getString("COURSESEQ"));
				dto.setCOURSENAME(rs.getString("COURSENAME"));
				dto.setLECTURERSEQ(rs.getString("LECTURERSEQ"));
				dto.setLECTURERNAME(rs.getString("LECTURERNAME"));
				
				list.add(dto);
			}
			return list;
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return null;
	}

	public void notifyLecturer(ArrayList<WarningDTO> studentList) {
		
//		INSERT INTO tblWarning VALUES (tblWarningSeq.NEXTVAL, STUDENTSEQ, STUDENTNAME, 
//		ATTENDANCEGRADE, COURSESEQ, COURSENAME, LECTURERSEQ, LECTURERNAME, sysdate, COUNSELINGCONTENT);

			
			for (WarningDTO student : studentList) {
				
				String sql = "INSERT INTO tblWarning VALUES (tblWarningSeq.NEXTVAL, ?, ?, ?, ?, ?, ?, ?, sysdate, null)";
				try {
					
					pstat = conn.prepareStatement(sql);
					pstat.setString(1, student.getSTUDENTSEQ());
					pstat.setString(2, student.getSTUDENTNAME());
					pstat.setString(3, student.getATTENDANCEGRADE());
					pstat.setString(4, student.getCOURSESEQ());
					pstat.setString(5, student.getCOURSENAME());
					pstat.setString(6, student.getLECTURERSEQ());
					pstat.setString(7, student.getLECTURERNAME());
					
					pstat.executeUpdate();
					
				} catch (SQLException e1) {
					e1.printStackTrace();
					System.out.println("AdWarningDAO.notifyLecturer");
				}
			}
	}
	
	
//	public void notifyLecturerTEST(ArrayList<WarningDTO> studentList) {
//		
////INSERT INTO tblWarning VALUES (tblWarningSeq.NEXTVAL, STUDENTSEQ, STUDENTNAME, ATTENDANCEGRADE, COURSESEQ, COURSENAME, LECTURERSEQ, LECTURERNAME, NULL, NULL);
//			
//			for (WarningDTO student : studentList) {
//				
//				String sql = "INSERT INTO tblWarning VALUES (tblWarningSeq.NEXTVAL, ?, ?, ?, ?, ?, ?, ?, NULL, NULL)";
//				try {
//					
//					pstat = conn.prepareStatement(sql);
//					pstat.setString(1, student.getSTUDENTSEQ());
//					pstat.setString(2, student.getSTUDENTNAME);
//					pstat.setString(3, student.getATTENDANCEGRADE());
//					pstat.setString(4, student.getCOURSESEQ());
//					pstat.setString(5, student.getCOURSENAME());
//					pstat.setString(6, student.getLECTURERSEQ());
//					pstat.setString(7, student.getLECTURERNAME());
//					
//					pstat.executeUpdate();
//					
//				} catch (SQLException e1) {
//					e1.printStackTrace();
//					System.out.println("AdWarningDAO.notifyLecturer");
//				}
//			}
//	}
}



















