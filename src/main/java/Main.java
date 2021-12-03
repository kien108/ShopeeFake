import DBUtil.DBUtil;
import entity.AccountsEntity;
import entity.ProductsEntity;

import javax.persistence.*;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        AccountsEntity p1 = new AccountsEntity("kien108","123");
        try {
            trans.begin();
            em.persist(p1);
            trans.commit();
            System.out.println("susscess");
        }
        catch (Exception e) {
            trans.rollback();
        }
        finally {
            em.close();
        }
    }
}
