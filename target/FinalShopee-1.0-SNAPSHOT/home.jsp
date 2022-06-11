<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>kien108-Shopee</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css"
          integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w=="
          crossorigin="anonymous"
          referrerpolicy="no-referrer" />

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
          integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
          crossorigin="anonymous"
          referrerpolicy="no-referrer" />

    <link rel="stylesheet" href="./assets/css/grid.css">

    <link rel="stylesheet" href="./assets/css/base.css">
    <style>
        <%@include file="./assets/css/main.css"%>
    </style>
    <link rel="stylesheet" href="./assets/css/responsive.css">

<%--    <script src="https://carousel/1.2.3/min.js" ></script>--%>


</head>
<body onclick="">
    <div class="app">
        <jsp:include page="header.jsp"></jsp:include>
        <div class="app__container">
            <div class="grid wide">
                <div class="app__content row sm-gutter">
                    <div class="col l-2 m-0 c-0">
                        <nav class="category">
                            <h3 class="category__heading">
                                <i class="category__heading-icon fas fa-list"></i>
                                Danh mục
                            </h3>
                            <ul class="category-list">
                                <li class="category-item ${tagMTemp == 0 ? "category-item--active" : ""}">
                                    <a href="home-products" class="category-item__link">Tất cả</a>
                                </li>
                                <c:forEach items="${listM}" var="o">
                                    <li class="category-item ${tagM == o.manufacturerId ? "category-item--active" : ""}" >
                                        <a href="manufacturer-servlet?mID=${o.manufacturerId}" class="category-item__link">${o.name}</a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </nav>
                    </div>
                    <div class="col l-10 m-12 c-12">
                        <div class="home-filter hide-on-mobile-tablet">
                            <span class="home-filter__label">Sắp xếp theo</span>
                            <button class="home-filter__btn btn">Phổ biến</button>
                            <button class="home-filter__btn btn btn--primary">Mới nhất</button>
                            <button class="home-filter__btn btn">Bán chạy</button>

                            <div class="select-input">
                                <span class="select-input__label">
                                    Giá
                                </span>
                                <i class="select-input__icon fas fa-chevron-down"></i>
                                <ul class="select-input__list">
                                    <li class="select-input__item">
                                        <a href="" class="select-input__item-link">Giá thấp đến cao</a>
                                    </li>
                                    <li class="select-input__item">
                                        <a href="" class="select-input__item-link">Giá cao đến thấp</a>
                                    </li>
                                </ul>
                            </div>

                            <div class="home-filter__page">
                                <span class="home-filter__page-num">
                                    <span class="home-filter__page-current">1</span>/${countPage}
                                </span>

                                <div class="home-filter__page-control">
                                    <a href="" class="home-filter__page-btn home-filter__page-btn--disibled">
                                        <i class="home-filter__page-icon fas fa-chevron-left"></i>
                                    </a>
                                    <a href="" class="home-filter__page-btn">
                                        <i class="home-filter__page-icon fas fa-chevron-right"></i>
                                    </a>
                                </div>
                            </div>
                        </div>

                        <!-- Mobile category -->
                        <nav class="mobile-category">
                            <ul class="mobile-category__list">
                                <li class="mobile-category__item">
                                    <a href="" class="mobile-category__link">Ultraboost</a>
                                </li>
                                <li class="mobile-category__item">
                                    <a href="" class="mobile-category__link">Originals</a>
                                </li>
                                <li class="mobile-category__item">
                                    <a href="" class="mobile-category__link">Superstar</a>
                                </li>
                                <li class="mobile-category__item">
                                    <a href="" class="mobile-category__link">NMD</a>
                                </li>
                                <li class="mobile-category__item">
                                    <a href="" class="mobile-category__link">Stan Smith</a>
                                </li>
                                <li class="mobile-category__item">
                                    <a href="" class="mobile-category__link">Giày - Nữ</a>
                                </li>
                                <li class="mobile-category__item">
                                    <a href="" class="mobile-category__link">Shop Outlet - Hàng Outlet</a>
                                </li>
                            </ul>
                        </nav>

                        <!-- Home product -->
                        <div class="home-product">
                            <div class="row sm-gutter">

                                <c:forEach items="${listP}" var="o">
                                    <a href="productDetails-servlet?pId=${o.productId}&mId=${o.manufacturer.manufacturerId}&tagPage=${1}" class="col l-2-4 m-3 c-6 home-product-wrap">
                                        <div class="home-product-item">
                                            <img src="${o.getListImg().get(0).getPiUrl()}" alt="" class="home-product-item__img">
                                            <h5 class="home-product-item__name">${o.title}</h5>
                                            <div class="home-product-item__price">
                                                <span class="home-product-item__price-old">
                                                    ${o.FormatPrice()}
                                                </span>
                                                <div class="home-product-item__price-new" style="margin-left: 28px; max-width: 79px">
                                                    <span>₫</span>
                                                    <span class="home-product-item__price-new-prices">${o.FormatPriceWithValue(o.price * (1 - o.discout))}</span>
                                                </div>
                                            </div>
                                            <div class="home-product-item__action">
                                            <span class="home-product-item__like home-product-item__like--liked">
                                                <i class="home-product-item__like-icon-empty far fa-heart"></i>
                                                <i class="home-product-item__like-icon-fill fas fa-heart"></i>
                                            </span>
                                                <div class="home-product-item__rate">
                                                    <i class="home-product-item__star--gold fas fa-star"></i>
                                                    <i class="home-product-item__star--gold fas fa-star"></i>
                                                    <i class="home-product-item__star--gold fas fa-star"></i>
                                                    <i class="home-product-item__star--gold fas fa-star"></i>
                                                    <i class="fas fa-star"></i>
                                                </div>
                                                <span class="home-product-item__sold">${o.sold}</span>
                                            </div>
                                            <div class="home-product-item__origin">
                                                <span class="home-product-item__brand">Mỹ</span>
                                                <span class="home-product-item__origin-name">${o.getManufacturer().name}</span>
                                            </div>
                                            <div class="home-product-item__favourite">
                                                <i class="fas fa-check"></i>
                                                <span>Yêu thích</span>
                                            </div>
                                            <div class="home-product-item__sale-off">
                                                <span class="home-product-item__sale-off-percent">${o.discout * 100}%</span>
                                                <span class="home-product-item__sale-off-label">GIẢM</span>
                                            </div>
                                        </div>
                                    </a>
                                </c:forEach>
                            </div>
                        </div>

                        <ul class="home-product__pagination pagination">
                            <li class="pagination-item">
                                <i class="pagination-item__icon fas fa-chevron-left"></i>
                            </li>
                            <c:choose>
                                <c:when test="${tagPageTemp == 1}">
                                    <li class="pagination-item pagination-item--active">
                                        <a href="pagination-servlet?pageID=1&object=${"home"}&countPage=${countPage}" class="pagination-item__link">1</a>
                                    </li>
                                    <c:forEach begin="2" end ="${countPage}" var="i">

                                        <li class="pagination-item ${tagPage == i ? "pagination-item--active" : ""}">
                                            <a href="pagination-servlet?pageID=${i}&object=${"home"}&countPage=${countPage}" class="pagination-item__link">${i}</a>
                                        </li>
                                    </c:forEach>
                                </c:when>
                                <c:otherwise>
                                    <c:forEach begin="1" end ="${countPage}" var="i">

                                        <li class="pagination-item ${tagPage == i ? "pagination-item--active" : ""}">
                                            <a href="pagination-servlet?pageID=${i}&object=${"home"}&countPage=${countPage}" class="pagination-item__link">${i}</a>
                                        </li>
                                    </c:forEach>
                                </c:otherwise>
                            </c:choose>
                            <li class="pagination-item">
                                <i class="pagination-item__icon fas fa-chevron-right"></i>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <%-- Footer is here--%>
        <jsp:include page="footer.jsp"></jsp:include>
    </div>


    <script>
        //  Category active

        const listCategories = document.querySelectorAll('.category-item');
        function getCookie(cname) {
            let name = cname + "=";
            let decodedCookie = decodeURIComponent(document.cookie);
            let ca = decodedCookie.split(';');
            for(let i = 0; i <ca.length; i++) {
                let c = ca[i];
                while (c.charAt(0) == ' ') {
                    c = c.substring(1);
                }
                if (c.indexOf(name) == 0) {
                    return c.substring(name.length, c.length);
                }
            }
            return "";
        }


        function RemoveCategoryActive() {
            listCategories.forEach(element => {
                element.classList.remove('category-item--active');
            })
        }
        listCategories.forEach(element => {
            element.addEventListener('click', function() {
                console.log("aaa");
                RemoveCategoryActive();
                element.classList.add('category-item--active');
            })
        })
    </script>
</body>
</html>