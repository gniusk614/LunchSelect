package mvcPrac;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalTime;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/selectmenu")
public class selectMenu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public selectMenu() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter(); 	
		
		
		
		AMemberVO avo = (AMemberVO)request.getSession().getAttribute("vo");
		String pnum = avo.getpNum();
		String menu = request.getParameter("menu");
		String uri = null ;
		
		System.out.println(pnum);
		System.out.println(menu);
		
		selectMenuService service = new selectMenuService();
		AMemberJoinsMenuService aService = new AMemberJoinsMenuService();
		
		
		
		int count = service.insert(pnum,menu);
		
		AMemberJoinsMenuVO ajvo = new AMemberJoinsMenuVO();
		ajvo.setpNum(avo.getpNum());
		ajvo = aService.selectOne(ajvo);

		
		if(count==1) {
			request.getSession().setAttribute("vo", avo);
			request.getSession().setAttribute("avo", ajvo);
			request.setAttribute("message", "메뉴 선택을 완료했습니다.");
			request.getRequestDispatcher("/myinfo").forward(request, response); 
		}else {
			out.println("<script>alert('이미 메뉴를 선택하셨습니다.');history.back(-1);</script>\n");
		}

		
		
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
