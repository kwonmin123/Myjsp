package jdbc08;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class MyTable11Dao {

	public List<Bean11> getList(Connection con) {
		List<Bean11> list = new ArrayList<Bean11>();
		String sql="SELECT name, age, birth FROM mytable11";
		
		try(PreparedStatement pstm = con.prepareStatement(sql)) {
			ResultSet rs = pstm.executeQuery();
			while(rs.next()) {
				Bean11 bean  = new Bean11();
				bean.setName(rs.getString("name"));
				bean.setAge(rs.getInt("age"));
				bean.setBirth(rs.getDate("birth").toLocalDate());
				
				list.add(bean);
				
			}
			
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		
		
 		return list;
	}



	public boolean insert(Connection con, Bean11 bean) {
		// TODO Auto-generated method stub
		
		String sql = "INSERT INTO mytable11 (name, age, birth) VALUES (?, ?, ?)";

		
		
		try (PreparedStatement pstm = con.prepareStatement(sql)){
			pstm.setString(1, bean.getName());
			pstm.setInt(2, bean.getAge());
			pstm.setDate(3, Date.valueOf(bean.getBirth()));
			int cnt =pstm.executeUpdate();
			return cnt==1;
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		return false;
	}

}
