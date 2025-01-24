package org.example.ecommerse2.DAO;


import org.example.ecommerse2.Entity.User;

import java.sql.SQLException;

public interface UserDAO extends CrudDAO<User>{
    User searchByEmail(String id) throws SQLException, ClassNotFoundException;
}
