//package org.example.ecommerse2.Servelet.Category;
//
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//import org.example.ecommerse2.Bo.BOFactory;
//import org.example.ecommerse2.Bo.CategoryBO;
//import org.example.ecommerse2.Entity.Category;
//
//import java.io.IOException;
//import java.util.List;
//
//@WebServlet(name = "ManageCategoriesServlet", value = "/ManageCategoriesServlet")
//public class ManageCategoriesServlet extends HttpServlet {
//    CategoryBO categoryBO = (CategoryBO) BOFactory.getBoFactory().getBo(BOFactory.BoType.Category);
//
//    @Override
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        try {
//            // Fetch all categories
//            List<Category> categories = categoryBO.getAllCategories();
//
//            // Pass categories to the request attribute
//            req.setAttribute("categories", categories);
//
//            // Forward to JSP to display the categories
//            req.getRequestDispatcher("ManageCategories.jsp").forward(req, resp);
//        } catch (Exception e) {
//            req.setAttribute("error", "Failed to fetch categories.");
//            req.getRequestDispatcher("ManageCategories.jsp").forward(req, resp);
//        }
//    }
//}
