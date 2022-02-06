package mvcPrac;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import mvcTest.Ex01_DBConnection;

public class selectMenuDAO {
	private Connection cn = Ex01_DBConnection.getConnection();
	private Statement st;
	private PreparedStatement pst;
	private ResultSet rs;
	private String sql;
	
	public int insert(selectMenuVO vo) {
		sql = "insert into selectMenu values(?,?)";
		try {
			pst =cn.prepareStatement(sql);
			pst.setString(1, vo.getpNum());
			pst.setString(2, vo.getMenu());
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
	
	
	public int delete(selectMenuVO vo) {
		sql = "delete from selectMenu where pnum=?";
		try {
			pst =cn.prepareStatement(sql);
			pst.setString(1, vo.getpNum());
			return pst.executeUpdate();
		} catch (Exception e) {
			System.out.println("** delete Exception => "+e.toString());
			return 0;
		}
	}
	
	public int deleteAll() {
		sql = "delete from selectMenu";
		try {
			pst =cn.prepareStatement(sql);
			return pst.executeUpdate();
		} catch (Exception e) {
			System.out.println("** delete Exception => "+e.toString());
			return 0;
		}
	}
	
	
	
	
	
}
