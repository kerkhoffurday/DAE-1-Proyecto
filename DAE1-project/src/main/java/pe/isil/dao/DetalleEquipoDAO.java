package pe.isil.dao;

import pe.isil.model.DetalleEquipo;
import pe.isil.util.DatabaseUtil;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DetalleEquipoDAO extends DaoContext {
    public static DetalleEquipo createDetalleEquipo (DetalleEquipo detalleEquipo){
        try (Connection connection = DriverManager.getConnection(dbUrl, dbUser, dbPassword)){
            String sql = "INSERT INTO detalle_equipo(idequipo, idtorneo, Victorias, Derrotas, Puesto) values (?, ?, ?, ?, ?) ";
            try (PreparedStatement statement = connection.prepareStatement(sql)){
                statement.setInt(1, detalleEquipo.getIdTorneo());

                statement.setInt(2, detalleEquipo.getIdEquipo());
                statement.setInt(3, detalleEquipo.getVictorias());
                statement.setInt(4, detalleEquipo.getDerrotas());
                statement.setInt(5, detalleEquipo.getPuesto());

                int id = statement.executeUpdate();
                detalleEquipo.setIdTorneo(id);
                return detalleEquipo;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public static List<DetalleEquipo> findAllDetalleEquipo(){
        List<DetalleEquipo> detalleEquipos  = new ArrayList<DetalleEquipo>();
        try (Connection connection = DriverManager.getConnection(dbUrl, dbUser, dbPassword)){
            String sql = "SELECT * FROM detalle_equipo";
            try (Statement statement = connection.createStatement()){
                try (ResultSet resultSet = statement.executeQuery(sql)){
                    while (resultSet.next()){
                        DetalleEquipo  detalleEquipo = getDetalleEquipo(resultSet);
                        detalleEquipos.add(detalleEquipo);
                    }
                }
            }
        } catch (Exception exception){
            throw new RuntimeException(exception);
        }
        return detalleEquipos;
    }
    public static DetalleEquipo getById(Integer idEquipo, Integer idTorneo) {
        try (Connection connection = DriverManager.getConnection(dbUrl, dbUser, dbPassword)) {
            String sql = "SELECT * FROM detalle_equipo WHERE IdTorneo=? AND idequipo=?";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setInt(1, idTorneo);
                statement.setInt(2, idEquipo);

                try (ResultSet resultSet = statement.executeQuery()) {
                    if (resultSet.next()) {
                        DetalleEquipo detalleEquipo = getDetalleEquipo(resultSet);
                        return detalleEquipo;
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

    public static DetalleEquipo getByTournament(Integer idTorneo) {
        try (Connection connection = DriverManager.getConnection(dbUrl, dbUser, dbPassword)) {
            String sql = "SELECT * FROM detalle_equipo WHERE IdTorneo=?";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setInt(1, idTorneo);

                try (ResultSet resultSet = statement.executeQuery()) {
                    if (resultSet.next()) {
                        DetalleEquipo detalleEquipo = getDetalleEquipo(resultSet);
                        return detalleEquipo;
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

    private static DetalleEquipo getDetalleEquipo(ResultSet resultSet) throws SQLException {
        DetalleEquipo detalleEquipo = new DetalleEquipo(
                resultSet.getInt("IdEquipo"),
                resultSet.getInt("IdTorneo"),
                resultSet.getInt("Victorias"),
                resultSet.getInt("Derrotas"),
                resultSet.getInt("Puesto")
        );
        return detalleEquipo;
    }

    public static void updateDetalleEquipoByTorneo(Integer IdEquipo, Integer IdTorneo, Integer Victorias, Integer Derrotas, Integer Puesto){
        if (getById(IdEquipo, IdTorneo) != null){
            try (Connection connection = DriverManager.getConnection(dbUrl, dbUser, dbPassword)) {
                String sql = "UPDATE detalle_equipo SET idequipo = ?, idtorneo = ?, victorias = ?, derrotas = ?,  puesto = ? WHERE idtorneo = ?";
                try(PreparedStatement statement = connection.prepareStatement(sql)){
                    statement.setInt(1, IdEquipo);
                    statement.setInt(2, IdTorneo);
                    statement.setInt(3, Victorias);
                    statement.setInt(4, Derrotas);
                    statement.setInt(5, Puesto);
                    statement.setInt(6, IdTorneo);
                    statement.executeUpdate();
                    System.out.println("Detalle del equipo actualizada");
                }
            } catch (Exception exception) {
                throw new RuntimeException(exception);
            }
        }else{
            System.err.println("Detalle Equipo no existe");
        }
    }

    public static void updateDetalleEquipoByEquipo(Integer IdEquipo, Integer IdTorneo, Integer Victorias, Integer Derrotas, Integer Puesto){
        if (getById(IdEquipo, IdTorneo) != null){
            try (Connection connection = DriverManager.getConnection(dbUrl, dbUser, dbPassword)) {
                String sql = "UPDATE detalle_equipo SET idequipo = ?, idtorneo = ?, victorias = ?, derrotas = ?,  puesto = ? WHERE idequipo = ?";
                try(PreparedStatement statement = connection.prepareStatement(sql)){
                    statement.setInt(1, IdEquipo);
                    statement.setInt(2, IdTorneo);
                    statement.setInt(3, Victorias);
                    statement.setInt(4, Derrotas);
                    statement.setInt(5, Puesto);
                    statement.setInt(6, IdEquipo);
                    statement.executeUpdate();
                    System.out.println("Detalle del equipo actualizada");
                }
            } catch (Exception exception) {
                throw new RuntimeException(exception);
            }
        }else{
            System.err.println("Detalle Equipo no existe");
        }
    }

    public static void deleteDetalleEquipo(Integer idEquipo, Integer idTorneo){
        if (getById(idEquipo,idTorneo) != null){
            try (Connection connection = DriverManager.getConnection(dbUrl, dbUser, dbPassword)) {
                String sql = "DELETE FROM detalle_equipo WHERE idtorneo=? AND idequipo";
                try(PreparedStatement statement = connection.prepareStatement(sql)){
                    statement.setInt(1, idTorneo);
                    statement.setInt(2, idEquipo);
                    statement.executeUpdate();
                    if (getById(idEquipo, idTorneo) == null){
                        System.out.println("Detalle del equipo eliminado");
                    }else{
                        System.err.println("error");
                    }
                }
            } catch (Exception exception) {
                throw new RuntimeException(exception);
            }
        }else{
            System.err.println("Detalle no existe");
        }
    }
}
