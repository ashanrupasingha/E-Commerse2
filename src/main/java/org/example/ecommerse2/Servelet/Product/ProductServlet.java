package org.example.ecommerse2.Servelet.Product;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.ecommerse2.Bo.BOFactory;
import org.example.ecommerse2.Bo.CategoryBO;
import org.example.ecommerse2.DTO.CategoryDTO;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "Product",value = "/ProductServlet")
public class ProductServlet extends HttpServlet {

CategoryBO categoryBo =(CategoryBO) BOFactory.getBoFactory().getBo(BOFactory.BoType.Category);
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<CategoryDTO> categories;
        try {
            categories = categoryBo.getAll();
            System.out.println(categories.get(1).getName());
            System.out.println(categories.get(2).getName());
            System.out.println(categories.get(3).getName());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        System.out.println(categories.get(1).getName());
        System.out.println(categories.get(2).getName());
        System.out.println(categories.get(3).getName());
        req.setAttribute("categories", categories);
        RequestDispatcher dispatcher = req.getRequestDispatcher("Product.jsp");
        dispatcher.forward(req, resp);
    }
}


