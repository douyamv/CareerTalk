package util;
import java.sql.DriverManager;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;
public class ConnectSql {
	public static java.sql.Connection conn;

	public static java.sql.Connection  getConnection(){ 
	try {
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		String url ="jdbc:mysql://localhost/talk?user=root&password=" ;
		conn= DriverManager.getConnection(url); 
	
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} 
	return conn;
	}
}
