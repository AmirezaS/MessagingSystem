package org.j2ee.model.repository;

import org.j2ee.model.entity.Message;
import org.j2ee.model.entity.Person;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

@Repository
@Transactional
public class EntityRepository<Ent,ID> {
    @PersistenceContext
    private EntityManager entityManager;

    public void save(Ent entity){
        entityManager.persist(entity);
    }

    public void update(Ent entity){
        entityManager.merge(entity);
    }

    public void remove(Ent entity){
        entity = entityManager.merge(entity);
        entityManager.remove(entity);
    }
    public Ent findOne(Class<Ent> entityClass, ID id){
        return entityManager.find(entityClass,id);
    }

    public Ent findOneByName(Class<Ent> entityClass,Person person){
        Query query = entityManager.createQuery("select entity from "+entityClass.getAnnotation(Entity.class).name()+ " entity where entity.name =:arg1 and entity.password =:arg2");
        query.setParameter("arg1",person.getName());
        query.setParameter("arg2", person.getPassword());
       List<Ent> entityList = query.getResultList();
       if (entityList.isEmpty()){
           return null;
       }
       return (Ent) query.getSingleResult();
    }
    public List<Ent> findByAddTo(Class<Ent> entityClass, Message message){
        Query query = entityManager.createQuery("select entity from "+entityClass.getAnnotation(Entity.class).name()+" entity where entity.addTo =:arg1");
        query.setParameter("arg1",message.getAddTo());
        List<Ent> entityList = query.getResultList();
        if (entityList.isEmpty()){
            return null;
        }
        return entityList;
    }

    public List<Ent> findAll(Class<Ent> entityClass){
        Query query = entityManager.createQuery("select entity from "+entityClass.getAnnotation(Entity.class).name()+" entity");
        List<Ent> entityList = query.getResultList();
        return entityList;
    }
}
