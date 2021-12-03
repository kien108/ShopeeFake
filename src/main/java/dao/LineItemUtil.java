package dao;

import DBUtil.DBUtil;
import entity.AccountsEntity;
import entity.CartEntity;
import entity.LineItem;
import entity.ProductsEntity;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import javax.sound.sampled.Line;

public class LineItemUtil {
    public void createLineItem(ProductsEntity p, int quantity, CartEntity cart) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        LineItem lineitem = new LineItem();

        lineitem.setProduct(p);
        lineitem.setCart(cart);
        lineitem.setQuantity(quantity);

        if (isLineItemExist(p.getProductId(), cart.getCartId()) == false) {
            try {
                trans.begin();
                lineitem.setQuantity(quantity);
                em.persist(lineitem);
                trans.commit();
                System.out.println("susscess");
            } catch (Exception e) {
                trans.rollback();
            } finally {
                em.close();
            }
        }
        else {
            String qString = "update LineItem l\n" +
                    " set l.quantity = :quantity\n" +
                    " where l.product.productId = : pId and l.cart.cartId = : cId";

            Query query = em.createQuery(qString);

            query.setParameter("quantity", quantity);
            query.setParameter("pId", p.getProductId());
            query.setParameter("cId", cart.getCartId());
            int count = 0;
            try {
                trans.begin();
                count = query.executeUpdate();
                trans.commit();
            } catch (Exception ex) {
                trans.rollback();
            } finally {
                em.close();
            }
        }
    }

    public void deleteLineItem(int lineId) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        String qString = "delete from LineItem l\n" +
                "where l.id = :lineId";

        Query query = em.createQuery(qString);
        query.setParameter("lineId", lineId);

        try {
            trans.begin();
            query.executeUpdate();
            trans.commit();
        } catch (Exception e) {
            System.out.println(e);
            trans.rollback();
        } finally {
            em.close();
        }
    }

    public LineItem getLineItemById(int lineId) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        LineItem lineItem = new LineItem();
        try {
            trans.begin();
            lineItem = em.find(LineItem.class, lineId);
            trans.commit();
            System.out.println("susscess");
        } catch (Exception e) {
            trans.rollback();
        } finally {
            em.close();
        }
        return lineItem;
    }

    public boolean isLineItemExist(int pId, int cId) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        String qString = "from LineItem l where l.product.productId = :pId and l.cart.cartId = :cId";
        Query query = em.createQuery(qString);
        query.setParameter("pId", pId);
        query.setParameter("cId", cId);

        LineItem temp = new LineItem();
        try {
            trans.begin();
            temp = (LineItem) query.getSingleResult();
            trans.commit();
            System.out.println("susscess");
        }
        catch (Exception e) {
            trans.rollback();
        }
        finally {
            em.close();
        }

        if(temp.getProduct() != null) {
            return true;
        }
        else
            return false;
    }

    public static void main(String[] args) {
        LineItemUtil lineUtil = new LineItemUtil();

    }
}
