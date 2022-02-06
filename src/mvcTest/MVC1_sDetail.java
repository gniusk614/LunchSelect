package mvcTest;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/sdetail")
public class MVC1_sDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MVC1_sDetail() {
        super();
    } //생성자

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1) 요청분석
		// get방식, utf-8 생략가능
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String idno = request.getParameter("idno");
		PrintWriter out = response.getWriter();
		// 2) 서비스처리
		StudentVO vo = new StudentVO();
		StudentService service = new StudentService();
		vo.setIdno(idno);
		vo = service.selectOne(vo);
		// 3) 결과출력(View)
		out.print("<h2>** Student Detail 조회 **</h2>");
		if(vo != null) {
			out.print("<pre><h3>");
			out.println("- idno : "+vo.getIdno());
			out.println("- name : "+vo.getName());
			out.println("- gender : "+vo.getGender());
			out.println("- age : "+vo.getAge());
			out.println("- java : "+vo.getJava());
			out.println("- html : "+vo.getHtml());
			out.print("</h3></pre>");
		} else out.println("=> "+idno+"에 해당하는 자료가 없습니다");		
	} //doGet

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	} //doPost

} //class
