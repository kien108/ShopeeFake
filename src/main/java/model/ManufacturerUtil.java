package model;

import DBUtil.DBUtil;
import entity.ProductsEntity;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import java.util.ArrayList;
import java.util.List;

public class ManufacturerUtil {
    public List<ProductsEntity> getAllProductByMid(int mId) {
        List<ProductsEntity> listP = new ArrayList<>();
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        String qString = "from ProductsEntity p where p.manufacturer.manufacturerId = :mId";
        Query query = em.createQuery(qString);

        query.setParameter("mId", mId);
        try {
            trans.begin();
            listP = query.getResultList();
            trans.commit();
            System.out.println("susscess");
        }
        catch (Exception e) {
            trans.rollback();
        }
        finally {
            em.close();
        }
        return listP;
    }

    public static void main(String[] args) {
        ManufacturerUtil mUtil = new ManufacturerUtil();
        List<ProductsEntity> listP = mUtil.getAllProductByMid(1);
        System.out.println(listP);
    }
}
