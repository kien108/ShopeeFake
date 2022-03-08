package model;

import DBUtil.DBUtil;
import entity.ManufacturersEntity;
import entity.ProductsEntity;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import java.util.ArrayList;
import java.util.List;

public class ProductUtil {

    public List<ProductsEntity> getAllProductByPagination(String search, int offset) {
        List<ProductsEntity> listP = new ArrayList<>();
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        String qString = "from ProductsEntity p \n" +
                "where p.title LIKE CONCAT('%',:search,'%')";
        Query query = em.createQuery(qString);
        query.setParameter("search", search);
        query.setFirstResult((offset - 1) * 10);
        query.setMaxResults(10);

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

    public List<ManufacturersEntity> getAllManufacturers() {
        List<ManufacturersEntity> listM = new ArrayList<>();
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        String qString = "from ManufacturersEntity";
        Query query = em.createQuery(qString);

        try {
            trans.begin();
            listM = query.getResultList();
            trans.commit();
            System.out.println("susscess");
        }
        catch (Exception e) {
            trans.rollback();
        }
        finally {
            em.close();
        }
        return listM;
    }

    public List<ProductsEntity> searchListProduct(String search) {
        List<ProductsEntity> listP = new ArrayList<>();
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        String qString = "from ProductsEntity p \n" +
                "where p.title LIKE CONCAT('%',:search,'%')";
        Query query = em.createQuery(qString);
        query.setParameter("search", search);
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

    public void updateProduct(ProductsEntity product, int quantity) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        product.setSold(product.getSold() + quantity);
        product.setQuantity(product.getQuantity() - quantity);
        try {
            trans.begin();
            em.merge(product);
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
    public static void main(String[] args) {
        ProductUtil pUtil = new ProductUtil();
        List<ProductsEntity> listP = pUtil.getAllProductByPagination("", 1);

        listP.forEach(p -> {
            System.out.println(p.getTitle());
        });

    }

}
