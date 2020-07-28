package pe.isil.controller;

import pe.isil.dao.PrizepoolDAO;
import pe.isil.model.Prizepool;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/prizepool", loadOnStartup = 1, name = "prizepool")
public class PrizepoolController extends HttpServlet {



    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Double prizepool;
        List<Prizepool> prizepools = PrizepoolDAO.listPrizepool();

        for (int i = 1; i<=prizepools.size(); i++){
            prizepool = Double.parseDouble(req.getParameter("txtPrizepool" + i));

            if (!prizepool.equals(prizepools.get(i - 1).getPercentage())){
                PrizepoolDAO.updatePercent(i,prizepool);
            }
        }

        req.getRequestDispatcher("/prizepool.jsp").forward(req, resp);

    }
}
