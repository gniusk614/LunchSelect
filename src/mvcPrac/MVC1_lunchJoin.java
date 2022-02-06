package mvcPrac;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lunchjoin")
public class MVC1_lunchJoin extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public MVC1_lunchJoin() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AMemberService service = new AMemberService();
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String pNum1 = request.getParameter("pNum1");
		String pNum2 = request.getParameter("pNum2");
		String pNum3 = request.getParameter("pNum3");
		String pw = request.getParameter("pw");
		String pw2 = request.getParameter("pw2");
		String pNum = pNum1+pNum2+pNum3;
		

	
		if (!pw.equals(pw2)) {
			out.println("<script>alert('비밀번호와 비밀번호 확인이 일치하지 않습니다.');history.back(-1);</script>\n");
		}else if(!name.equals("") && !pNum1.equals("") && !pNum2.equals("") && !pNum3.equals("") && !pw.equals("")) {
			pNum = pNum1+pNum2+pNum3;
			int count = service.insert(name, pNum, pw);
			if(count==1) {
				out.println("<script>alert('가입이 완료되었습니다. 로그인해주세요');location.href='/Web01/cssHtmlTest/myPage2.html';</script>\n");
			}else out.println("<script>alert('이미 가입정보가 있습니다.');history.back(-1);</script>\n");
		}
		else {
			out.println("<script>alert('정보를 빠짐 없이 입력해주세요');history.back(-1);</script>\n");
		}
		
		
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
