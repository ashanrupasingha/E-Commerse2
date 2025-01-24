package org.example.ecommerse2.Bo;



import org.example.ecommerse2.DTO.CategoryDTO;
import org.example.ecommerse2.Entity.Category;

import java.sql.SQLException;
import java.util.List;


public interface CategoryBO extends SuperBO{
    boolean save(CategoryDTO dto) throws Exception;

    boolean update(CategoryDTO dto) throws Exception;

    boolean delete(String ID) throws Exception;

    List<CategoryDTO> getAll() throws SQLException, ClassNotFoundException;


}
