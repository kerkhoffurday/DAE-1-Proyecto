package pe.isil.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


public class DetalleEquipo {
    private Integer IdEquipo;
    private Integer IdTorneo;
    private Integer Victorias;
    private Integer Derrotas;
    private Integer Puesto;

    public DetalleEquipo() {
    }

    public Integer getIdEquipo() {
        return IdEquipo;
    }

    public DetalleEquipo(Integer idEquipo, Integer idTorneo, Integer victorias, Integer derrotas, Integer puesto) {
        IdEquipo = idEquipo;
        IdTorneo = idTorneo;
        Victorias = victorias;
        Derrotas = derrotas;
        Puesto = puesto;
    }

    public void setIdEquipo(Integer idEquipo) {
        IdEquipo = idEquipo;
    }

    public Integer getIdTorneo() {
        return IdTorneo;
    }

    public void setIdTorneo(Integer idTorneo) {
        IdTorneo = idTorneo;
    }

    public Integer getVictorias() {
        return Victorias;
    }

    public void setVictorias(Integer victorias) {
        Victorias = victorias;
    }

    public Integer getDerrotas() {
        return Derrotas;
    }

    public void setDerrotas(Integer derrotas) {
        Derrotas = derrotas;
    }

    public Integer getPuesto() {
        return Puesto;
    }

    public void setPuesto(Integer puesto) {
        Puesto = puesto;
    }
}
