package org.example.ecommerse2.DAO.customer;

import org.example.ecommerse2.DAO.UserDAO;
import org.example.ecommerse2.Entity.User;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.sql.SQLException;
import java.util.List;


public class UserDAOImpl implements UserDAO {
    @Override
    public boolean save(User entity) throws Exception {
        Session session = org.example.ecommerse2.Config.FactoryConfiguration.getInstance().getSession();
        Transaction tx = session.beginTransaction();
        session.save(entity);
        tx.commit();
        session.close();
        return true;

    }

    @Override
    public boolean update(User entity) throws Exception {
        Session session = org.example.ecommerse2.Config.FactoryConfiguration.getInstance().getSession();
        Transaction tx = session.beginTransaction();
        session.update(entity);
        tx.commit();
        session.close();
        return true;
    }

    @Override
    public boolean delete(String ID) throws Exception {
        Session session = org.example.ecommerse2.Config.FactoryConfiguration.getInstance().getSession();
        Transaction tx = session.beginTransaction();
        User user = new User();
        user.setUserId(Integer.parseInt(ID));
        session.delete(user);
        tx.commit();
        session.close();
        return true;
    }

    @Override
    public List<User> getAll() throws SQLException, ClassNotFoundException {
        return List.of();
    }
    @Override
    public User searchByEmail(String email) throws SQLException, ClassNotFoundException {
        Session session = org.example.ecommerse2.Config.FactoryConfiguration.getInstance().getSession();
        Transaction transaction = session.beginTransaction();
        User user = session.createQuery("FROM User WHERE email = :email", User.class).setParameter("email",email)
                .uniqueResult();
        transaction.commit();
        session.close();
        return user;
    }
}
