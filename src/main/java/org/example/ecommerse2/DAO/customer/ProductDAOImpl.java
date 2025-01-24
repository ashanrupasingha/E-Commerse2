package org.example.ecommerse2.DAO.customer;

import org.example.ecommerse2.DAO.ProductDAO;
import org.example.ecommerse2.Entity.Product;

import java.sql.SQLException;
import java.util.List;


public class ProductDAOImpl implements ProductDAO {
    @Override
    public boolean save(Product entity) throws Exception {
        return false;
    }

    @Override
    public boolean update(Product entity) throws Exception {
        return false;
    }

    @Override
    public boolean delete(String ID) throws Exception {
        return false;
    }

    @Override
    public List<Product> getAll() throws SQLException, ClassNotFoundException {
        return List.of();
    }
}
