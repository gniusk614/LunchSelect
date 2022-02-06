package mvcPrac;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import mvcTest.Ex01_DBConnection;

// ** DAO(Data Access Object)
// => SQL 구문 처리
// => CRUD 구현
//	  Create(insert), Read(select), Update, Delete
public class AMemberDAO {
	// ** 전역변수 정의
	private Connection cn = Ex01_DBConnection.getConnection();
	private Statement st;
	private PreparedStatement pst;
	private ResultSet rs;
	private String sql;
		
	// ** Read
	// ResultSet 의 Data 들의 결과를 처리할 요청 클래스로 전달
	// => List 전달에 적합한 객체 필요 : ArrayList
	// => ArrayList의 Type : StudentVO
	public List<AMemberVO> selectList() {
		sql="select * from AMember";
		List<AMemberVO> list = new ArrayList<AMemberVO>();
//		StudentVO sv = new StudentVO(); XXXX 주의할것 (참조형이기에 리셋하지 않으면 한 주소값에 자료를 계쏙 덮어 씌우는 꼴)
		try {
			st = cn.createStatement();
			rs = st.executeQuery(sql);
			
			if(rs.next()) {
				do {
					AMemberVO sv = new AMemberVO();
					sv.setName(rs.getString(1));
					sv.setpNum(rs.getString(2));
					list.add(sv);
				} while (rs.next());
			}else {System.out.println("출력할 데이터가 없습니다."); list=null;}
			
		} catch (Exception e) {
			System.out.println("** selectList Exception => "+e.toString());
			list=null;
		}
		
		return list;
	}
	public AMemberVO selectOne(AMemberVO vo) {
		sql="select * from AMember where pnum =?";
		try {
			pst = cn.prepareStatement(sql);
			pst.setString(1, vo.getpNum());
			rs=pst.executeQuery();
			if (rs.next()) {
				vo.setName(rs.getString(1));
				vo.setPw(rs.getString(3));
				vo.setpNum(rs.getString(2));
			}else vo=null;
		} catch (Exception e) {
			System.out.println("** selectOne Exception => "+e.toString());
			vo=null;
		}//catch
		return vo;
	}//selectOne
	
	
	
	
	// ** Create
	public int insert(AMemberVO vo) {
		sql = "insert into AMember values(?,?,?)";
		try {
			pst =cn.prepareStatement(sql);
			pst.setString(1, vo.getName());
			pst.setString(2, vo.getpNum());
			pst.setString(3, vo.getPw());
//			int count = pst.executeUpdate();
//			if (count<1) {
//				System.out.println("자료가 정상적으로 입력되지 않았습니다.");
//			}else System.out.println(count+"개의 자료가 정상적으로 입력되었습니다.");
			return pst.executeUpdate();
		} catch (Exception e) {
			System.out.println("** insert Exception => "+e.toString());
			return 0;
		}
	}
	// ** Update
//	public int update(AMemberVO vo) {
//		sql ="update student set name=?, java=?, html=? where idno=?";
//		
//		try {
//			pst=cn.prepareStatement(sql);
//			pst.setString(1, vo.getName());
//			pst.setInt(2, vo.getJava());
//			pst.setInt(3, vo.getHtml());
//			pst.setString(4,vo.getIdno());
//			return pst.executeUpdate();
//		} catch (SQLException e) {
//			System.out.println("** update Exception => "+e.toString());
//			return 0;
//		}
//	}//update
	


	
	
	
}//class
