package entity;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "product_images")
public class ProductImagesEntity {
    private int piId;
    private String piUrl;
    private ProductsEntity productsByProductId;

    @Id
    @Column(name = "pi_id", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int getPiId() {
        return piId;
    }

    public void setPiId(int piId) {
        this.piId = piId;
    }

    @Basic
    @Column(name = "pi_url", nullable = true, length = 200)
    public String getPiUrl() {
        return piUrl;
    }

    public void setPiUrl(String piUrl) {
        this.piUrl = piUrl;
    }

    @ManyToOne
    @JoinColumn(name = "product_id", referencedColumnName = "product_id")
    public ProductsEntity getProductsByProductId() {
        return productsByProductId;
    }

    public void setProductsByProductId(ProductsEntity productsByProductId) {
        this.productsByProductId = productsByProductId;
    }
}
