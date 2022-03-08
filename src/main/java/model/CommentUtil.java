package model;

import DBUtil.DBUtil;
import entity.AccountsEntity;
import entity.CommentsEntity;
import entity.ProductsEntity;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class CommentUtil {
    public void createCmt (ProductsEntity product, AccountsEntity account, String cmt) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        CommentsEntity comment = new CommentsEntity();
        Long datetime = System.currentTimeMillis();
        Timestamp date = new Timestamp(datetime);
        comment.setComment(cmt);
        comment.setAccountsByAccountId(account);
        comment.setProductsByProductId(product);
        comment.setDate(date);
        try {
            trans.begin();
            em.persist(comment);
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

    public List<CommentsEntity> getAllCmtByPagination(int pId, int offset) {
        List<CommentsEntity> listC = new ArrayList<>();
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        String qString = "from CommentsEntity c \n" +
                "where c.productsByProductId.productId = : pId";
        Query query = em.createQuery(qString);
        query.setParameter("pId", pId);
        query.setFirstResult((offset - 1) * 3);
        query.setMaxResults(3);

        try {
            trans.begin();
            listC = query.getResultList();
            trans.commit();
            System.out.println("susscess");
        }
        catch (Exception e) {
            trans.rollback();
        }
        finally {
            em.close();
        }
        return listC;
    }

    public static void main(String[] args) {
        CommentUtil cmUtil = new CommentUtil();
//        ProductDetailUtil pdUtil = new ProductDetailUtil();
//        ProductsEntity p = pdUtil.getProductById(50);
//        AccountUtil accUtil = new AccountUtil();
//        AccountsEntity acc = accUtil.getAccount("kien1");
//        String cmt = "Tai nghe âm cực đầm quẩy vinahouse là số dách";
//        cmUtil.createCmt(p, acc, cmt);
        List<CommentsEntity> list  = cmUtil.getAllCmtByPagination(1, 2);
        System.out.println(list);

//        Long datetime = System.currentTimeMillis();
//        Timestamp date = new Timestamp(datetime);
//        System.out.println(date);
    }
}
