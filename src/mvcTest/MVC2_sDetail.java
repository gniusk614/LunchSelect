package mvcTest;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/02sdetail")
public class MVC2_sDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MVC2_sDetail() {
        super();
    } //생성자
// *** MVC2
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1) 요청분석
		String idno = request.getParameter("idno");
		// 2) 서비스처리
		StudentVO vo = new StudentVO();
		StudentService service = new StudentService();
		vo.setIdno(idno);
		vo = service.selectOne(vo);
		// 2) 결과 출력 
		// => View 가 자료를 출력할 수 있도록 메모리에 저장 (setAttribute)
		// => View 를 담당하는 JSP 에게 맡김
		request.setAttribute("apple", vo);
	
		request.getRequestDispatcher("mvcTest_jsp/mvc2_04sDetailJSTL.jsp").forward(request, response);
		// => mvcTest_jsp/mvc2_02sDetail.jsp ->Java 스크립트 적용
		// => mvcTest_jsp/mvc2_03sDetail.jsp -> EL적용 
		// => mvcTest_jsp/mvc2_03sDetailJSTL.jsp -> JSTL 적용 
	} //doGet

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	} //doPost

} //class
