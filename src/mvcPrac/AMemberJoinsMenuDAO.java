package mvcPrac;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import mvcTest.Ex01_DBConnection;

public class AMemberJoinsMenuDAO {
	private Connection cn = Ex01_DBConnection.getConnection();
	private Statement st;
	private PreparedStatement pst;
	private ResultSet rs;
	private String sql;
	
	public AMemberJoinsMenuVO selectOne(AMemberJoinsMenuVO vo) {

		sql="select name, AMember.pNum,menu from AMember, selectMenu where AMember.pNum&selectMenu.pnum=?";
		try {
			pst = cn.prepareStatement(sql);
			pst.setString(1, vo.getpNum());
			rs=pst.executeQuery();
			if (rs.next()) {
				vo.setName(rs.getString(1));
				vo.setpNum(rs.getString(2));
				vo.setMenu(rs.getString(3));
			}else vo=null;
		} catch (Exception e) {
			System.out.println("** selectOne Exception => "+e.toString());
			vo=null;
		}//catch
		return vo;
	}//selectOne
	
	
	public List<AMemberJoinsMenuVO> resultDetail(AMemberJoinsMenuVO vo) {
		
		sql="select name from Amember, selectMenu where amember.pnum=selectmenu.pnum and menu=?";
		List<AMemberJoinsMenuVO> list = new ArrayList<AMemberJoinsMenuVO>();
		try {
			pst = cn.prepareStatement(sql);
			pst.setString(1, vo.getMenu());
			rs=pst.executeQuery();
			if (rs.next()) {
				do {
					AMemberJoinsMenuVO sv = new AMemberJoinsMenuVO();
					sv.setName(rs.getString(1));
					list.add(sv);
				} while (rs.next());
			}else list=null;
		} catch (Exception e) {
			System.out.println("** selectOne Exception => "+e.toString());
			list=null;
		}//catch
		return list;
	}//selectOne
}
