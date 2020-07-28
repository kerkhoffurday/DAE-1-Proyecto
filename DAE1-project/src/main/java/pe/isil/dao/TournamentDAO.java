package pe.isil.dao;

import pe.isil.model.Tournament;
import pe.isil.util.DatabaseUtil;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class TournamentDAO extends DaoContext {
    public static Tournament createTournament (Tournament tournament){
        try (Connection connection =  DriverManager.getConnection(dbUrl, dbUser, dbPassword)){
            String sql = "INSERT INTO TORNEO(idtorneo, nomtorneo, orgtorneo, paistorneo, lugartorneo, ) values (?, ?, ?, ?, ?) ";
            try (PreparedStatement statement = connection.prepareStatement(sql)){
                statement.setInt(1, tournament.getIdTorneo());

                statement.setString(2, tournament.getNomTorneo());
                statement.setString(3, tournament.getOrgTorneo());
                statement.setString(4, tournament.getPaisTorneo());
                statement.setString(5, tournament.getLugarTorneo());

                int id = statement.executeUpdate();
                tournament.setIdTorneo(id);
                return tournament;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static List<Tournament> findAllTournament(){
        List<Tournament> tournaments  = new ArrayList<>();
        try (Connection connection = DriverManager.getConnection(dbUrl, dbUser, dbPassword)){
            String sql = "SELECT * FROM TORNEO";
            try (Statement statement = connection.createStatement()){
                try (ResultSet resultSet = statement.executeQuery(sql)){
                    while (resultSet.next()){
                        Tournament tournament = getTournament(resultSet);
                        tournaments.add(tournament);
                    }
                }
            }
        } catch (Exception exception){
            throw new RuntimeException(exception);
        }
        return tournaments;
    }

    public static Tournament getById(Integer id) {
        try (Connection connection = DriverManager.getConnection(dbUrl, dbUser, dbPassword)) {
            String sql = "SELECT * FROM TORNEO WHERE IdTorneo=?";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setInt(1, id);

                try (ResultSet resultSet = statement.executeQuery()) {
                    if (resultSet.next()) {
                        Tournament tournament = getTournament(resultSet);
                        return tournament;
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

    private static Tournament getTournament(ResultSet resultSet) throws SQLException {
        Tournament tournament = new Tournament(
                resultSet.getInt("IdTorneo"),
                resultSet.getString("NomTorneo"),
                resultSet.getString("OrgTorneo"),
                resultSet.getString("PaisTorneo"),
                resultSet.getString("LugarTorneo")

        );
        return tournament;
    }

    public static void updateTournament(Integer idtorneo, String nomtorneo, String orgtorneo, String paistorneo, String lugartorneo){
        if (getById(idtorneo) != null){
            try (Connection connection = DriverManager.getConnection(dbUrl, dbUser, dbPassword)) {
                String sql = "UPDATE TORNEO SET idtorneo = ?, nomtorneo = ?, orgtorneo = ?, paistorneo = ?,  lugartorneo = ?,WHERE idtorneo = ?";
                try(PreparedStatement statement = connection.prepareStatement(sql)){
                    statement.setInt(1, idtorneo);
                    statement.setString(2, nomtorneo);
                    statement.setString(3, orgtorneo);
                    statement.setString(4, paistorneo);
                    statement.setString(5, lugartorneo);
                    statement.executeUpdate();
                    System.out.println("Torneo actualizada");
                }
            } catch (Exception exception) {
                throw new RuntimeException(exception);
            }
        }else{
            System.err.println("Torneo no existe");
        }
    }

    public static void deleteTournament(Integer id){
        if (getById(id) != null){
            try (Connection connection = DriverManager.getConnection(dbUrl, dbUser, dbPassword)) {
                String sql = "DELETE FROM TORNEO WHERE idtorneo=?";
                try(PreparedStatement statement = connection.prepareStatement(sql)){
                    statement.setInt(1, id);
                    statement.executeUpdate();
                    if (getById(id) == null){
                        System.out.println("Torneo eliminado");
                    }else{
                        System.err.println("error");
                    }
                }
            } catch (Exception exception) {
                throw new RuntimeException(exception);
            }
        }else{
            System.err.println("Torneo no existe");
        }
    }
}
