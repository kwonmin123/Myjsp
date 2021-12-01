package jdbc10.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import jdbc10.bean.Employee;

public class EmployeeDao {

	public List<Employee> getListByNotesKeyword(Connection con, String keyword) {
		List<Employee> list = new ArrayList<Employee>();
		String sql = "SELECT employeeID, lastName, firstName, notes, birthDate "
				+ "FROM Employees "
				+ "WHERE notes LIKE ? "
				+ "     OR firstName LIKE ? "
				+ "     OR lastName LIKE ? ";
		
		try (PreparedStatement pstmt = con.prepareStatement(sql)) {
			pstmt.setString(1, "%" + keyword + "%");
			try (ResultSet rs = pstmt.executeQuery()) {
				while (rs.next()) {
					Employee emp = new Employee();
					emp.setEmployeeID(rs.getInt("employeeID"));
					emp.setFirstName(rs.getString("firstName"));
					emp.setLastName(rs.getString("lastName"));
					emp.setNotes(rs.getString("notes"));
					emp.setBirthDate(rs.getDate("birthDate").toLocalDate());
					
					list.add(emp);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

}
