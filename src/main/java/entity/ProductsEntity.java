package entity;

import javax.persistence.*;
import java.util.List;
import java.util.List;
import java.util.Objects;

@Entity
@Table(name = "products")
public class ProductsEntity {
    private int productId;
    private Double price;
    private Double discout;
    private String title;
    private Integer sold;
    private Integer quantity;
    private String insurance;
    private String color;

    private List<CommentsEntity> listCmt;
    private List<ProductDescEntity> listDesc;
    private List<ProductImagesEntity> listImg;
    private CategoryEntity category;
    private ManufacturersEntity manufacturer;

    public ProductsEntity() {}

    @Id
    @Column(name = "product_id", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    @Basic
    @Column(name = "price", nullable = true, precision = 0)
    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    @Basic
    @Column(name = "discout", nullable = true, precision = 0)
    public Double getDiscout() {
        return discout;
    }

    public void setDiscout(Double discout) {
        this.discout = discout;
    }

    @Basic
    @Column(name = "title", nullable = true, length = 500)
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Basic
    @Column(name = "sold", nullable = true)
    public Integer getSold() {
        return sold;
    }

    public void setSold(Integer sold) {
        this.sold = sold;
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
    @Column(name = "insurance", nullable = true, length = 20)
    public String getInsurance() {
        return insurance;
    }

    public void setInsurance(String insurance) {
        this.insurance = insurance;
    }

    @Basic
    @Column(name = "color", nullable = true, length = 50)
    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    @OneToMany(mappedBy = "productsByProductId", cascade = CascadeType.ALL)
    public List<CommentsEntity> getListCmt() {
        return listCmt;
    }

    public void setListCmt(List<CommentsEntity> listCmt) {
        this.listCmt = listCmt;
    }
    @OneToMany(mappedBy = "productsByProductId", cascade = CascadeType.ALL)
    public List<ProductDescEntity> getListDesc() {
        return listDesc;
    }

    public void setListDesc(List<ProductDescEntity> listDesc) {
        this.listDesc = listDesc;
    }

    @OneToMany(mappedBy = "productsByProductId", cascade = CascadeType.ALL)
    public List<ProductImagesEntity> getListImg() {
        return listImg;
    }

    public void setListImg(List<ProductImagesEntity> listImg) {
        this.listImg = listImg;
    }

    @ManyToOne
    @JoinColumn(name = "c_id", referencedColumnName = "category_id")
    public CategoryEntity getCategory() {
        return category;
    }

    public void setCategory(CategoryEntity category) {
        this.category = category;
    }

    @ManyToOne
    @JoinColumn(name = "m_id", referencedColumnName = "manufacturer_id")
    public ManufacturersEntity getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(ManufacturersEntity manufacturer) {
        this.manufacturer = manufacturer;
    }

    public String FormatPrice() {
        String moneyString = String.format("%,.0f", price);
        return moneyString;
    }

    public String FormatPriceWithValue(Double price) {
        String moneyString = String.format("%,.0f", price);
        return moneyString;
    }
}
