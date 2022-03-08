package model;

import DBUtil.DBUtil;
import entity.AccountsEntity;
import entity.CartEntity;
import entity.UsersEntity;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

public class AccountUtil {
    public boolean createAccount(String username, String password) {
        AccountsEntity account = new AccountsEntity();

        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        UserUtil uUtil = new UserUtil();
        CartUtil cartUtil = new CartUtil();
        if (isAccountExist(username) == false) {
            account.setUsername(username);
            account.setPassword(password);

            UsersEntity user = uUtil.createUser();
            CartEntity cart = cartUtil.createCart();

            account.setUser(user);
            account.setCart(cart);
            try {
                trans.begin();
                em.persist(account);
                trans.commit();
                System.out.println("susscess");
                return true;
            } catch (Exception e) {
                trans.rollback();
            } finally {
                em.close();
            }
        }
        return false;
    }

    public boolean isAccountExist(String username) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        String qString = "from AccountsEntity a where a.username = :username";
        Query query = em.createQuery(qString);
        query.setParameter("username", username);

        AccountsEntity temp = new AccountsEntity();
        try {
            trans.begin();
            temp = (AccountsEntity) query.getSingleResult();
            trans.commit();
            System.out.println("susscess");
        } catch (Exception e) {
            trans.rollback();
        } finally {
            em.close();
        }

        if (temp.getUsername() != null) {
            return true;
        } else
            return false;
    }

    public void resetCart(CartEntity cart, String username) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        AccountsEntity account = getAccount(username);
        account.setCart(cart);
        try {
            trans.begin();
            em.merge(account);
            trans.commit();
            System.out.println("susscess");
        } catch (Exception e) {
            trans.rollback();
        } finally {
            em.close();
        }
    }

    public AccountsEntity getAccount(String username) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        AccountsEntity account = new AccountsEntity();
        String qString = "from AccountsEntity acc where acc.username = :username";
        Query query = em.createQuery(qString);

        query.setParameter("username", username);

        try {
            trans.begin();
            account = (AccountsEntity) query.getSingleResult();
            trans.commit();
            System.out.println("susscess");
        } catch (Exception e) {
            trans.rollback();
        } finally {
            em.close();
        }
        return account;
    }

    public boolean checkLogin(String username, String password) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        String qString = "from AccountsEntity acc where acc.username = :username and acc.password = :password";
        Query query = em.createQuery(qString);

        query.setParameter("username", username);
        query.setParameter("password", password);

        AccountsEntity temp = new AccountsEntity();
        try {
            trans.begin();
            temp = (AccountsEntity) query.getSingleResult();
            trans.commit();
            System.out.println("susscess");
        } catch (Exception e) {
            trans.rollback();
        } finally {
            em.close();
        }

        if (temp.getUsername() != null) {
            return true;
        } else
            return false;
    }

    public static void main(String[] args) {
        AccountUtil accUtil = new AccountUtil();
        String username = "testt";
        String password = "123456";

        AccountsEntity acc = new AccountsEntity();

        accUtil.createAccount(username, password);

    }
}
