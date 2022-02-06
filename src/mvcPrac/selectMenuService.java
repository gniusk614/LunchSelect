package mvcPrac;

import java.util.List;
import java.util.Scanner;

public class selectMenuService {
	private selectMenuDAO dao = new selectMenuDAO();
	private selectMenuVO vo = new selectMenuVO();
	Scanner sc = new Scanner(System.in);


	public int insert(String pnum, String menu) {
		
		vo.setpNum(pnum);
		vo.setMenu(menu);
		int count = dao.insert(vo);
		return count;
	}//insert

	public int delete(String pnum) {
		
		vo.setpNum(pnum);
		int count = dao.delete(vo);
		return count;
	}//insert
	
	public int deleteAll() {
		return dao.deleteAll();
	}
	
}//class
