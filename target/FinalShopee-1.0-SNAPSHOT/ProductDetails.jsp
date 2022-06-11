<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Details</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css"
          integrity="sha512-17EgCFERpgZKcm0j0fEq1YCJuyAWdz9KUtv1EjVuaOz8pDnh/0nZxmU6BBXwaaxqoi9PQXnRWqlcDB027hgv9A=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css"
          integrity="sha512-yHknP1/AwR+yx26cB1y0cjvQUMvEa2PFzt1c9LlS4pRQ5NOTZFWbhBig+X9G9eYW/8m0/4OXNx8pxJ6z57x0dw=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link rel="stylesheet" href="./assets/css/grid.css">
    <link rel="stylesheet" href="./assets/css/base.css">
    <link rel="stylesheet" href="./assets/css/main.css">
    <link rel="stylesheet" href="./assets/css/responsive.css">
    <link rel="stylesheet" href="./assets/css/debug.css">
    <link rel="stylesheet" href="./assets/css/productdetails.css">
<%--    <style>--%>
<%--        <%@include file="./assets/css/productdetails.css"%>--%>
<%--    </style>--%>

<%--    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/JS/main.js"></script>--%>
<%--    <script src="<c:url value="/assets/JS/main.js" />"></script>--%>
    <script type="text/javascript" nonce="rAnd0m">
        <%@include file="/assets/JS/main.js" %>
    </script>
</head>
<body>
    <!-- Header is here! -->
    <jsp:include page="header.jsp"></jsp:include>
    <!-- Product is here -->
    <section class="product">
        <div class="grid wide product__container">
            <div class="product__left">
                <div class="product__img-wrap">
                    <img src="${pDetails.getListImg().get(0).getPiUrl()}" alt="" class="product__img">
                </div>
                
                <div class="product__list slick">
                    <c:forEach items="${pDetails.getListImg()}" var="o">
                        <img src="${o.getPiUrl()}" alt="" class="product__list-img">
                    </c:forEach>
                </div>
            </div>

            <div class="product__right">
                <span class="product__like">Yêu Thích</span>
                <h2 class="product__title">${pDetails.title}</h2>

                <div class="product__react">
                    <div class="react__rate">
                        <span class="react__star-point">4.9</span>
                        <div class="react__rate-star">
                            <i class="home-product-item__star--orange fas fa-star"></i>
                            <i class="home-product-item__star--orange fas fa-star"></i>
                            <i class="home-product-item__star--orange fas fa-star"></i>
                            <i class="home-product-item__star--orange fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                    </div>

                    <div class="react__vote">
                        <span class="react__vote-point">156</span>
                        <span class="react__vote-desc">Đánh Giá</span>
                    </div>

                    <div class="react__sold">
                        <span class="react__sold-quantity">${pDetails.sold}</span>
                        <span class="react__sold-desc">Đã Bán</span>
                    </div>
                </div>

                <div class="product__price">
                    <span class="product__price-original">₫${pDetails.FormatPrice()}</span>
                    <span class="product__price-discount">₫${pDetails.FormatPriceWithValue(pDetails.price * (1 - pDetails.discout))}</span>
                    <span class="product__discount">${pDetails.discout * 100}% GIẢM</span>
                </div>

                <div class="product__transport">
                    <span class="product__transport-title">Vận chuyển</span>
                    <img src="./assets/imgs/product-details/transport.png" alt="" class="product__transport-icon">
                    <span class="product__transport-desc">Miễn phí vận chuyển</span>
                </div>

                <div class="product__color">
                    <span class="product__color-title">Màu Sắc</span>
                    <span class="product__color-desc">${pDetails.color}</span>
                </div>

                <div class="product__insurance">
                    <span class="product__insurance-title">Bảo Hành</span>
                    <span class="product__insurance-desc">${pDetails.insurance}</span>
                </div>

                <div class="product__quantity-container">

                    <div class="product__quantity-input">
                        <form action="cart" method="post">
                            <div class="flex">
                                <input type="hidden" name="productId" value="${pDetails.productId}">
                                <span class="product__quantity-title">Số Lượng</span>
                                <button class="minus"><i class="fas fa-minus"></i></button>
                                <input type="text" name="quantity" class="product__quantity-input-desc" value="1">
                                <button class="plus"><i class="fas fa-plus"></i></button>
                                <p style="margin-left: 10px;" class="product__quantity-desc">
                                    ${pDetails.quantity} sản phẩm có sẵn
                                </p>
                            </div>

                            <div class="flex">
                                <input style="line-height: 0px" type="submit" value="Thêm vào giỏ hàng" class="btn btn__add">
                                <input style="line-height: 0px" type="submit" value="Mua Ngay" class="btn btn--primary btn__buy"/>
                            </div>
                        </form>
                    </div>

                </div>

                <div class="product__buy">
