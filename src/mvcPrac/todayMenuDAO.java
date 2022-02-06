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
public class todayMenuDAO {
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
	public todayMenuVO selectList() {
		sql="select*from todaymenu order by regdate desc limit 1";
		todayMenuVO sv = new todayMenuVO();
//		StudentVO sv = new StudentVO(); XXXX 주의할것 (참조형이기에 리셋하지 않으면 한 주소값에 자료를 계쏙 덮어 씌우는 꼴)
		try {
			st = cn.createStatement();
			rs = st.executeQuery(sql);
			
			if(rs.next()) {
					sv.setMenu1(rs.getString(1));
					sv.setMenu2(rs.getString(2));
					sv.setMenu3(rs.getString(3));
					sv.setMenu4(rs.getString(4));
					sv.setRegdate(rs.getString(5));
			}else {System.out.println("출력할 데이터가 없습니다.");}
			
		} catch (Exception e) {
			System.out.println("** selectList Exception => "+e.toString());
		}
		
		return sv;
	}

	// ** Create
	public int insert(todayMenuVO vo) {
		
		sql = "insert into todaymenu (menu1,menu2,menu3,menu4) values (?,?,?,?);";
		try {
			pst =cn.prepareStatement(sql);
			pst.setString(1, vo.getMenu1());
			pst.setString(2, vo.getMenu2());
			pst.setString(3, vo.getMenu3());
			pst.setString(4, vo.getMenu4());
			return pst.executeUpdate();
		} catch (Exception e) {
			System.out.println("** insert Exception => "+e.toString());
			return 0;
		}
	}

	public List<resultVO> result() {
		sql="select menu, count(*) from selectMenu group by menu";
		List<resultVO> list = new ArrayList<resultVO>();
		try {
			st = cn.createStatement();
			rs = st.executeQuery(sql);
			
			if(rs.next()) {
				do {
					resultVO sv = new resultVO();
					sv.setMenu(rs.getString(1));
					sv.setCount(rs.getInt(2));
					list.add(sv);
				}while(rs.next());
			}else {System.out.println("출력할 데이터가 없습니다."); list=null;}
			
		} catch (Exception e) {
			System.out.println("** selectList Exception => "+e.toString());
			list=null;
		}
		
		return list;
	}
	
	
}//class
