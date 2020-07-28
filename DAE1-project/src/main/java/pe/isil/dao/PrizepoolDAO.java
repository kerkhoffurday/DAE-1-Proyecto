package pe.isil.dao;

import pe.isil.model.Prizepool;
import pe.isil.model.Team;
import pe.isil.util.DatabaseUtil;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PrizepoolDAO extends DaoContext{

    public static Prizepool create(Prizepool prizepool){
        try (Connection connection = DriverManager.getConnection(dbUrl, dbUser, dbPassword)){
            String sql = "INSERT INTO prizepool (puesto, porcentaje) values (?, ?) ";
            try (PreparedStatement statement = connection.prepareStatement(sql)){
                statement.setInt(1, prizepool.getPlace());
                statement.setDouble(2, prizepool.getPercentage());

                int id = statement.executeUpdate();
                prizepool.setIdPrizePool(id);
                return prizepool;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static List<Prizepool> listPrizepool(){
        List<Prizepool> prizepools = new ArrayList<Prizepool>();
        try (Connection connection = DriverManager.getConnection(dbUrl, dbUser, dbPassword)){
            String sql = "SELECT * FROM prizepool ORDER BY puesto";
            try (Statement statement = connection.createStatement()){
                try (ResultSet resultSet = statement.executeQuery(sql)){
                    while (resultSet.next()){
                        Prizepool prizepool = getPrizepool(resultSet);
                        prizepools.add(prizepool);
                    }
                }
            }
        } catch (Exception exception){
            throw new RuntimeException(exception);
        }
        return prizepools;
    }

    private static Prizepool getPrizepool(ResultSet resultSet) throws SQLException {
        Prizepool prizepool = new Prizepool(
                resultSet.getInt("idprizepool"),
                resultSet.getInt("puesto"),
                resultSet.getDouble("porcentaje")
        );
        return prizepool;
    }

    public static Prizepool findById (Integer id) {
        try (Connection connection = DriverManager.getConnection(dbUrl, dbUser, dbPassword)) {
            String sql = "SELECT * FROM prizepool WHERE idprizepool=?";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setInt(1, id);

                try (ResultSet resultSet = statement.executeQuery()) {
                    if (resultSet.next()) {
                        Prizepool prizepool = getPrizepool(resultSet);
                        return prizepool;
                    } else {
                        System.err.println("No se ha encontrado registros");
                        return null;
                    }
                }
            }
        } catch (Exception exception) {
            throw new RuntimeException(exception);
        }
    }

    public static void updatePercent(Integer id, double porcentaje){
        if (findById(id) != null){
            try (Connection connection = DriverManager.getConnection(dbUrl, dbUser, dbPassword)) {
                String sql = "UPDATE prizepool SET porcentaje = ? WHERE idprizepool = ?";
                try(PreparedStatement statement = connection.prepareStatement(sql)){
                    statement.setDouble(1, porcentaje);
                    statement.setInt(2, id);

                    statement.executeUpdate();
                    System.out.println("Prizepool " + id + " percetage updated");
                }
            } catch (Exception exception) {
                throw new RuntimeException(exception);
            }
        }else{
            System.err.println("Does not exist");
        }
    }

    public static void delete(Integer id) {
        if (findById(id) != null) {
            try (Connection connection = DriverManager.getConnection(dbUrl, dbUser, dbPassword)) {
                String sql = "DELETE FROM prizepool WHERE idprizepool=?";
                try (PreparedStatement statement = connection.prepareStatement(sql)) {
                    statement.setInt(1, id);
                    statement.executeUpdate();

                }
            } catch (Exception exception) {
                throw new RuntimeException(exception);
            }
        } else {
            System.err.println("Results not found");
        }
    }
}
