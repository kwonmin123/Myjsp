package servlet07;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class S05AddServlet
 */
@WebServlet("/S07todo/add")
public class S05AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public S05AddServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = "/WEB-INF/view/servlet07/s02add.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		List<String> list = (List<String>) session.getAttribute("todoList");
		if (list == null) {
			list = new ArrayList<>();
			session.setAttribute("todoList", list);
		}

		// 2. request 파라미터 분석/가공
		String todo = request.getParameter("todo");
		todo = todo == null ? "" : todo;

		// 3. business logic
		if (!todo.isEmpty()) {
			list.add(todo);
		}

		// 4. attribute 추가


		// 5. forward/redirect
		String path = request.getContextPath() + "/S07todo/list";
		response.sendRedirect(path);
	}

}