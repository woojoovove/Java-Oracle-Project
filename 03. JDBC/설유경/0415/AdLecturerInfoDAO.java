package admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import dto.AvlbDTO;
import dto.VwLecturerDTO;
import util.DBUtil;

public class AdLecturerInfoDAO {

	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	
	
	public AdLecturerInfoDAO() {
		try {
			DBUtil util = new DBUtil();
			this.conn = util.connect();
			this.stat = conn.createStatement();
			
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("AdLecturerInfoDAO.Constructor");
		}
		
	}//AdLecturerInfoDAO()
	
	
	public boolean isConnected() {

		try {
			return !this.conn.isClosed();
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return false;

	}//isConnected()

	
	public void close() {
		try {

			this.conn.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}

	}//close()
	
	
		//교사정보추가
		public int AdLecturerInfoadd(VwLecturerDTO dto) {
			//1. stat or pstat : 매개변수 유무
			String sql = "insert into tblLecturer (seq, name, registrationnum, phonenum, state) values (memo_seq.nextval, ?, ?, ?, default)";
			
			try {
				
				pstat = conn.prepareStatement(sql);
				pstat.setString(1, dto.getVlecturerName());
				pstat.setString(2, dto.getVlecturerRegistrationNum());
				pstat.setString(3, dto.getVlecturerPhoneNum());
				
				return pstat.executeUpdate();			
				
			} catch (SQLException e) {
				e.printStackTrace();
			}//AdLecturerInfoadd(VwLecturerDTO dto)
			
			
			
			return 0;
		}

		//교사추가시 
		public ArrayList<VwLecturerDTO> avlbnamelist() {
			try {
				String sql = "select distinct vsubjectSeq, vsubjectNam from tblavlb order by vsubjectSeq";
				ResultSet rs = stat.executeQuery(sql);
				
				ArrayList<VwLecturerDTO> avlbnamelist = new ArrayList<VwLecturerDTO>();
				
				while(rs.next()) {
					//레코드 1개 -> DTO 1개
					VwLecturerDTO dto = new VwLecturerDTO();
					
					dto. setVsubjectSeq(rs.getString("vsubjectSeq")); //컬럼값 -> DTO멤버변수
					dto.setVsubjectName(rs.getString("vsubjectName"));
					
					avlbnamelist.add(dto);
					
				}//while
			
			} catch (Exception e) {
				System.out.println(e.toString());
			}
			return null;
		}//avlbnamelist()
		

		
		
		//교사정보목록
		public ArrayList<VwLecturerDTO> lecturerinfolist() {
			try {
				
				String sql = "select distinct vlecturerSeq, vlecturerName, vlecturerRegistrationNum, vlecturerPhoneNum from vwLecturer order by vlecturerSeq";
				
				ResultSet rs = stat.executeQuery(sql);
				
				//ResultSet을 다른 객체에게 전달하기 위해 그에 준하는 자료형으로 변경 >  ArrayList<DTO>
				//ResultSet == 테이블 == ArrayList<DTO>
				//레코드 == 행 == DTO
				//컬럼 == 값 == DTO의 멤버변수
				
				ArrayList<VwLecturerDTO> lecturerinfolist = new ArrayList<VwLecturerDTO>();
				
				//rs  ->  (복사) -> list
				while(rs.next()) {
					//레코드 1개 -> DTO 1개
					VwLecturerDTO dto = new VwLecturerDTO();
					
					dto.setVlecturerSeq(rs.getString("vlecturerSeq")); //컬럼값 -> DTO멤버변수
					dto.setVlecturerName(rs.getString("vlecturerName"));
					dto.setVlecturerRegistrationNum(rs.getString("vlecturerRegistrationNum"));
					dto.setVlecturerPhoneNum(rs.getString("vlecturerPhoneNum"));
					
					
					
					lecturerinfolist.add(dto);
				}//while
				
				return lecturerinfolist;
				
			} catch (Exception e) {
				System.out.println(e.toString());
				
				
			}
			return null;
		}//lecturerinfolist()
	
		
		
		
		
		public ArrayList<VwLecturerDTO> detailLecturerInfo() {

			try {
				
				String sql = "select distinct vlecturerSeq, vlecturerName, vlecturerRegistrationNum, vlecturerPhoneNum from vwLecturer order by vlecturerSeq";
				
				ResultSet rs = stat.executeQuery(sql);
				
				
				
				ArrayList<VwLecturerDTO> lecturerinfolist = new ArrayList<VwLecturerDTO>();
				
				
				while(rs.next()) {
					
					VwLecturerDTO dto = new VwLecturerDTO();
					
					dto.setVlecturerSeq(rs.getString("vlecturerSeq")); 
					dto.setVlecturerName(rs.getString("vlecturerName"));
					dto.setVlecturerRegistrationNum(rs.getString("vlecturerRegistrationNum"));
					dto.setVlecturerPhoneNum(rs.getString("vlecturerPhoneNum"));
					
					
					
					lecturerinfolist.add(dto);
				}//while
				
				return lecturerinfolist;
				
			} catch (Exception e) {
				System.out.println(e.toString());
				
				
			}
			return null;
		
		}
		
		public ArrayList<VwLecturerDTO> detailLeInfo() {
	try {
				
				String sql = "select vsubjectSeq, vsubjectName from vwLecturer order by vlecturerSeq";
				
				ResultSet rs = stat.executeQuery(sql);
				
				
				
				ArrayList<VwLecturerDTO> detaillecturerinfo = new ArrayList<VwLecturerDTO>();
				
				
				while(rs.next()) {
					
					VwLecturerDTO dto = new VwLecturerDTO();
					
					
					dto.setVsubjectSeq(rs.getString("vsubjectSeq"));
					dto.setVsubjectName(rs.getString("vsubjectName"));
					
					
					
//					detaillecturerinfo.add(dto);
				}//while
				
				return detaillecturerinfo;
				
			} catch (Exception e) {
				System.out.println(e.toString());
				
				
			}
			return null;
		
		
		}
		
}
