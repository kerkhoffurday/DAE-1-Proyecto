package pe.isil.controller;

import pe.isil.dao.DaoContext;
import pe.isil.dao.PrizepoolDAO;
import pe.isil.model.Prizepool;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/calculate_winnings", loadOnStartup = 1, name = "calculate_winnings")
public class WinningsController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer tournId = Integer.parseInt(req.getParameter("tournamentList"));
        String amount = req.getParameter("txtWinnings");

        System.out.println("Amount: " + amount);

        HttpSession session = req.getSession();
        session.setAttribute("tournamentId", tournId);
        session.setAttribute("amount", amount);

        req.getRequestDispatcher("/calculate_winnings_showTeams.jsp").forward(req, resp);
    }


}
