package entity;

import javax.persistence.*;
import java.util.List;
import java.util.Objects;

@Entity
@Table(name = "manufacturers")
public class ManufacturersEntity {
    private int manufacturerId;
    private String name;
    private List<ProductsEntity> productsByManufacturerId;

    @Id
    @Column(name = "manufacturer_id", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int getManufacturerId() {
        return manufacturerId;
    }

    public void setManufacturerId(int manufacturerId) {
        this.manufacturerId = manufacturerId;
    }

    @Basic
    @Column(name = "name", nullable = true, length = 100)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @OneToMany(mappedBy = "manufacturer", cascade = CascadeType.ALL)
    public List<ProductsEntity> getProductsByManufacturerId() {
        return productsByManufacturerId;
    }

    public void setProductsByManufacturerId(List<ProductsEntity> productsByManufacturerId) {
        this.productsByManufacturerId = productsByManufacturerId;
    }

}
