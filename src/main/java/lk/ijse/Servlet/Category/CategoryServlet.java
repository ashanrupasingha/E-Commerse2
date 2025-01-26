package lk.ijse.Servlet.Category;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.BO.BOFactory;
import lk.ijse.BO.CategoryBO;
import lk.ijse.DTO.CategoryDTO;

import java.io.IOException;

@WebServlet(name = "CategoryServlet", value = "/CategoryServlet"  )
public class CategoryServlet extends HttpServlet {
    CategoryBO categoryBO = (CategoryBO) BOFactory.getBoFactory().getBo(BOFactory.BoType.Category);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        String categoryID = req.getParameter("categoryId");
        String categoryName = req.getParameter("categoryName");

        System.out.println(action);
        System.out.println(categoryName);
        System.out.println(categoryName);

        boolean result;
        try {
            if (categoryName.isEmpty()) {
                req.setAttribute("alertType", "danger");
                req.setAttribute("alertMessage", "Category name is required.");
            } else {
                result = categoryBO.save(new CategoryDTO(1, categoryName));
                if (result) {
                    req.setAttribute("alertType", "success");
                    req.setAttribute("alertMessage", "Category added successfully.");
                } else {
                    req.setAttribute("alertType", "danger");
                    req.setAttribute("alertMessage", "Failed to add category.");
                }


            }
            req.getRequestDispatcher("admic_add,delete,update_catogry.jsp").forward(req, resp);
        } catch (Exception e) {
            req.setAttribute("alertType", "danger");
            req.setAttribute("alertMessage", "Error: " + e.getMessage());
            throw new RuntimeException(e);
        }
    }}
