package mvcPrac;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/resultdetail")
public class resultDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public resultDetail() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		List<AMemberJoinsMenuVO> list = new ArrayList<AMemberJoinsMenuVO>();
		AMemberJoinsMenuVO vo = new AMemberJoinsMenuVO();
		AMemberJoinsMenuService service = new AMemberJoinsMenuService();
		
		if (request.getParameter("menu")!=null) {
		vo.setMenu(request.getParameter("menu"));}
		
		list = service.resultDetail(vo);

		if (list!=null) {
			request.getSession().setAttribute("menu", request.getParameter("menu"));
			request.getSession().setAttribute("resultlist", list);
		}else {
			request.setAttribute("message", "투표한 사람이 없습니다.");
		}
		
		request.getRequestDispatcher("/lunchjsp/adminResultDetail.jsp").forward(request, response);
		

		
		
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
