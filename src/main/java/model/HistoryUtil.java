package model;

import DBUtil.DBUtil;
import entity.AccountsEntity;
import entity.CartEntity;
import entity.HistoryEntity;
import entity.LineItem;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class HistoryUtil {

    public void createHistory(CartEntity cart, AccountsEntity account) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        HistoryEntity history = new HistoryEntity();
        Date date = new Date();

        history.setCart(cart);
        history.setAccount(account);
        history.setDate(date);
        try {
            trans.begin();
            em.persist(history);
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

    public List<LineItem> getListLineItemByPagination(int accId, int offset) {
        List<LineItem> listL = new ArrayList<>();
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        String qString = "select l from HistoryEntity h \n" +
                    "inner join CartEntity c\n" +
                    "on h.cart.cartId = c.cartId\n" +
                    "inner join LineItem l\n" +
                    "on l.cart.cartId = c.cartId\n" +
                    "where h.account.accountId = : accId";

        Query query = em.createQuery(qString);
        query.setParameter("accId", accId);
        query.setFirstResult((offset - 1) * 3);
        query.setMaxResults(3);

        try {
            trans.begin();
            listL = query.getResultList();
            trans.commit();
            System.out.println("susscess");
        }
        catch (Exception e) {
            trans.rollback();
        }
        finally {
            em.close();
        }
        return listL;
    }

    public static void main(String[] args) {
        HistoryUtil hUtil = new HistoryUtil();
        List<LineItem> list = hUtil.getListLineItemByPagination(8, 1);
//        List<HistoryEntity> list1 = hUtil.getHistoryByPagination(8, 2);
//        List<HistoryEntity> list2 = hUtil.getHistoryByPagination(8, 3);
//        List<HistoryEntity> list3 = hUtil.getHistoryByPagination(8, 4);
        for (LineItem o : list) {
            System.out.println(o.getProduct().getTitle());
        }
//        System.out.println(list);
//        System.out.println(list1);
//        System.out.println(list2);
//        System.out.println(list3);
    }
}
