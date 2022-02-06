package mvcPrac;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/myinfo")
public class myInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public myInfo() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		
		AMemberVO vo = new AMemberVO();
		AMemberJoinsMenuVO avo = new AMemberJoinsMenuVO();
		AMemberService service = new AMemberService();
		AMemberJoinsMenuService aService = new AMemberJoinsMenuService();
		
		vo = (AMemberVO) request.getSession().getAttribute("vo");
		avo = (AMemberJoinsMenuVO)request.getSession().getAttribute("avo");
		
		vo = service.selectOne(vo);
		avo = aService.selectOne(avo);
		
		request.getSession().setAttribute("avo", avo);
		request.getSession().setAttribute("vo",vo);
		request.getRequestDispatcher("/lunchjsp/lunchmyinfo.jsp").forward(request, response); 
		
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
