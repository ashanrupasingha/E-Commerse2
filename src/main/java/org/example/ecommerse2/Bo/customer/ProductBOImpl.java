package org.example.ecommerse2.Bo.customer;



import org.example.ecommerse2.Bo.ProductBO;
import org.example.ecommerse2.DAO.DAOFactory;
import org.example.ecommerse2.DAO.ProductDAO;
import org.example.ecommerse2.DTO.ProductDTO;
import org.example.ecommerse2.Entity.Product;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class ProductBOImpl implements ProductBO {
    ProductDAO productDA0 = (ProductDAO) DAOFactory.getDaoFactory().getDAO(DAOFactory.DaoType.Product);
    @Override
    public boolean save(ProductDTO dto) throws Exception {
        return productDA0.save(new Product(dto.getProductId(),dto.getName(),dto.getPrice(), dto.getDescription(),dto.getQuantity(),dto.getImagePath(),dto.getCategory(),new ArrayList<>(),new ArrayList<>()));

    }

    @Override
    public boolean update(ProductDTO dto) throws Exception {
        return false;
    }

    @Override
    public boolean delete(String ID) throws Exception {
        return false;
    }

    @Override
    public List<ProductDTO> getAll() throws SQLException, ClassNotFoundException {
        return List.of();
    }
}
