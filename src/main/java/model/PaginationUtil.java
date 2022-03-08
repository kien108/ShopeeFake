package model;

import DBUtil.DBUtil;
import entity.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import java.util.List;

public class PaginationUtil {
    public int getCountPage() {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        String qString = "select count(p) from ProductsEntity p";
        Query query = em.createQuery(qString);

        int countPage = 0;
        int total = 0;
        try {
            total = Integer.parseInt(query.getSingleResult().toString());
            countPage = total/10;
            if(total % 10 != 0) {
                countPage++;
            }
            System.out.println("susscess");
        }
        catch (Exception e) {
            trans.rollback();
        }
        finally {
            em.close();
        }
        return countPage;
    }

    public int getCountPageWithParameter (int countProduct) {
        int countPage = 0;
        countPage = countProduct/10;
        if(countProduct % 10 != 0)
            countPage++;
        return countPage;
    }

    public int getCountPageCmt(ProductsEntity product) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        int countPage = 0;
        int total = 0;
        try {
            total = product.getListCmt().size();
            countPage = total/3;
            if(total % 3 != 0) {
                countPage++;
            }
            System.out.println("susscess");
        }
        catch (Exception e) {
            trans.rollback();
        }
        finally {
            em.close();
        }
        return countPage;
    }

    public int getCountPageBill(String username) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        AccountUtil accUtil = new AccountUtil();
        AccountsEntity acc = accUtil.getAccount(username);
        List<HistoryEntity> listH = acc.getListHistory();

        int countPage = 0;
        int total = 0;
        try {
            for (HistoryEntity h : listH) {
                CartEntity cart = h.getCart();
                List<LineItem> listL = cart.getListLineItem();
                total += listL.size();
            }
            countPage = total/3;
            if(total % 3 != 0) {
                countPage++;
            }
            System.out.println("susscess");
        }
        catch (Exception e) {
            trans.rollback();
        }
        finally {
            em.close();
        }
        return countPage;
    }

    public static void main(String[] args) {
        PaginationUtil paUtil = new PaginationUtil();
        ProductDetailUtil pdUtil = new ProductDetailUtil();
        ProductsEntity p = pdUtil.getProductById(1);

        int count = paUtil.getCountPageBill("kien108");
        System.out.println(count);
    }
}
