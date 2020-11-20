package com.mytodoapp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mytodoapp.model.LoginBean;
import com.mytodoapp.jdbc.JDBCUtils;

public class LoginDao {

	public boolean validate(LoginBean loginBean) throws ClassNotFoundException {
		boolean status = false;

		//Class.forName("com.mysql.jdbc.Driver");

		try (Connection connection = JDBCUtils.getConnection();
				// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = connection.prepareStatement("select * from users where username = ? and password = ? ")) {
			preparedStatement.setString(1, "G"/*loginBean.getUsername()*/);
			preparedStatement.setString(2, "123"/*loginBean.getPassword()*/);

			System.out.println(preparedStatement);
			ResultSet rs = preparedStatement.executeQuery();
			status = rs.next();

		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return status;
	}
}
