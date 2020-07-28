package pe.isil.dao;

import pe.isil.model.Team;
import pe.isil.util.DatabaseUtil;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class TeamDAO extends DaoContext {
    public static Team create(Team team){
        try (Connection connection = DriverManager.getConnection(dbUrl, dbUser, dbPassword)){
            String sql = "INSERT INTO equipo (idequipo, nomequipo, paisequipo) values (?, ?, ?) ";
            try (PreparedStatement statement = connection.prepareStatement(sql)){
                statement.setInt(1, team.getIdEquipo());
                statement.setString(2, team.getNomEquipo());
                statement.setString(3, team.getPaisEquipo());

                int id = statement.executeUpdate();
                team.setIdEquipo(id);
                return team;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public static List<Team> findAllTeams(){
        List<Team> teams = new ArrayList<Team>();
        try (Connection connection = DriverManager.getConnection(dbUrl, dbUser, dbPassword)){
            String sql = "SELECT * FROM equipo";
            try (Statement statement = connection.createStatement()){
                try (ResultSet resultSet = statement.executeQuery(sql)){
                    while (resultSet.next()){
                        Team team = getTeam(resultSet);
                        teams.add(team);
                    }
                }
            }
        } catch (Exception exception){
            throw new RuntimeException(exception);
        }
        return teams;
    }

    private static Team getTeam(ResultSet resultSet) throws SQLException {
        Team team = new Team(
                resultSet.getInt("IdEquipo"),
                resultSet.getString("NomEquipo"),
                resultSet.getString("PaisEquipo")
        );
        return team;
    }
    public static Team findById (Integer id) {
        try (Connection connection = DriverManager.getConnection(dbUrl, dbUser, dbPassword)) {
            String sql = "SELECT * FROM equipo WHERE idequipo=?";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setInt(1, id);

                try (ResultSet resultSet = statement.executeQuery()) {
                    if (resultSet.next()) {
                        Team team = getTeam(resultSet);
                        return team;
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
    public static Team getTeamByTournament (Integer tournId) {
        try (Connection connection = DriverManager.getConnection(dbUrl, dbUser, dbPassword)) {
            String sql = "SELECT equipo.*, de.idtorneo from equipo" +
                    "inner join detalle_equipo de on equipo.idequipo = de.idequipo" +
                    "where idtorneo = ?";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setInt(1, tournId);

                try (ResultSet resultSet = statement.executeQuery()) {
                    if (resultSet.next()) {
                        Team team = getTeam(resultSet);
                        return team;
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

    public static void update(Integer id, String name, String country){
        if (findById(id) != null){
            try (Connection connection = DriverManager.getConnection(dbUrl, dbUser, dbPassword)) {
                String sql = "UPDATE equipo SET nomequipo = ?, paisequipo = ? WHERE idequipo = ?";
                try(PreparedStatement statement = connection.prepareStatement(sql)){
                    statement.setString(1, name);
                    statement.setString(2, country);

                    statement.setInt(4, id);
                    statement.executeUpdate();
                    System.out.println("Team update");
                }
            } catch (Exception exception) {
                throw new RuntimeException(exception);
            }
        }else{
            System.err.println("Team does not exist");
        }
    }
    public static void delete(Integer id){
        if (findById(id) != null){
            try (Connection connection = DriverManager.getConnection(dbUrl, dbUser, dbPassword)) {
                String sql = "DELETE FROM equipo WHERE idequipo=?";
                try(PreparedStatement statement = connection.prepareStatement(sql)){
                    statement.setInt(1, id);
                    statement.executeUpdate();

                }
            } catch (Exception exception) {
                throw new RuntimeException(exception);
            }
        }else{
            System.err.println("Results not found");
        }

    }
}
