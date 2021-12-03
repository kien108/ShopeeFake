package entity;

import javax.persistence.*;
import java.util.List;
import java.util.Objects;

@Entity
@Table(name = "category")
public class CategoryEntity {
    private int categoryId;
    private String categoryName;
    private List<ProductsEntity> productsByCategoryId;

    @Id
    @Column(name = "category_id", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    @Basic
    @Column(name = "category_name", nullable = true, length = 100)
    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    @OneToMany(mappedBy = "category", cascade = CascadeType.ALL)
    public List<ProductsEntity> getProductsByCategoryId() {
        return productsByCategoryId;
    }

    public void setProductsByCategoryId(List<ProductsEntity> productsByCategoryId) {
        this.productsByCategoryId = productsByCategoryId;
    }
}
