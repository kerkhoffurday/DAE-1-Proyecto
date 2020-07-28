package pe.isil.controller;


import pe.isil.dao.DaoContext;
import pe.isil.dao.UserDAO;
import pe.isil.model.Usuario;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = "/login", loadOnStartup = 1, name = "login")

public class LoginController extends HttpServlet {

    @Override
    public void init() throws ServletException {
        DaoContext.init(this.getServletContext());
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("username","");
        req.setAttribute("password","");
        req.setAttribute("errorMessage","");

        req.getRequestDispatcher("/login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("txtUsername");
        String password = req.getParameter("txtPassword");

        req.setAttribute("username", username);
        req.setAttribute("password", password);

        Usuario usuario = UserDAO.isValidLogin(username,password);

        if (usuario != null){
            HttpSession session = req.getSession();
            session.setAttribute("username", usuario);
            req.getRequestDispatcher("/home.jsp").forward(req, resp);
        } else {
            req.setAttribute("errorMessage", "Wrong credentials");
            System.out.println("Incorrect user");
            req.getRequestDispatcher("/login.jsp").forward(req, resp);
        }
    }
}
