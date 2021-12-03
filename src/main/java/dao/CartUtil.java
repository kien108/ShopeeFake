package dao;

import DBUtil.DBUtil;
import com.sun.corba.se.impl.orbutil.ObjectUtility;
import entity.CartEntity;
import entity.LineItem;
import entity.UsersEntity;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import java.util.List;
import java.util.Objects;

public class CartUtil {
    public CartEntity createCart() {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        CartEntity cart = new CartEntity();

        cart.setQuantity(0);
        cart.setTotalPrice(cart.billtotalPrice());
        try {
            trans.begin();
            em.persist(cart);
            trans.commit();
            System.out.println("susscess");
        }
        catch (Exception e) {
            trans.rollback();
        }
        finally {
            em.close();
        }
        return cart;
    }

    public CartEntity getCartById(int cId) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        CartEntity cart = new CartEntity();
        String qString = "from CartEntity c where c.cartId = :cId";
        Query query = em.createQuery(qString);
        query.setParameter("cId", cId);

        try {
            trans.begin();
            cart = (CartEntity) query.getSingleResult();
            trans.commit();
            System.out.println("susscess");
        }
        catch (Exception e) {
            trans.rollback();
        }
        finally {
            em.close();
        }
        return cart;
    }

    public void updateCart(int quantity, int cId) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        CartEntity cart = getCartById(cId);
        cart.setQuantity(quantity);
        cart.setTotalPrice(cart.billtotalPrice());
        try {
            trans.begin();
            em.merge(cart);
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
        CartUtil cUtil = new CartUtil();
        CartEntity cart = cUtil.getCartById(31);

        List<LineItem> list = cart.getListLineItem();
        for (LineItem l : list) {
//            System.out.println(l.getProduct().getTitle()+l.getProduct().getProductId()+l.getQuantity() + l.linegetTotal());
            System.out.println(l.getProduct().getProductId());
        }

        cUtil.updateCart(cart.getCount(), 31);
        System.out.println(cart.getCartId());
        System.out.println(cart.getCount());
    }
}
