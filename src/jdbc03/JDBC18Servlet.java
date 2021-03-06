package jdbc03;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import jdbc02.bean.Customer;

/**
 * Servlet implementation class JDBC17Servlet
 */
@WebServlet("/jdbc03/s18")
public class JDBC18Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public JDBC18Servlet() {
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
		List<Customer> list = new ArrayList<>();
		List<String> countryList = new ArrayList<>();

		// 2. request 분석/가공
		String country = request.getParameter("country");

		// 3. business logic
		
		// 3.1 - 공급자 국가 조회
		String sql2 = "SELECT DISTINCT Country FROM Customers ORDER BY Country";
		
		try (Connection con = ds.getConnection();
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql2);
				) {
			
			while (rs.next()) {
				countryList.add(rs.getString(1));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 3.2 - 공급자들 조회
		String sql = "SELECT CustomerID, CustomerName, ContactName, Address, City," + " PostalCode, Country  "
				+ "FROM Customers WHERE Country = ?";
		if(country!=null) {
			if(country.equals("all")) {sql+="OR 1=1";}
		}
		try (Connection con = ds.getConnection(); PreparedStatement stmt = con.prepareStatement(sql);) {

			stmt.setString(1, country);
			try (ResultSet rs = stmt.executeQuery()) {

				while (rs.next()) {
					Customer custom = new Customer();

					int i = 1;
					custom.setCustomerID(rs.getInt(i++));
					custom.setCustomerName(rs.getString(i++));
					custom.setContactName(rs.getString(i++));
					custom.setAddress(rs.getString(i++));
					custom.setCity(rs.getString(i++));
					custom.setPostalCode(rs.getString(i++));
					custom.setCountry(rs.getString(i++));
					list.add(custom);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		// 4. add attribute
		request.setAttribute("countryList", countryList);
		request.setAttribute("customers", list);

		// 5. forward
		String path = "/WEB-INF/view/jdbc03/v18.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
