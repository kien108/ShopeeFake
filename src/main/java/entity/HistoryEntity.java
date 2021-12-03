package entity;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Date;
import java.util.Objects;

@Entity
@Table(name = "history")
public class HistoryEntity {

    private Date date;
    private int historyId;
    private CartEntity cart;
    private AccountsEntity account;
    @Id
    @Column(name = "history_id", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int getHistoryId() {
        return historyId;
    }

    public void setHistoryId(int historyId) {
        this.historyId = historyId;
    }

    @Basic
    @Column(name = "date", nullable = true)
    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    @ManyToOne
    @JoinColumn(name = "cart_id", referencedColumnName = "cart_id")
    public CartEntity getCart() {
        return cart;
    }

    public void setCart(CartEntity cart) {
        this.cart = cart;
    }

    @ManyToOne
    @JoinColumn(name = "acc_id", referencedColumnName = "account_id")
    public AccountsEntity getAccount() {
        return account;
    }

    public void setAccount(AccountsEntity account) {
        this.account = account;
    }
}