<%--                    <c:choose>--%>
<%--                        <c:when test="${sessionScope.account != null}">--%>
<%--                            <h1 id="isLogin" style="display: block; font-size: 0px"></h1>--%>
<%--                        </c:when>--%>
<%--                        <c:otherwise>--%>
<%--                            <h1 id="isLogin" style="display: none; font-size: 0px"></h1>--%>
<%--                        </c:otherwise>--%>
<%--                    </c:choose>--%>
                    <div class="modal__add-to-cart">
                        <div class="modal_add-to-cart-body">
                            <i class="fas fa-check-circle"></i>

                            <p class="modal_add-to-cart-body-title">Sản phẩm đã được thêm vào Giỏ Hàng</p>
                        </div>
                    </div>
<%--                    aaaa--%>
                </div>
            </div>
        </div>
    </section>

    <!-- Product details is here -->
    <section class="product__body">
        <div class="product__body-container">
            <div class="product__body-left-wrap">
                <div class="product__body-left">
                    <div class="product__details-title-wrap">
                        <h1 class="product__details-title">
                            CHI TIẾT SẢN PHẨM
                        </h1>
                    </div>
            
                    <div class="product__details-list">
                        <div class="product__details-item">
                            <span class="product__details-item-title">
                                Thương hiệu
                            </span>
                            <span class="product__details-item-desc">${pDetails.manufacturer.name}</span>
                        </div>
                        <div class="product__details-item">
                            <span class="product__details-item-title">
                                Kiểu kết nối
                            </span>
                            <span class="product__details-item-desc">${pDetails.category.categoryName}</span>
                        </div>
                        <div class="product__details-item">
                            <span class="product__details-item-title">
                                Kho hàng
                            </span>
                            <span class="product__details-item-desc">${pDetails.quantity}</span>
                        </div>
                        <div class="product__details-item">
                            <span class="product__details-item-title">
                                Gửi từ
                            </span>
                            <span class="product__details-item-desc">Room39 on the mic</span>
                        </div>
                    </div>
    
                    <div class="product__desc">
                        <div class="product__details-title-wrap">
                            <h1 class="product__details-title">
                                MÔ TẢ SẢN PHẨM
                            </h1>
                        </div>
    
                        <div class="product__desc-para-wrap">

                            <c:forEach items="${pDetails.getListDesc()}" var="o">
                                <div class="product-desc-sub-wrap">
                                    <div class="product__details-item flex">
                                        <span class="product__details-item-title">${o.name}</span>
                                        <span class="product__details-item-desc">${o.detail}</span>
                                    </div>
                                    <p class="product-desc" style="display: ${o.description == "" ? "none" : "block"}">${o.description}</p>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>

                <div class="product__rating">
                    <h2 class="product__rating-title">ĐÁNH GIÁ SẢN PHẨM</h2>

                    <div class="product__rating-overview-wrap">
                        <div class="product__rating-overview">
                            <div class="product__rating-point-wrap">
                                <span class="product__rating-point">4.9</span>
                                <span class="product__rating-point-out-of">trên 5</span>
                            </div>
                            <div class="product__rating-star">
                                <i class="home-product-item__star--orange fas fa-star"></i>
                                <i class="home-product-item__star--orange fas fa-star"></i>
                                <i class="home-product-item__star--orange fas fa-star"></i>
                                <i class="home-product-item__star--orange fas fa-star"></i>
                                <i class="home-product-item__star--orange fas fa-star"></i>
                            </div>
                        </div>

                        <div class="product__rating-overview-filters">
                            <div class="product__rating-overview-filter product__rating-overview-filter--active">Tất Cả</div>
                            <div class="product__rating-overview-filter">5 sao (148)</div>
                            <div class="product__rating-overview-filter">4 sao (7)</div>
                            <div class="product__rating-overview-filter">3 sao (1)</div>
                            <div class="product__rating-overview-filter">2 sao (1)</div>
                            <div class="product__rating-overview-filter">1 sao (0)</div>
                            <div class="product__rating-overview-filter">Có Bình Luận (${pDetails.listCmt.size()})</div>
                            <div class="product__rating-overview-filter">Có Hình Ảnh / Video (103)</div>
                        </div>
                    </div>

                    <div class="product__rating-cmt-list">
                        <c:forEach items="${listCm}" var="o">
                            <div class="product__rating-cmt">
                                <div class="product__cmt-ava">
                                    <img src="./assets/imgs/avatar.jpg" alt="">
                                </div>

                                <div class="product__cmt-main">
                                    <h3 class="product__cmt-main-name">
                                        ${o.accountsByAccountId.username}
                                    </h3>
                                    <div class="product__cmt-main-rating">
                                        <i class="home-product-item__star--orange fas fa-star"></i>
                                        <i class="home-product-item__star--orange fas fa-star"></i>
                                        <i class="home-product-item__star--orange fas fa-star"></i>
                                        <i class="home-product-item__star--orange fas fa-star"></i>
                                        <i class="home-product-item__star--orange fas fa-star"></i>
                                    </div>
                                    <div class="product__cmt-main-type">
                                        <span class="product__cmt-main-title">Phân loại hàng:</span>
                                        <span class="product__cmt-main-desc">${o.productsByProductId.color}</span>
                                    </div>

                                    <div class="product__cmt-content-wrap">
                                        <p class="product__cmt-content">${o.comment}</p>
                                        <p class="product__cmt-date">
                                            ${o.date}
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>

                        <ul class="home-product__pagination pagination">
                            <li class="pagination-item">
                                <i class="pagination-item__icon fas fa-chevron-left"></i>
                            </li>
                            <c:forEach begin="1" end ="${countPage}" var="i">
                                <li class="pagination-item ${tagPage == i ? "pagination-item--active" : ""}">
                                    <a href="pagination-servlet?pageID=${i}&object=${"cmt"}&pId=${pDetails.productId}&mId=${mId}&countPage=${countPage}" class="pagination-item__link">${i}</a>
                                </li>
                            </c:forEach>
                            <li class="pagination-item">
                                <i class="pagination-item__icon fas fa-chevron-right"></i>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="product__list-items-relate">
                    <h2 class="product__list-items-title">CÁC SẢN PHẨM KHÁC CỦA SHOP</h2>

                    <div class="product__list-items-wrap slick1">
                        <c:choose>
                            <c:when test="${listM.size() < 6}">
                                <c:forEach items="${listP}" var="o">
                                    <a href="productDetails-servlet?pId=${o.productId}&mId=${o.manufacturer.manufacturerId}" class="home-product-item-relate-wrap home-product-wrap">
                                        <div class="home-product-item home-product-item-relate">
                                            <img src="${o.getListImg().get(0).getPiUrl()}" alt="" class="home-product-item__img">
                                            <h5 class="home-product-item__name">${o.title}</h5>
                                            <div class="home-product-item__price">
                                                <span class="home-product-item__price-old">₫${o.FormatPrice()}</span>
                                                <div class="home-product-item__price-new">
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
                                                <span class="home-product-item__brand">${o.manufacturer.name}</span>
                                                <span class="home-product-item__origin-name">Mỹ</span>
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
                            </c:when>
                            <c:otherwise>
                                <c:forEach items="${listM}" var="o">
                                    <a href="productDetails-servlet?pId=${o.productId}&mId=${o.manufacturer.manufacturerId}" class="home-product-item-relate-wrap home-product-wrap">
                                        <div class="home-product-item home-product-item-relate">
                                            <img src="${o.getListImg().get(0).getPiUrl()}" alt="" class="home-product-item__img">
                                            <h5 class="home-product-item__name">${o.title}</h5>
                                            <div class="home-product-item__price">
                                                <span class="home-product-item__price-old">₫${o.FormatPrice()}</span>
                                                <div class="home-product-item__price-new">
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
                                                <span class="home-product-item__brand">${o.manufacturer.name}</span>
                                                <span class="home-product-item__origin-name">Mỹ</span>
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
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>

            </div>

            <div class="product__body-right">
                <h2 class="product__best-seller-title">
                    Top Sản Phẩm Bán Chạy
                </h2>

                <div class="product__best-seller-list">
                    <c:forEach items="${listBestSeller}" var="o">
                        <a href="productDetails-servlet?pId=${o.productId}&mId=${o.manufacturer.manufacturerId}" class="home-product-wrap">
                            <div class="home-product-item">
                                <img src="${o.getListImg().get(0).getPiUrl()}" alt="" class="home-product-item__img">
                                <h5 class="home-product-item__name mb-10">${o.title}</h5>
                                <div class="home-product-item__price ml-neg-15">
                                    <div class="home-product-item__price-new" style="margin-bottom: 10px;margin-left: 26px">
                                        <span>₫</span>
                                        <span class="home-product-item__price-new-prices mb-20">${o.FormatPriceWithValue(o.price * (1 - o.discout))}</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </c:forEach>

                </div>
            </div>
        </div>
    </section>

    <jsp:include page="footer.jsp"></jsp:include>
    <!-- Slider -->

    <script nonce="rAnd0m" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
            integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
            crossorigin="anonymous" referrerpolicy="no-referrer">
    </script>

    <script nonce="rAnd0m" src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"
            integrity="sha512-XtmMtDEcNz2j7ekrtHvOVR4iwwaD6o/FUJe6+Zq+HgcCsk3kj4uSQQR8weQ2QVj1o0Pk6PwYLohm206ZzNfubg=="
            crossorigin="anonymous" referrerpolicy="no-referrer">
    </script>
