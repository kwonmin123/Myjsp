package jdbc06;

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

import jdbc02.bean.Supplier;
import jdbc04.dao.SupplierDAO;

/**
 * Servlet implementation class JDBC27Servlet
 */
@WebServlet("/jdbc06/s28")
public class JDBC28Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public JDBC28Servlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 0. 사전작업
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		SupplierDAO dao = new SupplierDAO();
		Supplier sp = null;
		List<String> countryList = null;

		// 2. request parameter 분석/가공
		String idStr = request.getParameter("id");
		int spID = Integer.parseInt(idStr);

		// 3. business logic
		try (Connection con = ds.getConnection()) {
			sp = dao.selectById(con, spID);
			countryList = dao.getCountryList(con);
		} catch (Exception e) {
			e.printStackTrace();
		}

		// 4. add attribute
		request.setAttribute("supplier", sp);
		request.setAttribute("countryList", countryList);

		// 5. forward
		String path = "/WEB-INF/view/jdbc06/v28.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 0. 사전 작업
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		SupplierDAO dao = new SupplierDAO();
		boolean ok = false;

		// 2. request 분석/가공
		String supplierName = request.getParameter("supplierName");
		String contactName = request.getParameter("contactName");
		String city = request.getParameter("city");
		String country = request.getParameter("country");
		String address = request.getParameter("address");
		String postalCode = request.getParameter("postalCode");
		String phone = request.getParameter("phone");
		int supplierID = Integer.parseInt(request.getParameter("supplierID"));
		
		Supplier supplier = new Supplier();
		supplier.setSupplierName(supplierName);
		supplier.setContactName(contactName);
		supplier.setCity(city);
		supplier.setCountry(country);
		supplier.setAddress(address);
		supplier.setPostalCode(postalCode);
		supplier.setPhone(phone);
		supplier.setSupplierID(supplierID);

		// 3. business logic
		try (Connection con = ds.getConnection()) {
			ok = dao.update(con, supplier);
		} catch (Exception e) {
			e.printStackTrace();
		}

		// 4. add attribute

		// 5. forward / redirect
	}

}
