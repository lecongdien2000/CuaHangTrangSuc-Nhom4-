<%@ page language="java" contentType="text/html; charset = UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="controller.Cart" %>
<%@ page import="java.util.Collection" %>
<%@ page import="product.Product" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Thanh toán | NL Accessories</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
    <link rel="icon" href="images/logoFavicon.png" type="image/icon type">
    <style type="text/css">

        .table-condensed img {
            width: 100px;
            height: 100px;
        }

        #form-special1234 input {
            background: white;
            border: 1px solid black;
            margin-bottom: 10px;
            padding: 10px;
            width: 100%;
            font-weight: 300
        }

        .payment-options img {
            width: 50px;
            height: 50px;
        }
    </style>
</head><!--/head-->

<body style="">
<jsp:include page="heading.jsp"/>


<section id="cart_items">
    <div class="container">
        <div class="breadcrumbs">
            <ol class="breadcrumb">
                <li><a href="#">Trang chủ</a></li>
                <li class="active">Thanh toán</li>
            </ol>
        </div><!--/breadcrums-->

        <div class="step-one">
            <h2 class="heading">Thanh toán</h2>
        </div>
        <!--/checkout-options-->

        <!--/register-req-->

        <div class="shopper-informations">
            <form name="checkout" id="mobile" action="addBill" method="post" onsubmit="return validateForm()">
                <div class="row">

                    <div class="col-sm-6 clearfix">

                        <div class="bill-to">
                            <h3>Người nhận</h3>
                            <div class="form-one">
                                <div id="form-special1234">
                                    <input type="email" name="email" placeholder="Email*">
                                    <input type="text" name="fullname" placeholder="Họ và tên *">
                                    <input type="text" name="address" placeholder="Địa chỉ *">
                                    <input type="text" name="phone" placeholder="SĐT *">
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="order-message">
                            <h3>Ghi chú</h3>
                            <textarea name="message" style="font-size: 17px"
                                      placeholder="Ghi chú về đơn hàng của bạn, đặc biệt là cho người giao hàng."
                                      rows="16"></textarea>

                        </div>
                    </div>
                </div>

                <div class="review-payment">
                    <h3>Tiến hành thanh toán</h3>
                </div>

                <div class="table-responsive cart_info">
                    <table class="table table-condensed">
                        <thead>
                        <tr class="cart_menu">
                            <td class="image">Tên sản phẩm</td>
                            <td class="description"></td>
                            <td class="price">Giá</td>
                            <td class="quantity" style="text-align: center">Số lượng</td>
                            <td class="total">Tổng tiền</td>
                            <td></td>
                        </tr>
                        </thead>
                        <tbody>
                        <% Cart cart = Cart.getCart(session);
                            Collection<Product> data = cart.getdata();
                            request.setAttribute("data", data);
                            request.setAttribute("cart", cart);
                        %>
                        <c:if test="${cart==null}"><p> cart null</p></c:if>
                        <c:forEach items="${data}" var="product">
                            <tr>
                                <td class="cart_product">
                                    <a href=""><img src="${product.getPicture1()}" alt=""></a>
                                </td>
                                <td class="cart_description">
                                    <h4><a href="">${product.getProduct_name()}</a></h4>
                                    <p>Mã: ${product.getId_product()}</p>
                                </td>
                                <td class="cart_price">
                                    <p>${product.getStringPrice()}</p>
                                </td>
                                <td class="cart_quantity">
                                    <div class="cart_quantity_button" style="text-align: center">
                                        <p>${cart.getQuantity(product)}</p>
                                    </div>
                                </td>
                                <td class="cart_total">
                                    <p class="cart_total_price">${cart.totalStringPriceProduct(product)}</p>
                                </td>

                            </tr>
                        </c:forEach>
                        <tr>
                            <td colspan="3">&nbsp;</td>
                            <td colspan="3">
                                <table class="table table-condensed total-result">
                                    <tbody>
                                    <tr>
                                        <td>Tổng giỏ hàng</td>
                                        <td>${cart.totalOfCart()}đ</td>
                                    </tr>
                                    <tr>
                                        <td>Thuế</td>
                                        <td>200.000 đ</td>
                                    </tr>
                                    <tr class="shipping-cost">
                                        <td>Phí vận chuyển</td>
                                        <td>Free</td>
                                    </tr>
                                    <tr>
                                        <td>Tổng</td>
                                        <td><span>${cart.totalOfCart()}đ</span></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="payment-options">
                    <h3>Phương thức thanh toán:</h3>
                    <span>
						<label><input type="radio" name="payment"> <img src="images\checkout\airpay.png"></label>
					</span>
                    <span>
						<label><input type="radio" name="payment"> <img src="images\checkout\momo.png"></label>
					</span>
                    <span>
						<label><input type="radio" name="payment"> <b>Thanh toán khi nhận hàng</b></label>
					</span>
                </div>
                <input class="payment-confirm" type="submit" value="Xác nhận"></input></a>
            </form>
        </div>
    </div>
</section> <!--/#cart_items-->

<jsp:include page="footer.jsp"/>
<script>
    function validateForm() {
        var email = document.checkout.email.value;
        var fullname = document.checkout.fullname.value;
        var address = document.checkout.address.value;
        var letterNumber = /^[0-9a-zA-Z]+$/;
        var vnf_regex = /((09|03|07|08|05)+([0-9]{8})\b)/g;
        var mobile = document.checkout.phone.value;
        if (email == null || email == "") {
            alert("Email là trường bắt buộc!");
            return false;
        } else if (fullname == null || fullname == "") {
            alert("Fullname là trường bắt buộc!");
            return false;
        }
        if (address == null || address == "") {
            alert("Address là trường bắt buộc!");
            return false;
        } else if (mobile == null || mobile == "" || vnf_regex.test(mobile) == false ) {
            alert("Trường SDT không được trống và phải nhập đúng định dạng của SDT!");
            return false;

        } else if ($('input[type=radio]:checked').size() <= 0) {
            alert('Bạn chưa chọn phương thức thanh toán!');
            return false;
        }
    }
</script>


<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.scrollUp.min.js"></script>
<script src="js/jquery.prettyPhoto.js"></script>
<script src="js/main.js"></script>

<a id="scrollUp" href="#top" style="position: fixed; z-index: 2147483647; display: none;"><i class="fa fa-angle-up"></i></a>
</body>
</html>