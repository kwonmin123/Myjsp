package jdbc05;

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
 * Servlet implementation class JDBC23Servlet
 */
@WebServlet("/jdbc05/s32-1")
public class JDBC23Servlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public JDBC23Servlet2() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext application = request.getServletContext();
		DataSource ds=(DataSource)application.getAttribute("dbpool");
		CustomerDAO dao = new CustomerDAO();
		List<String> list = null;

		//3. business 로직
		try(Connection con = ds.getConnection()){
			list = dao.getCountryList(con);
		} catch (Exception e) {
			e.printStackTrace();
		}

		request.setAttribute("countryList", list);
		String path ="/WEB-INF/view/jdbc05/v23.jsp";

		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource)application.getAttribute("dbpool");
		CustomerDAO dao = new CustomerDAO();
		boolean ok = false;
		String cn1 =request.getParameter("customerName");
		String cn2 =request.getParameter("contactName");
		String ad =request.getParameter("address");
		String city =request.getParameter("city");
		String pc =request.getParameter("postalCode");
		String contry =request.getParameter("country");
		
		
		
		// 2. request 분석 가공
		Customer cm = new Customer();
		cm.setCustomerName(cn1);
		cm.setContactName(cn2);
		cm.setAddress(ad);
		cm.setCity(city);
		cm.setPostalCode(pc);
		cm.setCountry(contry);
		
		
		
		
		
		// 3. business 로직
		try (Connection con = ds.getConnection()) {
			ok = dao.insert(con, cm); // oooo
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	

}
