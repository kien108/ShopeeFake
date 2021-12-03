package entity;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "product_desc")
public class ProductDescEntity {
    private int pDescId;
    private String name;
    private String detail;
    private String description;
    private ProductsEntity productsByProductId;

    @Id
    @Column(name = "pDesc_id", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int getpDescId() {
        return pDescId;
    }

    public void setpDescId(int pDescId) {
        this.pDescId = pDescId;
    }

    @ManyToOne
    @JoinColumn(name = "product_id", referencedColumnName = "product_id")
    public ProductsEntity getProductsByProductId() {
        return productsByProductId;
    }

    public void setProductsByProductId(ProductsEntity productsByProductId) {
        this.productsByProductId = productsByProductId;
    }

    @Basic
    @Column(name = "name", nullable = true, length = 50)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "detail", nullable = true, length = 100)
    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    @Basic
    @Column(name = "description", nullable = true, length = 1000)
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
