<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" 
        integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" 
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="./assets/css/bill.css">
    <title>Bill</title>
</head>
<body>
    <h1>${date}</h1>
    <jsp:include page="header.jsp"></jsp:include>
    <section class="body">
        <div class="container-body">
            <div class="body__left">
                <div class="auth">
                    <a href="" class="auth__link">
                        <img src="./assets/imgs/avatar.jpg" alt="" class="auth__ava">
                    </a>
                    
                    <div class="auth__info">
                        <p class="auth__info-name">${sessionScope.account.username}</p>

                        <a href="" class="auth__info-account">
                            <i class="fas fa-pen"></i> Sửa Hồ Sơ
                        </a>
                    </div>
                </div>

                <ul class="nav">
                    <li class="nav__item">
                        <a href="" class="nav__item-link">
                            <img src="./assets/imgs/bill/user.png" alt="" class="nav__item-link-icon">
                            <span>Tài khoản của tôi</span>
                        </a>
                    </li>
                    <li class="nav__item">
                        <a href="" class="nav__item-link nav__item-link--active">
                            <img src="./assets/imgs/bill/bill.png" alt="" class="nav__item-link-icon">
                            <span>Đơn mua</span>
                        </a>
                    </li>
                    <li class="nav__item">
                        <a href="" class="nav__item-link">
                            <img src="./assets/imgs/bill/noti.png" alt="" class="nav__item-link-icon">
                            <span>Thông báo</span>
                        </a>
                    </li>
                    <li class="nav__item">
                        <a href="" class="nav__item-link">
                            <img src="./assets/imgs/bill/voucher.png" alt="" class="nav__item-link-icon">
                            <span>Kho Voucher</span>
                        </a>
                    </li>
                    <li class="nav__item">
                        <a href="" class="nav__item-link">
                            <img src="./assets/imgs/bill/coin.png" alt="" class="nav__item-link-icon">
                            <span>Shopee xu</span>
                        </a>
                    </li>
                </ul>
            </div>

            <div class="body__right">
                <div class="list">
                    <c:forEach items="${listL}" var="o">
                        <div class="item">
                            <div class="item__header">
                            <span class="item__header-title">
                                <img src="./assets/imgs/product-details/transport.png" alt="" class="item__header-title-icon"> Giao hàng thành công
                            </span>
                                <span class="item__header-desc">ĐÃ GIAO</span>
                            </div>

                            <div class="item__content">
                                <img src="${o.product.listImg.get(0).piUrl}" alt="" class="item__content-img">

                                <div class="item__content-main">
                                    <p class="item__content-title">${o.product.title}</p>
                                    <div class="item__content-desc">
                                        <span class="item__content-desc-quantity">x${o.quantity}</span>
                                        <span class="item__content-desc-price">₫${o.FormatPriceWithValue(o.linegetTotal() * 1.3)}</span>
                                        <span class="item__content-desc-price-discount">₫${o.FormatPrice()}</span>
                                    </div>
                                </div>
                            </div>

                            <div class="item__buy">
                                <div class="item__buy-content">
                                    <svg width="16" height="17" fill="none" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M15.94 1.664s.492 5.81-1.35 9.548c0 0-.786 1.42-1.948 2.322 0 0-1.644 1.256-4.642 2.561V0s2.892 1.813 7.94 1.664zm-15.88 0C5.107 1.813 8 0 8 0v16.095c-2.998-1.305-4.642-2.56-4.642-2.56-1.162-.903-1.947-2.323-1.947-2.323C-.432 7.474.059 1.664.059 1.664z" fill="url(#paint0_linear)"></path><path fill-rule="evenodd" clip-rule="evenodd" d="M8.073 6.905s-1.09-.414-.735-1.293c0 0 .255-.633 1.06-.348l4.84 2.55c.374-2.013.286-4.009.286-4.009-3.514.093-5.527-1.21-5.527-1.21s-2.01 1.306-5.521 1.213c0 0-.06 1.352.127 2.955l5.023 2.59s1.09.42.693 1.213c0 0-.285.572-1.09.28L2.928 8.593c.126.502.285.99.488 1.43 0 0 .456.922 1.233 1.56 0 0 1.264 1.126 3.348 1.941 2.087-.813 3.352-1.963 3.352-1.963.785-.66 1.235-1.556 1.235-1.556a6.99 6.99 0 00.252-.632L8.073 6.905z" fill="#FEFEFE"></path><defs><linearGradient id="paint0_linear" x1="8" y1="0" x2="8" y2="16.095" gradientUnits="userSpaceOnUse"><stop stop-color="#F53D2D"></stop><stop offset="1" stop-color="#F63"></stop></linearGradient></defs></svg>
                                    <span class="item__buy-content-title">Tổng số tiền:</span>
                                    <span class="item__buy-content-price">₫${o.FormatPrice()}</span>
                                </div>

                                <a href="productDetails-servlet?pId=${o.product.productId}&mId=${o.product.manufacturer.manufacturerId}" class="btn btn--primary btn-buy">Mua lại</a>

                                <a href="comment?pTempId=${o.product.productId}" class="btn btn-cmt">Để lại đánh giá</a>
                                <div class="modal modal-cmt-wrap ${tagId == 1 ? "modal--open" : ""}" style="background-color: rgba(0, 0, 0, 0.1);">
                                    <div class="modal-body">
                                        <img src="./assets/imgs/reply-cmt.jpg" alt="" class="modal-body__img">
                                        <form action="comment" class="modal-body__form" method="get">
                                            <span>Hãy để lại bình luận của bạn để chúng mình cải thiện nhé!</span>
                                            <textarea class="js-text-area" name="cmt" id="" cols="30" rows="10" required></textarea>
                                            <input type="submit" value="SEND" class="btn-send-cmt btn btn--primary">
                                        </form>
                                    </div>
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
                                <a href="pagination-servlet?pageID=${i}&object=${"bill"}&countPage=${countPage}" class="pagination-item__link">${i}</a>
                            </li>
                        </c:forEach>
                        <li class="pagination-item">
                            <i class="pagination-item__icon fas fa-chevron-right"></i>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <jsp:include page="footer.jsp"></jsp:include>
    <script>
        const btnCmt = document.querySelectorAll('.btn-cmt');
        const modalCmt = document.querySelector('.modal-cmt-wrap');
        const btnSendCmt = document.querySelector('.btn-send-cmt');
        // const textArea = document.querySelector('.js-text-area');
        //
        // btnCmt.forEach(e => {
        //     e.addEventListener('click', function() {
        //         modalCmt.classList.add('modal--open');
        //     })
        // })
        //
        // btnSendCmt.addEventListener('click', function() {
        //     if(document.querySelector('.js-text-area').value != '') {
        //         modalCmt.classList.remove('modal--open');
        //     }
        // })
    </script>
</body>
</html>