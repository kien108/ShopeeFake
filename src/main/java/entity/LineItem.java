package entity;

import javax.persistence.*;

@Entity
@Table(name = "lineItem")
public class LineItem {
    private int id;
    private ProductsEntity product;
    private Integer quantity;
    private CartEntity cart;

    public LineItem() {}

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }


    @OneToOne
    @JoinColumn(name = "product_id", referencedColumnName = "product_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public ProductsEntity getProduct() {
        return product;
    }

    public void setProduct(ProductsEntity product) {
        this.product = product;
    }

    @Column
    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    @ManyToOne
    @JoinColumn(name = "cart_id", referencedColumnName = "cart_id")
    public CartEntity getCart() {
        return cart;
    }

    public void setCart(CartEntity cart) {
        this.cart = cart;
    }

    public Double linegetTotal() {
        double total = product.getPrice() * quantity;
        return total;
    }

    public String FormatPrice() {
        String moneyString = String.format("%,.0f", linegetTotal());
        return moneyString;
    }

    public String FormatPriceWithValue(Double price) {
        String moneyString = String.format("%,.0f", price);
        return moneyString;
    }
}
