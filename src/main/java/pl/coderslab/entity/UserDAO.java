package pl.coderslab.entity;

import org.mindrot.jbcrypt.BCrypt;
import pl.coderslab.DBUtil;

import java.sql.*;

public class UserDAO {

    String createUser = "INSERT INTO users (username, password, email) VALUES (?,?,?);";

    public String hashPassword(String password) {
        return BCrypt.hashpw(password, BCrypt.gensalt());
    }

    public User create(User user) {
        try (Connection connection = DBUtil.getConnection()) {
            PreparedStatement preparedStatement = connection.prepareStatement(createUser, Statement.RETURN_GENERATED_KEYS);
            preparedStatement.setString(1,user.getUsername());
            preparedStatement.setString(2,hashPassword(user.getPassword()));
            preparedStatement.setString(3,user.getEmail());
            preparedStatement.executeUpdate();
            ResultSet resultSet = preparedStatement.getGeneratedKeys();
            while (resultSet.next()) {
                user.setId(resultSet.getInt(1));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }
}
