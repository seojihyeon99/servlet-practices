package guestbook.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import guestbook.dao.GuestbookDao;
import guestbook.vo.GuestbookVo;

@WebServlet("/gb") // 여러 개 URI와 매핑하는 경우, 중괄호({})에 콤마(,)로 구분하여 쓸 수 있음
public class GuestbookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String action = request.getParameter("a");
		if("add".equals(action)) {
			String name = request.getParameter("name");
			String password = request.getParameter("password");
			String contents = request.getParameter("contents");
		
			GuestbookVo vo = new GuestbookVo();
			vo.setName(name);
			vo.setPassword(password);
			vo.setContents(contents);

			new GuestbookDao().insert(vo);
			
			response.sendRedirect("/guestbook02/gb");
		} else if("deleteform".equals(action)) {
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/deleteform.jsp");
			rd.forward(request, response); // 서버 내부에서 특정 리소스로 요청을 전달하는 작업을 수행			
		} else if("delete".equals(action)) {
			Long id = Long.parseLong(request.getParameter("id"));
			String password = request.getParameter("password");
			
			new GuestbookDao().deleteByIdAndPassword(id, password);
			
			response.sendRedirect("/guestbook02/gb");			
		} else {
			List<GuestbookVo> list = new GuestbookDao().findAll();

			// jsp(View)와 servlet(Controller)이 공유하는 객체는 request임
			// AttributeMap, ParameterMap
			request.setAttribute("list", list);
			
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/index.jsp");
			rd.forward(request, response); // 서버 내부에서 특정 리소스로 요청을 전달하는 작업을 수행
			
			// Flow 끝난 다음에는 코드 안넣는게 좋다. (이미 브라우저에서 렌더링 하고 있음...)
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
