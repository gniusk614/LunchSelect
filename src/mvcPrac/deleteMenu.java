package mvcPrac;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deletemenu")
public class deleteMenu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public deleteMenu() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter(); 	
		
		AMemberVO aVo = (AMemberVO)request.getSession().getAttribute("vo");
		String pnum = aVo.getpNum();
		String uri = null ;
		
		selectMenuVO vo = new selectMenuVO();
		selectMenuService service = new selectMenuService();
		
		int count = service.delete(pnum);
		
		if(count==1) {
			request.getSession().setAttribute("vo", aVo);
			request.getSession().setAttribute("selectmenu",vo);
			request.setAttribute("message", "메뉴 초기화가 완료되었습니다.");
		}else request.setAttribute("message", "초기화할 메뉴가 없습니다.");

		request.getRequestDispatcher("/myinfo").forward(request, response); 
		
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