<%--    <script nonce="rAnd0m" type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>--%>
    <script nonce="rAnd0m" type="text/javascript" src="slick/slick.min.js"></script>
    
    <script nonce="rAnd0m">
        $('.slick1').slick({
            dots: true,
            infinite: false,
            speed: 300,
            slidesToShow: 5,
            slidesToScroll: 5
        });

        $('.slick').slick({
            dots: true,
            infinite: false,
            speed: 300,
            slidesToShow: 3,
            slidesToScroll: 2
        });
    </script>

    <script nonce="rAnd0m">
        // Click img
        const productListImg = document.querySelectorAll('.product__list-img');
        const productImg = document.querySelector('.product__img');

        productListImg.forEach(element => {
            element.addEventListener('click', function() {
                productImg.src = element.src;
                console.log(element.src);
            })
        });
    </script>

    <script nonce="rAnd0m">
        // Click filter
        const listFilters = document.querySelectorAll('.product__rating-overview-filter');

        function RemoveFilter() {
            listFilters.forEach(element => {
                element.classList.remove('product__rating-overview-filter--active');
            })
        }
        listFilters.forEach(element => {
            element.addEventListener('click', function() {
                RemoveFilter();
                element.classList.add('product__rating-overview-filter--active');
            })
        })
    </script>

    <script nonce="rAnd0m">
        // Change quantity

        const plus = document.querySelector('.plus');
        const minus = document.querySelector('.minus');
        const input = document.querySelector('.product__quantity-input-desc');

        plus.addEventListener('click', function() {
            input.value = parseInt(input.value) + 1;
        })

        minus.addEventListener('click', function() {
            if(input.value > 1) {
                input.value = parseInt(input.value) - 1;
            }
        })
    </script>

    <script nonce="rAnd0m">
        // Zoom img
        const screenImg = document.querySelector('.product__img-wrap');
        console.log(screenImg);

        screenImg.addEventListener("mousemove", function(e) {
            const img = document.querySelector('.product__img');

            let imgWidth = img.offsetWidth;
            let imgHeight = img.offsetHeight;
            const screenWidth = screenImg.offsetWidth;
            const screenHeight = screenImg.offsetHeight;
            const spaceX = (imgWidth / 2 - screenWidth) * 2;
            const spaceY = (imgHeight / 2 - screenHeight) * 2;

            imgWidth = imgWidth + spaceX;
            imgHeight = imgHeight + spaceY;

            let x = e.pageX - screenImg.offsetParent?.offsetLeft - screenImg.offsetLeft;
            let y = e.pageY - screenImg.offsetParent?.offsetTop - screenImg.offsetTop;

            const positionX  = (imgWidth / screenWidth / 2) * x;
            const positionY = (imgHeight / screenHeight / 2) * y;

            img.style = `width: unset; height: 150%; transform: none;`;

            img.style.left = -positionX + "px";
            img.style.top = -positionY + "px";
        });

        screenImg.addEventListener('mouseleave', function(e) {
            const img = document.querySelector('.product__img');

            img.style = ``;
        })
    </script>

    <script nonce="rAnd0m">
        // Add to cart
        const btnAdd = document.querySelector('.btn__add');
        const modal1 = document.querySelector('.modal__add-to-cart');
        const  isLogin = document.getElementById('isLogin').style.display;

        btnAdd.addEventListener('click', function() {
            const temp = document.querySelector('.modal_add-to-cart--open');
            if(temp != null) {
                modal1.classList.remove('modal_add-to-cart--open');
            }
            else {
                modal1.classList.add('modal_add-to-cart--open');
            }
        })
    </script>

    <script nonce="rAnd0m">
        document.addEventListener("DOMContentLoaded", function (event) {
            var scrollpos = sessionStorage.getItem('scrollpos');
            if (scrollpos) {
                window.scrollTo(0, scrollpos);
                sessionStorage.removeItem('scrollpos');
            }
        });

        window.addEventListener("beforeunload", function (e) {
            sessionStorage.setItem('scrollpos', window.scrollY);
        });
    </script>
</body>
</html>