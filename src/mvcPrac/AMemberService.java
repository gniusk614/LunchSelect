package mvcPrac;

import java.util.List;
import java.util.Scanner;

import mvcTest.StudentVO;

public class AMemberService {
	private AMemberDAO dao = new AMemberDAO();
	private AMemberVO vo = new AMemberVO();
	
	// ** Service 역할
	// Controller 의 요청을 처리한 후 결과를 제공
	public List<AMemberVO> selectList() {
		return dao.selectList();
	}
	
	
	
	public AMemberVO selectOne(AMemberVO vo) {
		return dao.selectOne(vo);
	}

	public int insert(String name, String pNum, String pw) {
		
		vo.setName(name);
		vo.setpNum(pNum);
		vo.setPw(pw);
		int count = dao.insert(vo);
		return count;
	}//insert

}//class
