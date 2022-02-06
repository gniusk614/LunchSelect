package mvcTest;

import java.util.List;

public class StudentService {
	// 전역변수 정의
	private StudentDAO dao = new StudentDAO();
	private StudentVO vo = new StudentVO();
	
	// Controller의 요청을 처리한 후 결과를 제공
	public List<StudentVO> selectList() {
		return dao.selectList();
	} //selectList()
	
	public StudentVO selectOne(StudentVO vo) {
		return dao.selectOne(vo);	
	} //selectOne()
	
	public void insert() {
		vo.setIdno("890528-2659884");
		vo.setName("김그린");
		vo.setGender("여");
		vo.setAge(33);
		vo.setJava(88);
		vo.setHtml(77);
		// 필요하지 않으면 변수 count를 반드시 선언할 필요는 없다
		int count = dao.insert(vo);
		if(count>0) {	// insert 성공
			System.out.println("** 입력 성공 **");
		} else // insert 실패
			System.out.println("** 입력 실패 **");
	} //insert()
	
	//update => name, java, html 수정한다고 가정
	public void update() {
		vo.setIdno("890528-2659884");
		vo.setName("박나라");
		vo.setJava(80);
		vo.setHtml(90);
		if(dao.update(vo)>0) {
			System.out.println("** 수정 성공 **");
		} else 
			System.out.println("** 수정 실패 **");
	}// update()
	
	public void delete() {
		vo.setIdno("890528-2659884");
		if(dao.delete(vo)>0) {
			System.out.println("** 삭제 성공 **");
		} else
			System.out.println("** 삭제 실패 **");
	} //delete()

} //class
