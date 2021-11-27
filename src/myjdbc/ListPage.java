package myjdbc;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import jdbc02.bean.Customer;
import jdbc04.dao.CustomerDAO;

/**
 * Servlet implementation class ListPage
 */
@WebServlet("/jsp/customerlist-applist")
public class ListPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListPage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool"); // 연결들을 가지고 있는 객체
		List<Customer> list = null;		
		CustomerDAO dao = new CustomerDAO();
		
		try (Connection con =ds.getConnection()){
			list =dao.getCustomerList(con);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		request.setAttribute("list", list);
		String path = "/WEB-INF/view/CustomerListApp/ListPage.jsp";
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
