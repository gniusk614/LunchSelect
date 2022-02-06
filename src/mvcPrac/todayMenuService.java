package mvcPrac;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class todayMenuService {
	private todayMenuDAO dao = new todayMenuDAO();
	private todayMenuVO vo = new todayMenuVO();
	private selectMenuService smService = new selectMenuService();
	Scanner sc = new Scanner(System.in);
	
	// ** Service 역할
	// Controller 의 요청을 처리한 후 결과를 제공
	public todayMenuVO sDetail() {
		vo = dao.selectList();

		return dao.selectList();
	}

	public int insert(todayMenuVO vo) {
		smService.deleteAll();
		int count = dao.insert(vo);
		return count;
	}//insert
	
	public List<resultVO> result(){
		
		
		return dao.result();
	}
	
	
}//class
