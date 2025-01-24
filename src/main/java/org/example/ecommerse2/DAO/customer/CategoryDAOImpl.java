package org.example.ecommerse2.DAO.customer;

import org.example.ecommerse2.DAO.CategoryDAO;
import org.example.ecommerse2.Entity.Category;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CategoryDAOImpl implements CategoryDAO {
    @Override
    public boolean save(Category entity) throws Exception {
        Session session = org.example.ecommerse2.Config.FactoryConfiguration.getInstance().getSession();
        Transaction tx = session.beginTransaction();
        session.save(entity);
        tx.commit();
        session.close();
        return true;
    }

    @Override
    public boolean update(Category entity) throws Exception {
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
        Category category = new Category();
        category.setCategoryId(Integer.parseInt(ID));
        session.delete(category);
        tx.commit();
        session.close();
        return true;
    }

    @Override
    public List<Category> getAll() throws SQLException, ClassNotFoundException {
        List<Category> all = new ArrayList<>();
        Session session = org.example.ecommerse2.Config.FactoryConfiguration.getInstance().getSession();
        Transaction transaction = session.beginTransaction();
        all = session.createQuery("from Category").list();
        transaction.commit();
        session.close();
        return all;
    }
}
