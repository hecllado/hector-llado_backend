package br.com.hector.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexaoBanco {
	
	public Connection getConnection() {
		try {
			return DriverManager.getConnection("jdbc:mysql://localhost/hector", "root", "root");
		}
		catch (SQLException e) {
            throw new RuntimeException(e);
        }
	}
}
