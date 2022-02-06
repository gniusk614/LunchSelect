package mvcPrac;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/todaymenuinsert")
public class todayMenuInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public todayMenuInsert() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		todayMenuVO vo = new todayMenuVO();
		todayMenuService service = new todayMenuService();
		PrintWriter out = response.getWriter(); 
		
		String menu1 = request.getParameter("menu1");
		String menu2 = request.getParameter("menu2");
		String menu3 = request.getParameter("menu3");
		String menu4 = request.getParameter("menu4");
		
		
		vo.setMenu1(menu1);
		vo.setMenu2(menu2);
		vo.setMenu3(menu3);
		vo.setMenu4(menu4);

		
		
		int count = service.insert(vo);
		vo = service.sDetail();
		if (count>0) {
			request.getSession().setAttribute("todaymenu", vo);
			request.getRequestDispatcher("/lunchjsp/adminlunchselect.jsp").forward(request, response); 
		}else {
			out.println("<script>alert('메뉴 설정에 실패했습니다.');history.back(-1);</script>\n");
		}		
		

		
		
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
