package mvcPrac;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/result")
public class result extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public result() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		List<resultVO> list = new ArrayList<resultVO>();
		todayMenuService service = new todayMenuService();
		AMemberVO vo = new AMemberVO();
		
		list = service.result();

		if (list!=null) {
			request.getSession().setAttribute("result", list);
		}else {
			request.setAttribute("message", "입력 되어있는 메뉴가 없습니다.");
		}
		request.getRequestDispatcher("/lunchjsp/adminResult.jsp").forward(request, response);
		

		
		
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
