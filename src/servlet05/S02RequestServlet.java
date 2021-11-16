package servlet05;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class S01RequestServlet
 */
@WebServlet("/servlet05/s02")
public class S02RequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S02RequestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 2. request 분석, request parameter 처리/가공
		String param = request.getParameter("country");
		
		// 3. business logic
		List<String> list = new ArrayList<>();
		String title = "";
		if (param.equals("미국")) {
			// 여행관련일.
			list.add("N.Y");
			list.add("L.A");
			
			title = "미국";
		} else if (param.equals("한국")) {
			// 음식관련일.
			list.add("Seoul");
			list.add("Busan");
			
			title = "한국";
		}
		
		// 4. set attribute
		request.setAttribute("country", title);
		request.setAttribute("cities", list);
		
		// 5. forward
		String path = "/WEB-INF/view/servlet05/s02.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
