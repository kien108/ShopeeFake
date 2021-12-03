package entity;

import javax.persistence.*;
import java.util.List;
import java.util.Objects;

@Entity
@Table(name = "cart")
public class CartEntity {
    private int cartId;
    private Integer quantity;
    private Double totalPrice;
    private List<LineItem> listLineItem;

    @Id
    @Column(name = "cart_id", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int getCartId() {
        return cartId;
    }

    public void setCartId(int cartId) {
        this.cartId = cartId;
    }

    @Basic
    @Column(name = "quantity", nullable = true)
    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    @Basic
    @Column(name = "total_price", nullable = true, precision = 0)
    public Double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(Double totalPrice) {
        this.totalPrice = totalPrice;
    }

    @OneToMany(mappedBy = "cart", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    public List<LineItem> getListLineItem() {
        return listLineItem;
    }

    public void setListLineItem(List<LineItem> listLineItem) {
        this.listLineItem = listLineItem;
    }

    @Transient
    public int getCount() {
        return listLineItem.size();
    }

    public String FormatPrice() {
        String moneyString = String.format("%,.0f", billtotalPrice());
        return moneyString;
    }

    public Double billtotalPrice() {
        totalPrice = 0.0;
        if (listLineItem != null) {
            for (LineItem o : listLineItem) {
                totalPrice += o.linegetTotal();
            }
        }
        return totalPrice;
    }
}
