package jdbc04.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import jdbc02.bean.Supplier;

public class SupplierDAO {

	public List<String> getCountryList(Connection con) {
		List<String> list = new ArrayList<>();
		String sql = "SELECT DISTINCT Country FROM Suppliers ORDER BY Country";

		try (Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql);) {

			while (rs.next()) {
				list.add(rs.getString(1));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	public List<Supplier> getSupplierListByCountry(Connection con, String country) {
		List<Supplier> list = new ArrayList<>();
		String sql = "SELECT SupplierID, SupplierName, ContactName, Address, City," + " PostalCode, Country, Phone  "
				+ "FROM Suppliers WHERE Country = ?";

		try (PreparedStatement stmt = con.prepareStatement(sql);) {

			stmt.setString(1, country);
			try (ResultSet rs = stmt.executeQuery()) {

				while (rs.next()) {
					Supplier sup = new Supplier();

					int i = 1;
					sup.setSupplierID(rs.getInt(i++));
					sup.setSupplierName(rs.getString(i++));
					sup.setContactName(rs.getString(i++));
					sup.setAddress(rs.getString(i++));
					sup.setCity(rs.getString(i++));
					sup.setPostalCode(rs.getString(i++));
					sup.setCountry(rs.getString(i++));
					sup.setPhone(rs.getString(i++));

					list.add(sup);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	public boolean insert(Connection con, Supplier sp) {
		String sql = "INSERT INTO Suppliers (SupplierName, ContactName, Address, City, PostalCode, Country, Phone) "
				+ "VALUES (?, ?, ?, ?, ?, ?, ?) ";
		boolean ok = false;
		try(PreparedStatement pstm = con.prepareStatement(sql)){
			int i =1;

			pstm.setString(i++, sp.getSupplierName());
			pstm.setString(i++, sp.getContactName());
			pstm.setString(i++, sp.getAddress());
			pstm.setString(i++, sp.getCity());
			pstm.setString(i++, sp.getPostalCode());
			pstm.setString(i++, sp.getCountry());
			pstm.setString(i++, sp.getPhone());
			ok= pstm.executeUpdate()==1;

		} catch (Exception e) {
			e.printStackTrace();
		}



		return ok;
	}

	public boolean update(Connection con, Supplier supplier) {
		// TODO Auto-generated method stub
		int rowCount =0;
		String sql = "UPDATE Suppliers " +
				"SET  " +
				"	SupplierName = ?, " +
				"    ContactName = ?, " +
				"    Address = ?, " +
				"    City = ?, " +
				"    PostalCode = ?, " +
				"    Country = ?, " +
				"    Phone = ? " +
				"WHERE " +
				"    SupplierID = ? ";

		try (PreparedStatement pstm = con.prepareStatement(sql)){
			int i= 1;
			pstm.setString(i++, supplier.getSupplierName());
			pstm.setString(i++, supplier.getContactName());
			pstm.setString(i++, supplier.getAddress());
			pstm.setString(i++, supplier.getCity());
			pstm.setString(i++, supplier.getPostalCode());
			pstm.setString(i++, supplier.getCountry());
			pstm.setString(i++, supplier.getPhone());
			pstm.setInt(i++, supplier.getSupplierID());


			rowCount=pstm.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
		}




		return rowCount==1;
	}

	public Supplier selectById(Connection con, int spID) {
		String sql = "SELECT SupplierName, ContactName, Address, City, "
				+ "          PostalCode, Country, Phone "
				+ "FROM Suppliers "
				+ "WHERE SupplierID = ?";
		
		Supplier sp = new Supplier();
		try (PreparedStatement pstmt = con.prepareStatement(sql)) {
			pstmt.setInt(1, spID);
			
			try (ResultSet rs = pstmt.executeQuery()) {
				if (rs.next()) {
					String supplierName = rs.getString("SupplierName");
					String contactName = rs.getString("ContactName");
					String address = rs.getString("Address");
					String city = rs.getString("City");
					String postalCode = rs.getString("PostalCode");
					String country = rs.getString("Country");
					String phone = rs.getNString("Phone");
					
					sp.setSupplierID(spID);
					sp.setSupplierName(supplierName);
					sp.setContactName(contactName);
					sp.setAddress(address);
					sp.setCity(city);
					sp.setPostalCode(postalCode);
					sp.setCountry(country);
					sp.setPhone(phone);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		return sp;
	}

	public boolean deleteById(Connection con, int supplierID) {

		String sql ="DELETE FROM Suppiers WHERE SupplierID = ?";
		try (PreparedStatement pstm = con.prepareStatement(sql)){
			pstm.setInt(1, supplierID);
			int cnt =pstm.executeUpdate();
			
			return cnt==1;
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return false;
	}
	

	//public boolean insert(Connection con, Supplier supplier) {
	//		String sql = "INSERT INTO Suppliers (SupplierName, ContactName, Address, City, PostalCode, Country, Phone) "
	//				+ "VALUES (?, ?, ?, ?, ?, ?, ?) ";
	//		boolean ok = false;
	//		
	//		try (PreparedStatement pstmt = con.prepareStatement(sql)) {
	//			
	//			// 물음표 채우기
	//			int i = 1;
	//			pstmt.setString(i++, supplier.getSupplierName());
	//			pstmt.setString(i++, supplier.getContactName());
	//			pstmt.setString(i++, supplier.getAddress());
	//			pstmt.setString(i++, supplier.getCity());
	//			pstmt.setString(i++, supplier.getPostalCode());
	//			pstmt.setString(i++, supplier.getCountry());
	//			pstmt.setString(i++, supplier.getPhone());
	//			
	//			ok = pstmt.executeUpdate() == 1;
	//			
	//		} catch (Exception e) {
	//			e.printStackTrace();
	//		}
	//		
	//		return ok;
	//	}

}

















