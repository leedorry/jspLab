package jdbc.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionProviderMVC {

	public static Connection getConnection() throws SQLException {
		return DriverManager.getConnection(
				"jdbc:apache:commons:dbcp:board");
	}
}