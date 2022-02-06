package mvcTest;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/slist")
public class MVC1_sList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MVC1_sList() {
        super();
    }
    // ** sList 요청
    // => MVC 패턴1 : View, controller 가 분리되지 않은 유형
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1) 요청분석 & Service 처리 => Controller 역할
		StudentService service = new StudentService();
		List<StudentVO> list = new ArrayList<StudentVO>();
		list = service.selectList();
		 
		// 2) 결과 출력 => View 역할
		response.setContentType("text/html; charset=UTF-8;");
		PrintWriter out = response.getWriter();
		out.print("<html><body>");
		out.print("<h2> Student List **</h2>");
		if (list != null) {
			for (StudentVO s : list) {
				out.print(s+"<br>");
			}
		}else out.print("출력할 자료가 없습니다.");
		out.print("</body></html>");
		
	}//doGet

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}//doPost

}//Class
