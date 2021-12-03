package entity;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
@Table(name = "comments")
public class CommentsEntity {
    private int commentId;
    private Timestamp date;
    private String comment;
    private ProductsEntity productsByProductId;
    private AccountsEntity accountsByAccountId;

    @Id
    @Column(name = "comment_id", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int getCommentId() {
        return commentId;
    }

    public void setCommentId(int commentId) {
        this.commentId = commentId;
    }

    @Basic
    @Column(name = "date", nullable = true)
    public Timestamp getDate() {
        return date;
    }

    public void setDate(Timestamp date) {
        this.date = date;
    }


    @Basic
    @Column(name = "comment", nullable = true, length = 200)
    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }


    @ManyToOne
    @JoinColumn(name = "product_id", referencedColumnName = "product_id")
    public ProductsEntity getProductsByProductId() {
        return productsByProductId;
    }

    public void setProductsByProductId(ProductsEntity productsByProductId) {
        this.productsByProductId = productsByProductId;
    }

    @ManyToOne
    @JoinColumn(name = "account_id", referencedColumnName = "account_id")
    public AccountsEntity getAccountsByAccountId() {
        return accountsByAccountId;
    }

    public void setAccountsByAccountId(AccountsEntity accountsByAccountId) {
        this.accountsByAccountId = accountsByAccountId;
    }
}
