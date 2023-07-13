package db_dao;
// 연산 접근

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import db_common.DBConnect;
import db_dto.NewStDTO;

public class NewStDAO {
	Connection con;
	PreparedStatement ps;
	ResultSet rs;

	public NewStDAO() {
		con = DBConnect.getConnect();
	}

	public ArrayList<NewStDTO> getList() {
		ArrayList<NewStDTO> list = new ArrayList<>();
		String sql = "select * from newst";
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				// 여기서는 리스트값을 저장만하고 출력하진 않는다.

				NewStDTO dto = new NewStDTO();
				dto.setId(rs.getString("id"));
				dto.setName(rs.getString("name"));
				dto.setAge(rs.getInt("age"));

				list.add(dto); // 위의 결과값을 리스트에 저장하겠다.

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	public NewStDTO search(String id) {
		NewStDTO dto = null; // 데이터가 없으면 dto는 null값을 갖게된다.
		// "select * from newst where id = '아이디'";
		String sql = "select * from newst where id = '" + id + "'";
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if (rs.next()) { // 한명에 대한 정보니까 if 혹은 while을 써도 상관없다.
				dto = new NewStDTO(rs.getString("id"), rs.getString("name"), rs.getInt("age"));
				// -> setter 를 호출할필요없이 값을 바로 가져올 수 있다

				/*
				 * dto = new NewStDTO(); dto.setId(rs.getString("id"));
				 * dto.setName(rs.getString("name")); dto.setAge(rs.getInt("age"));
				 */
			}

		} catch (Exception e) {
			e.printStackTrace(); // 어떤 에러가 발생하는지 출력
		}
		// System.out.println("dto : "+dto);
		return dto;

	}

	public int insert(NewStDTO dto) {
		// DBServiceImpl 에서 넘어올때 return 에 dto 덩어리 하나만 넘겨줘서
		// 받아오는 값도 하나만 입력하면 된다.
		String sql = "insert into newst values(?,?,?)";
		// ? 의 의미는 나중에 값을 채우겠다는 의미
		int result = 0;
		try {
			ps = con.prepareStatement(sql);
			
			ps.setString(1, dto.getId());
			ps.setString(2, dto.getName());
			ps.setInt(3, dto.getAge());
			/*
			Query: select에서만 Query를 사용한다. 결과값이 resultSet
			Update : select 를 제외한 모든 명령어에서 사용한다.
			*/
			result = ps.executeUpdate();
			//return 1;
		} catch (Exception e) {
			e.printStackTrace();
			
		}return result;
	}
	
	public int delete(String id) {
		int result = 0;
		String sql = "delete from newst where id = ?";
		try {
			ps=con.prepareStatement(sql);
			ps.setString(1, id);
			result = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public int modify(NewStDTO d) {
		String sql =
				"update newst set name =?,age=? where id =?";
		int result =0;
		try {
			ps= con.prepareStatement(sql);
			ps.setString(1,d.getName());
			ps.setInt(2,d.getAge());
			ps.setString(3,d.getId());
			result = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}










