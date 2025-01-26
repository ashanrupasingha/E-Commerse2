package lk.ijse.Servlet.Product;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.BO.BOFactory;
import lk.ijse.BO.CategoryBO;
import lk.ijse.BO.ProductBO;
import lk.ijse.DTO.CategoryDTO;
import lk.ijse.DTO.ProductDTO;
import lk.ijse.Entity.Category;

import java.io.IOException;

@WebServlet(name = "ProductAddServlet", value ="/ProductAddServlet"  )
public class ProductAddServlet extends HttpServlet {
    CategoryBO categoryBO = (CategoryBO) BOFactory.getBoFactory().getBo(BOFactory.BoType.Category);

    ProductBO productBO = (ProductBO) BOFactory.getBoFactory().getBo(BOFactory.BoType.Product);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            int productId = Integer.parseInt(req.getParameter("ProductID"));
            String productName = req.getParameter("productName");
            String description = req.getParameter("productDescription");
            double price = Double.parseDouble(req.getParameter("price"));
            int categoryID = Integer.parseInt(req.getParameter("categoryId"));
            String imagePath = req.getParameter("productImage");

            System.out.println(productId);
            System.out.println(productName);
            System.out.println(description);
            System.out.println(price);
            System.out.println(categoryID);
            System.out.println(imagePath);

            Category category = categoryBO.searchByID(String.valueOf(categoryID));
            CategoryDTO categoryDTO = new CategoryDTO(category.getCategoryId(), category.getName());
            boolean isSave = productBO.save(new ProductDTO(productId, productName, price, description,  imagePath, categoryDTO));
            if (isSave) {
                req.setAttribute("alertType", "success");
                req.setAttribute("alertMessage", "Product added successfully.");
                System.out.println("Success");
                System.out.println(productId);
                System.out.println(productName);
                System.out.println(description);
                System.out.println(price);
                System.out.println(categoryID);
                System.out.println(imagePath);


            }else {
                req.setAttribute("alertType", "error");
                req.setAttribute("alertMessage", "Failed to add product.");
                System.out.println("Fail");
                System.out.println(productId);
                System.out.println(productName);
                System.out.println(description);
                System.out.println(price);
                System.out.println(categoryID);
                System.out.println(imagePath);

            }

        } catch (Exception e) {
            req.setAttribute("alertType", "error");
            req.setAttribute("alertMessage", "Error: " + e.getMessage());
        }
        req.getRequestDispatcher("product_add,delete,update.jsp").forward(req, resp);
    }
}
