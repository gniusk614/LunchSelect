package mvcPrac;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lunchlogin")
public class LunchLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LunchLogin() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String pnum = request.getParameter("pnum");
		String pw = request.getParameter("pw");
		String uri = null ;
		
		
		AMemberVO vo = new AMemberVO();
		AMemberJoinsMenuVO aVo = new AMemberJoinsMenuVO();
		AMemberService service = new AMemberService();
		AMemberJoinsMenuService aService = new AMemberJoinsMenuService();
		
//		if(pnum.equals("admin") && pw.equals("123123")) {
//			vo.setpNum(pnum);
//			vo.setPw(pw);
//			vo=service.selectOne(vo);
//			request.getSession().setAttribute("admin", vo);
//			uri="/lunchjsp/adminMainHome.jsp";
//			request.getRequestDispatcher(uri).forward(request, response); return;
//		}
		
		
		vo.setpNum(pnum);
		vo.setPw(pw);
		vo = service.selectOne(vo);
		
		if(vo!=null && vo.getpNum().equals("admin") && vo.getPw().equals(pw)) {
			request.getSession().setAttribute("vo", vo);
			System.out.println(vo.getName()+"접속중");
			uri="/lunchjsp/adminMainHome.jsp";
		}
		else if(vo!=null && vo.getPw().equals(pw)) {
			request.getSession().setAttribute("vo", vo);
			aVo.setpNum(pnum);
			aVo = aService.selectOne(aVo);
			request.getSession().setAttribute("avo", aVo);
			System.out.println(vo.getName()+"접속중");
			uri="/lunchjsp/mainHomeJsp.jsp";
		}else {
			PrintWriter out = response.getWriter(); 
			  out.println("<script>alert('이름과 비밀번호를 다시 확인해주세요');history.back(-1);</script>\n");
		}
		
		request.getRequestDispatcher(uri).forward(request, response); 
		
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
