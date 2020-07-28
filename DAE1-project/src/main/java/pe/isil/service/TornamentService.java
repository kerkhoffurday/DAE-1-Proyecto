package pe.isil.service;

import pe.isil.model.Tournament;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import java.util.List;

public class TornamentService {
    private static EntityManager manager;


    public TornamentService(EntityManagerFactory emf){

        manager = emf.createEntityManager();
    }
    public void create(Tournament tournament){
        manager.getTransaction().begin();
        manager.persist(tournament);
        manager.getTransaction().commit();
    }
    public List<Tournament> finAll(){
        return (List<Tournament>) manager.createQuery("SELECT a FROM Tournament a").getResultList();
    }
    public Tournament findById(Integer id){
        return manager.find(Tournament.class, id);
    }
    public void delete (Integer id){

        manager.getTransaction().begin();
        Tournament tournament = findById(id);
        if (tournament != null){
            manager.remove(tournament);
        }
        manager.getTransaction().commit();

    }
}
