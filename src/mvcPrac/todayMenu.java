package mvcPrac;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalTime;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/todaymenu")
public class todayMenu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public todayMenu() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		AMemberVO aVo = (AMemberVO) request.getSession().getAttribute("vo");
		todayMenuVO vo = new todayMenuVO();
		todayMenuService service = new todayMenuService();
		String uri ="";
		
		
		LocalTime now = LocalTime.now();
		LocalTime limit = LocalTime.of(12, 30, 00);
		
//		int limitHour = limit.getHour()-now.getHour();
//		int limitMin = limit.getMinute()-now.getMinute();
		
		
		
		int time = (now.getHour()*60+now.getMinute())*60+now.getSecond();
		int limitTime = (limit.getHour()*60+limit.getMinute())*60+limit.getSecond();
		
		System.out.println(time);
		System.out.println(limitTime);
		if ((limitTime-time)<=0) {
					uri="/lunchjsp/dislunchselect.jsp";
					vo = service.sDetail();
					
					if (vo!=null) {
						request.setAttribute("todaymenu", vo);
						request.getSession().setAttribute("aVo", aVo);
					}else {
						request.setAttribute("message", "입력 되어있는 메뉴가 없습니다.");
					}
					request.getRequestDispatcher(uri).forward(request, response);
				}
		else {
			vo = service.sDetail();
			if (vo!=null) {
				request.setAttribute("todaymenu", vo);
				request.getSession().setAttribute("aVo", aVo);
			}else {
				request.setAttribute("message", "입력 되어있는 메뉴가 없습니다.");
			}
			uri="/lunchjsp/lunchselect.jsp";
			request.getRequestDispatcher(uri).forward(request, response);
		}

		
		
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
