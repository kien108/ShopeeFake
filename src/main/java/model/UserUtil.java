package model;

import DBUtil.DBUtil;
import entity.UsersEntity;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

public class UserUtil {
    public UsersEntity createUser() {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        UsersEntity user = new UsersEntity();
        user.setName("chua co ten");
        try {
            trans.begin();
            em.persist(user);
            trans.commit();
            System.out.println("susscess");
        }
        catch (Exception e) {
            trans.rollback();
        }
        finally {
            em.close();
        }
        return user;
    }
}
