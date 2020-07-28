package pe.isil.service;

import pe.isil.model.Usuario;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import java.util.List;

public class UsuarioService {
    private static EntityManager entityManager;
    private static EntityManagerFactory factory;

    public UsuarioService() {
        factory = Persistence.createEntityManagerFactory("eSportsPU");
        entityManager = factory.createEntityManager();
    }

    public void create(Usuario usuario){
        entityManager.getTransaction().begin();
        entityManager.persist(usuario);
        entityManager.getTransaction().commit();
    }

    public List<Usuario> findAll() {
        return (List<Usuario>) entityManager.createQuery("select a from Usuario a").getResultList();
    }

    public Usuario findById(Integer id){
        return entityManager.find(Usuario.class, id);
    }

    public void update(Integer id){
        Usuario usuario = findById(id);
        if (usuario != null){
            //todo
        }
        else System.err.println("Error: Usuario no existe");
    }

    public void delete(Integer id){
        entityManager.getTransaction().begin();
        Usuario usuario = findById(id);
        if (usuario != null){
            entityManager.remove(usuario);
            System.out.println("Se eliminó el usuario.");
        }
        else System.err.println("Error: Usuario no existe");

        entityManager.getTransaction().commit();
    }

}
