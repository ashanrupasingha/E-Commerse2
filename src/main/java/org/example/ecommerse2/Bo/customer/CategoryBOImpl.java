package org.example.ecommerse2.Bo.customer;



import org.example.ecommerse2.Bo.CategoryBO;
import org.example.ecommerse2.DAO.CategoryDAO;
import org.example.ecommerse2.DAO.DAOFactory;
import org.example.ecommerse2.DTO.CategoryDTO;
import org.example.ecommerse2.Entity.Category;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class CategoryBOImpl implements CategoryBO {
    CategoryDAO categoryDAO =(CategoryDAO) DAOFactory.getDaoFactory().getDAO(DAOFactory.DaoType.Category);
    @Override
    public boolean save(CategoryDTO dto) throws Exception {
        return categoryDAO.save(new Category(dto.getCategoryId(),dto.getName(),new ArrayList<>()));
    }

    @Override
    public boolean update(CategoryDTO dto) throws Exception {
        return categoryDAO.update(new Category(dto.getCategoryId(),dto.getName(),new ArrayList<>()));
    }

    @Override
    public boolean delete(String ID) throws Exception {
        return categoryDAO.delete(ID);
    }

    @Override
    public List<CategoryDTO> getAll() throws SQLException, ClassNotFoundException {
       List<Category> categories = categoryDAO.getAll();
       List<CategoryDTO> categoryDTO = new ArrayList<CategoryDTO>();
       for(Category category : categories){
           categoryDTO.add(new CategoryDTO(category.getCategoryId(),category.getName()));
       }
       return categoryDTO;
    }

}
