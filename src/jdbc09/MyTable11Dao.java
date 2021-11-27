package jdbc09;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;

public class MyTable11Dao {

	public boolean insert(Connection con, Bean11 bean) {
		// TODO Auto-generated method stub
		String sql = "INSERT INTO mytable11 (name, age, birth) "
		+ "VALUE (?, ?, ?)";

		
		try (PreparedStatement pstm = con.prepareStatement(sql)){

			pstm.setString(1, bean.getName());
			pstm.setInt(2, bean.getAge());
			pstm.setDate(3, Date.valueOf(bean.getDate()));
			
			int cnt= pstm.executeUpdate();
			
			return cnt==1;
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return false;
	}

}
