package mvcPrac;

import java.util.List;

public class AMemberJoinsMenuService {
	private AMemberJoinsMenuDAO dao = new AMemberJoinsMenuDAO();
	private AMemberJoinsMenuVO vo = new AMemberJoinsMenuVO();
	
	
	public AMemberJoinsMenuVO selectOne(AMemberJoinsMenuVO vo) {
		return dao.selectOne(vo);
	}
	
	public List<AMemberJoinsMenuVO> resultDetail(AMemberJoinsMenuVO vo) {
		return dao.resultDetail(vo);
	}
}
