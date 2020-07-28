package pe.isil;

import org.h2.engine.User;
import pe.isil.dao.DaoContext;
import pe.isil.dao.PrizepoolDAO;
import pe.isil.dao.TournamentDAO;
import pe.isil.dao.UserDAO;
import pe.isil.model.Prizepool;
import pe.isil.model.Tournament;
import pe.isil.model.Usuario;
import pe.isil.service.UsuarioService;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import java.util.List;

public class Main extends DaoContext {

    private static EntityManager entityManager;
    private static EntityManagerFactory builder;

    public static void main(String[] args) {
/*        builder = Persistence.createEntityManagerFactory("eSportsPU");
        entityManager = builder.createEntityManager();

        entityManager.getTransaction().begin();
        //entityManager.getTransaction().rollback();
        //entityManager.getTransaction().commit();

        Usuario usuario = new Usuario();
        usuario.setUserid(2000);
        usuario.setUsername("DoctorSasquatch");
        usuario.setPassword("1234");

        UsuarioService usuarioService = new UsuarioService();

        usuarioService.create(usuario);
        List<Usuario> usuarios = usuarioService.findAll();
        System.out.println("Lista de Usuarios: " + usuarios);*/

        /* List<Tournament> tournaments = TournamentDAO.findAllTournament();
        System.out.println("Tournaments: " + tournaments);*/
        //Tournament tournament = new Tournament((30,))
        //System.out.println(tournament.toString());

        List<Prizepool> prizepools = PrizepoolDAO.listPrizepool();
        System.out.println(prizepools.size());

//        usuarioService.delete(2000);

    }
}
