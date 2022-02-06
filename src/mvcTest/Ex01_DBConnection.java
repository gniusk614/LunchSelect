package mvcTest;


import java.sql.Connection;
import java.sql.DriverManager; //DB를 연결

// ** DB 연결
// => Connection 클래스가 DB 연결 및 연결정보를 관리함
//	  즉, Connection 객체 생성해야함

public class Ex01_DBConnection {

	// ** Connection 객체 생성
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");	//jdbc 드라이버를 찾는 값
            System.out.println("===> JDBC Connection 성공  ===");
            return DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb?serverTimezone=Asia/Seoul&useSSL=false", "root", "mysql123");

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		return null;
	}//getConnection
	
	
}//class
