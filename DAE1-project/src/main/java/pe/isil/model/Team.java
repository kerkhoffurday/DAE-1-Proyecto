package pe.isil.model;




public class Team {
    private Integer IdEquipo;
    private String NomEquipo;
    private String PaisEquipo;

    public Team() {
    }

    public Team(Integer idEquipo, String nomEquipo, String paisEquipo) {
        IdEquipo = idEquipo;
        NomEquipo = nomEquipo;
        PaisEquipo = paisEquipo;
    }

    public Integer getIdEquipo() {
        return IdEquipo;
    }

    public void setIdEquipo(Integer idEquipo) {
        IdEquipo = idEquipo;
    }

    public String getNomEquipo() {
        return NomEquipo;
    }

    public void setNomEquipo(String nomEquipo) {
        NomEquipo = nomEquipo;
    }

    public String getPaisEquipo() {
        return PaisEquipo;
    }

    public void setPaisEquipo(String paisEquipo) {
        PaisEquipo = paisEquipo;
    }
}
