package pl.coderslab.servlets;

import pl.coderslab.entity.User;
import pl.coderslab.entity.UserDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/create")
public class Create extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        UserDAO userDAO = new UserDAO();

        User user = new User();
        user.setUsername("boyar");
        user.setPassword("arabesco29");
        user.setEmail("boyarchuk.vitaliy@gmail.com");

        User create = userDAO.create(user);

        request.setAttribute("user",create);

        request.getServletContext().getRequestDispatcher("/create.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
