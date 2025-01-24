package org.example.ecommerse2.Bo.customer;

import org.example.ecommerse2.Bo.UserBO;

import org.example.ecommerse2.DAO.DAOFactory;
import org.example.ecommerse2.DAO.UserDAO;
import org.example.ecommerse2.DTO.UserDTO;

import org.example.ecommerse2.Entity.User;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class UserBOImpl implements UserBO {
    UserDAO userDAO = (UserDAO) DAOFactory.getDaoFactory().getDAO(DAOFactory.DaoType.User);
    @Override
    public boolean save(UserDTO dto) throws Exception {
        return userDAO.save(new User(
                dto.getUserId(),
                dto.getUsername(),
                dto.getPassword(),
                dto.getEmail(),
                dto.getActive(),
                new ArrayList<>(),
                new ArrayList<>()));
    }

    @Override
    public boolean update(UserDTO dto) throws Exception {
        return userDAO.update(new User(
                dto.getUserId(),
                dto.getUsername(),
                dto.getPassword(),
                dto.getEmail(),
                dto.getActive(),
                new ArrayList<>(),
                new ArrayList<>()));
    }

    @Override
    public boolean delete(String ID) throws Exception {
        return userDAO.delete(ID);
    }

    @Override
    public List<User> getAll() throws SQLException, ClassNotFoundException {
        return List.of();
    }
    @Override
    public User searchByEmail(String email) throws SQLException, ClassNotFoundException {
    return userDAO.searchByEmail(email);
    }
}
