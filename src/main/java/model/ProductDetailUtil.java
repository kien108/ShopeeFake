package model;

import DBUtil.DBUtil;
import entity.ProductsEntity;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import java.util.ArrayList;
import java.util.List;

public class ProductDetailUtil {
    public ProductsEntity getProductById(int pId) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        ProductsEntity p = new ProductsEntity();

        String qString = "from ProductsEntity p where p.productId = :pId";
        Query query = em.createQuery(qString);

        query.setParameter("pId", pId);
        try {
            trans.begin();
            p = (ProductsEntity) query.getSingleResult();
            trans.commit();
            System.out.println("susscess");
        }
        catch (Exception e) {
            trans.rollback();
        }
        finally {
            em.close();
        }
        return p;
    }

    public List<ProductsEntity> getBestSeller() {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        List<ProductsEntity> listP = new ArrayList<>();
        String qString = "select p\n" +
                        "from ProductsEntity p\n" +
                        "order by p.sold desc\n";
        Query query = em.createQuery(qString).setMaxResults(3);

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
        ProductDetailUtil pdUtil = new ProductDetailUtil();
        List<ProductsEntity> listP = pdUtil.getBestSeller();

        ProductsEntity p = pdUtil.getProductById(1);


    }
}
