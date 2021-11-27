package jdbc08;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.Timestamp;
import java.util.List;

public class MyTable10Dao {


	public boolean insert(Connection con, Bean10 bean) {
		// TODO Auto-generated method stub
		String sql = "INSERT INTO mytable10 (col1, col2, col3, col4, col5, col6, col7) "
				+ "VALUE (?, ?, ?, ?, ?, ?, ?)";

		try (PreparedStatement pstm = con.prepareStatement(sql)){
		
		pstm.setInt(1,bean.getCol1());	
		pstm.setDouble(2,bean.getCol2());	
		pstm.setDouble(3,bean.getCol3());	
		pstm.setString(4,bean.getCol4());	
		pstm.setString(5,bean.getCol5());	
		pstm.setDate(6,Date.valueOf(bean.getCol6()));	
		pstm.setTimestamp(7,Timestamp.valueOf(bean.getCol7()));	
		int cnt=pstm.executeUpdate();
		
		return cnt==1;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return false;
	}

	public List<Bean10> getList(Connection con) {
		// TODO Auto-generated method stub
		return null;
	}

}
