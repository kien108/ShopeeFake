package entity;

import javax.persistence.*;
import java.util.List;
import java.util.Objects;

@Entity
@Table(name = "accounts")
public class AccountsEntity {
    private int accountId;
    private String username;
    private String password;
    private CartEntity cart;
    private List<CommentsEntity> commentsByAccountId;
    private UsersEntity user;
    private List<HistoryEntity> listHistory;
    public AccountsEntity() {}

    public AccountsEntity(String username, String password) {
        this.username = username;
        this.password = password;
    }

    @Id
    @Column(name = "account_id", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int getAccountId() {
        return accountId;
    }

    public void setAccountId(int accountId) {
        this.accountId = accountId;
    }

    @Basic
    @Column(name = "username", nullable = true, length = 50, unique = true)
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Basic
    @Column(name = "password", nullable = true, length = 50)
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @OneToOne
    @JoinColumn(name = "cart_id", referencedColumnName = "cart_id")
    public CartEntity getCart() {
        return cart;
    }

    public void setCart(CartEntity cart) {
        this.cart = cart;
    }

    @OneToMany(mappedBy = "accountsByAccountId")
    public List<CommentsEntity> getCommentsByAccountId() {
        return commentsByAccountId;
    }

    public void setCommentsByAccountId(List<CommentsEntity> commentsByAccountId) {
        this.commentsByAccountId = commentsByAccountId;
    }

    @OneToOne
    @JoinColumn(name = "user_id", referencedColumnName = "userId")
    public UsersEntity getUser() {
        return user;
    }

    public void setUser(UsersEntity user) {
        this.user = user;
    }

    @OneToMany(mappedBy = "account")
    public List<HistoryEntity> getListHistory() {
        return listHistory;
    }

    public void setListHistory(List<HistoryEntity> listHistory) {
        this.listHistory = listHistory;
    }
}
