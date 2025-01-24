/*
package lk.ijse.Servlet.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.Entity.User;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.io.IOException;
import java.util.ArrayList;

*/

package org.example.ecommerse2.Servelet.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import org.example.ecommerse2.Bo.BOFactory;
import org.example.ecommerse2.Bo.UserBO;
import org.example.ecommerse2.DTO.UserDTO;
import org.example.ecommerse2.Entity.User;
import org.mindrot.jbcrypt.BCrypt;

import java.io.IOException;

@WebServlet(name = "UserSaveServlet", value = "/registerServlet")
public class User_Post extends HttpServlet {

    UserBO userBO = (UserBO) BOFactory.getBoFactory().getBo(BOFactory.BoType.User);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("username");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String confirmPassword = req.getParameter("confirmPassword");
        String activate = "Active";

        try {
            User user = userBO.searchByEmail(email);

            if (user != null) {
                req.setAttribute("error", "Email already exists.");
                req.getRequestDispatcher("UserRegister.jsp").forward(req, resp);
                return;
            }

            if (!password.equals(confirmPassword)) {
                req.setAttribute("error", "Passwords do not match.");
                req.getRequestDispatcher("UserRegister.jsp").forward(req, resp);
                return;
            }

            String hashedPassword = BCrypt.hashpw(password, BCrypt.gensalt());
            UserDTO userDTO = new UserDTO(1, name, hashedPassword, email, activate);

            userBO.save(userDTO);
            req.setAttribute("success", "User register Success.");
            req.getRequestDispatcher("UserRegister.jsp").forward(req, resp);

        } catch (Exception e) {
            e.printStackTrace();
            req.setAttribute("error", "Failed to register user. Try again later.");
            req.getRequestDispatcher("UserRegister.jsp").forward(req, resp);
        }
    }

}
