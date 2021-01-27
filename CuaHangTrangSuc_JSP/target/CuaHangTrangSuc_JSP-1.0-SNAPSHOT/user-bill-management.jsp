<%@ page language="java" contentType="text/html; charset = UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Hóa đơn | NL Accessories</title>
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
</head><!--/head-->
<style type="text/css">
    .category-tab {
        margin-top: 30px;
        margin-bottom: 90px;
    }

    .tab-content {
        padding-top: 40px;
    }

    .headTitle {
        background-color: blue;
        color: #ffffff;
        clear: both;
        min-height: 40px;
        margin-left: 0px;
        margin-right: 15px;
    }

    .headTitle p {
        margin-top: 10px;
    }

    .productList {
        margin-right: 15px;
    }

    .productInfor {
        border-bottom: 1px solid #a4a4a4;
        width: 100%;
        margin-left: 0px;
        min-height: 90px;
    }

    .productInfor p {
        padding-top: 15px;
    }

    .containImage {
        width: 90px;
        height: 100%;
    }

    .productList {
        height: 300px;
        overflow-y: scroll;
        margin-bottom: 30px;
    }

    .cancelBill .btn {
        background-color: #f41919;
        margin-bottom: 30px;
        color: #ffffff;

    }

    .cancelBill .btn:hover {
        background-color: #ff0000;;
    }

    .cancelBill .btn:active {
        background-color: #ae0000;;
    }

    .billID {
        clear: both;
        font-weight: bold;
        color: #0000ff;
    }
</style>
<body>
<jsp:include page="heading.jsp"/>


<section>
    <div class="container">
        <div class="row">
            <div class="col-sm-12 padding-right">
                <div class="category-tab"><!--category-tab-->
                    <div class="col-sm-12">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#choXacNhan" data-toggle="tab">Chờ xác nhận</a></li>
                            <li><a href="#choLayHang" data-toggle="tab">Đang giao</a></li>
                            <li><a href="#daGiao" data-toggle="tab">Đã giao</a></li>
                            <li><a href="#traHang" data-toggle="tab">Trả hàng</a></li>
                            <li><a href="#daHuy" data-toggle="tab">Đã hủy</a></li>
                        </ul>
                    </div>
                    <div class="tab-content">
                        <div class="tab-pane fade active in container" id="choXacNhan">
                            <div>
                                <p class="billID">Mã đơn: HD0001</p>
                                <div class="headTitle row">
                                    <div class="col-sm-8">

                                        <div class="col-sm-4">
                                            <p>Mã sản phẩm</p>
                                        </div>
                                        <div class="col-sm-8">
                                            <p>Mục sản phẩm</p>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="col-sm-3">
                                            <p>Giá</p>
                                        </div>
                                        <div class="col-sm-3">
                                            <p>Số lượng</p>
                                        </div>
                                        <div class="col-sm-6">
                                            <p>Tổng tiền</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="productList">
                                    <div class="row productInfor">
                                        <div class="col-sm-8">

                                            <div class="col-sm-4">
                                                <p class="index">SNXM00K000088</p>
                                            </div>
                                            <div class="col-sm-8" style="padding-left: 0px; padding-right: 0px;">
                                                <div class="col-sm-4" style="padding-left: 0px;">
                                                    <div class="containImage">
                                                        <img src="images/home/gallery1.jpg"
                                                             style="width: 100%; height: 100%">
                                                    </div>
                                                </div>
                                                <div class="col-sm-8" style="padding-right: 0px; padding-left: 0px;">
                                                    <p class="index" style="margin-bottom: 1px; font-weight: bold;">
                                                        Nhẫn bạc đính đá PNJSilver XM00K000088
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="col-sm-4">
                                                <p class="index">317.000đ</p>
                                            </div>
                                            <div class="col-sm-2">
                                                <p class="index">1</p>
                                            </div>
                                            <div class="col-sm-6">
                                                <p class="index">317.000đ</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row productInfor">
                                        <div class="col-sm-8">

                                            <div class="col-sm-4">
                                                <p class="index">SNXM00K000088</p>
                                            </div>
                                            <div class="col-sm-8" style="padding-left: 0px; padding-right: 0px;">
                                                <div class="col-sm-4" style="padding-left: 0px;">
                                                    <div class="containImage">
                                                        <img src="images/home/gallery1.jpg"
                                                             style="width: 100%; height: 100%">
                                                    </div>
                                                </div>
                                                <div class="col-sm-8" style="padding-right: 0px; padding-left: 0px;">
                                                    <p class="index" style="margin-bottom: 1px; font-weight: bold;">
                                                        Nhẫn bạc đính đá PNJSilver XM00K000088
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="col-sm-4">
                                                <p class="index">317.000đ</p>
                                            </div>
                                            <div class="col-sm-2">
                                                <p class="index">1</p>
                                            </div>
                                            <div class="col-sm-6">
                                                <p class="index">317.000đ</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row productInfor">
                                        <div class="col-sm-8">

                                            <div class="col-sm-4">
                                                <p class="index">SNXM00K000088</p>
                                            </div>
                                            <div class="col-sm-8" style="padding-left: 0px; padding-right: 0px;">
                                                <div class="col-sm-4" style="padding-left: 0px;">
                                                    <div class="containImage">
                                                        <img src="images/home/gallery1.jpg"
                                                             style="width: 100%; height: 100%">
                                                    </div>
                                                </div>
                                                <div class="col-sm-8" style="padding-right: 0px; padding-left: 0px;">
                                                    <p class="index" style="margin-bottom: 1px; font-weight: bold;">
                                                        Nhẫn bạc đính đá PNJSilver XM00K000088
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="col-sm-4">
                                                <p class="index">317.000đ</p>
                                            </div>
                                            <div class="col-sm-2">
                                                <p class="index">1</p>
                                            </div>
                                            <div class="col-sm-6">
                                                <p class="index">317.000đ</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row productInfor">
                                        <div class="col-sm-8">

                                            <div class="col-sm-4">
                                                <p class="index">SNXM00K000088</p>
                                            </div>
                                            <div class="col-sm-8" style="padding-left: 0px; padding-right: 0px;">
                                                <div class="col-sm-4" style="padding-left: 0px;">
                                                    <div class="containImage">
                                                        <img src="images/home/gallery1.jpg"
                                                             style="width: 100%; height: 100%">
                                                    </div>
                                                </div>
                                                <div class="col-sm-8" style="padding-right: 0px; padding-left: 0px;">
                                                    <p class="index" style="margin-bottom: 1px; font-weight: bold;">
                                                        Nhẫn bạc đính đá PNJSilver XM00K000088
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="col-sm-4">
                                                <p class="index">317.000đ</p>
                                            </div>
                                            <div class="col-sm-2">
                                                <p class="index">1</p>
                                            </div>
                                            <div class="col-sm-6">
                                                <p class="index">317.000đ</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="cancelBill">
                                    <div class="col-sm-5"></div>
                                    <div class="col-sm-2">
                                        <button class="btn">Hủy đơn hàng</button>
                                    </div>
                                    <div class="col-sm-5"></div>
                                </div>
                            </div>
                            <div>
                                <p class="billID">Mã đơn: HD0002</p>
                                <div class="headTitle row">
                                    <div class="col-sm-8">

                                        <div class="col-sm-4">
                                            <p>Mã sản phẩm</p>
                                        </div>
                                        <div class="col-sm-8">
                                            <p>Mục sản phẩm</p>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="col-sm-3">
                                            <p>Giá</p>
                                        </div>
                                        <div class="col-sm-3">
                                            <p>Số lượng</p>
                                        </div>
                                        <div class="col-sm-6">
                                            <p>Tổng tiền</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="productList">
                                    <div class="row productInfor">
                                        <div class="col-sm-8">

                                            <div class="col-sm-4">
                                                <p class="index">SNXM00K000088</p>
                                            </div>
                                            <div class="col-sm-8" style="padding-left: 0px; padding-right: 0px;">
                                                <div class="col-sm-4" style="padding-left: 0px;">
                                                    <div class="containImage">
                                                        <img src="images/home/gallery1.jpg"
                                                             style="width: 100%; height: 100%">
                                                    </div>
                                                </div>
                                                <div class="col-sm-8" style="padding-right: 0px; padding-left: 0px;">
                                                    <p class="index" style="margin-bottom: 1px; font-weight: bold;">
                                                        Nhẫn bạc đính đá PNJSilver XM00K000088
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="col-sm-4">
                                                <p class="index">317.000đ</p>
                                            </div>
                                            <div class="col-sm-2">
                                                <p class="index">1</p>
                                            </div>
                                            <div class="col-sm-6">
                                                <p class="index">317.000đ</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row productInfor">
                                        <div class="col-sm-8">

                                            <div class="col-sm-4">
                                                <p class="index">SNXM00K000088</p>
                                            </div>
                                            <div class="col-sm-8" style="padding-left: 0px; padding-right: 0px;">
                                                <div class="col-sm-4" style="padding-left: 0px;">
                                                    <div class="containImage">
                                                        <img src="images/home/gallery1.jpg"
                                                             style="width: 100%; height: 100%">
                                                    </div>
                                                </div>
                                                <div class="col-sm-8" style="padding-right: 0px; padding-left: 0px;">
                                                    <p class="index" style="margin-bottom: 1px; font-weight: bold;">
                                                        Nhẫn bạc đính đá PNJSilver XM00K000088
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="col-sm-4">
                                                <p class="index">317.000đ</p>
                                            </div>
                                            <div class="col-sm-2">
                                                <p class="index">1</p>
                                            </div>
                                            <div class="col-sm-6">
                                                <p class="index">317.000đ</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row productInfor">
                                        <div class="col-sm-8">

                                            <div class="col-sm-4">
                                                <p class="index">SNXM00K000088</p>
                                            </div>
                                            <div class="col-sm-8" style="padding-left: 0px; padding-right: 0px;">
                                                <div class="col-sm-4" style="padding-left: 0px;">
                                                    <div class="containImage">
                                                        <img src="images/home/gallery1.jpg"
                                                             style="width: 100%; height: 100%">
                                                    </div>
                                                </div>
                                                <div class="col-sm-8" style="padding-right: 0px; padding-left: 0px;">
                                                    <p class="index" style="margin-bottom: 1px; font-weight: bold;">
                                                        Nhẫn bạc đính đá PNJSilver XM00K000088
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="col-sm-4">
                                                <p class="index">317.000đ</p>
                                            </div>
                                            <div class="col-sm-2">
                                                <p class="index">1</p>
                                            </div>
                                            <div class="col-sm-6">
                                                <p class="index">317.000đ</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row productInfor">
                                        <div class="col-sm-8">

                                            <div class="col-sm-4">
                                                <p class="index">SNXM00K000088</p>
                                            </div>
                                            <div class="col-sm-8" style="padding-left: 0px; padding-right: 0px;">
                                                <div class="col-sm-4" style="padding-left: 0px;">
                                                    <div class="containImage">
                                                        <img src="images/home/gallery1.jpg"
                                                             style="width: 100%; height: 100%">
                                                    </div>
                                                </div>
                                                <div class="col-sm-8" style="padding-right: 0px; padding-left: 0px;">
                                                    <p class="index" style="margin-bottom: 1px; font-weight: bold;">
                                                        Nhẫn bạc đính đá PNJSilver XM00K000088
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="col-sm-4">
                                                <p class="index">317.000đ</p>
                                            </div>
                                            <div class="col-sm-2">
                                                <p class="index">1</p>
                                            </div>
                                            <div class="col-sm-6">
                                                <p class="index">317.000đ</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="cancelBill">
                                    <div class="col-sm-5"></div>
                                    <div class="col-sm-2">
                                        <button class="btn">Hủy đơn hàng</button>
                                    </div>
                                    <div class="col-sm-5"></div>
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane fade  in container" id="choLayHang">
                            <div>
                                <p class="billID">Mã đơn: HD0001</p>
                                <div class="headTitle row">
                                    <div class="col-sm-8">

                                        <div class="col-sm-4">
                                            <p>Mã sản phẩm</p>
                                        </div>
                                        <div class="col-sm-8">
                                            <p>Mục sản phẩm</p>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="col-sm-3">
                                            <p>Giá</p>
                                        </div>
                                        <div class="col-sm-3">
                                            <p>Số lượng</p>
                                        </div>
                                        <div class="col-sm-6">
                                            <p>Tổng tiền</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="productList">
                                    <div class="row productInfor">
                                        <div class="col-sm-8">

                                            <div class="col-sm-4">
                                                <p class="index">SNXM00K000088</p>
                                            </div>
                                            <div class="col-sm-8" style="padding-left: 0px; padding-right: 0px;">
                                                <div class="col-sm-4" style="padding-left: 0px;">
                                                    <div class="containImage">
                                                        <img src="images/home/gallery1.jpg"
                                                             style="width: 100%; height: 100%">
                                                    </div>
                                                </div>
                                                <div class="col-sm-8" style="padding-right: 0px; padding-left: 0px;">
                                                    <p class="index" style="margin-bottom: 1px; font-weight: bold;">
                                                        Nhẫn bạc đính đá PNJSilver XM00K000088
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="col-sm-4">
                                                <p class="index">317.000đ</p>
                                            </div>
                                            <div class="col-sm-2">
                                                <p class="index">1</p>
                                            </div>
                                            <div class="col-sm-6">
                                                <p class="index">317.000đ</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row productInfor">
                                        <div class="col-sm-8">

                                            <div class="col-sm-4">
                                                <p class="index">SNXM00K000088</p>
                                            </div>
                                            <div class="col-sm-8" style="padding-left: 0px; padding-right: 0px;">
                                                <div class="col-sm-4" style="padding-left: 0px;">
                                                    <div class="containImage">
                                                        <img src="images/home/gallery1.jpg"
                                                             style="width: 100%; height: 100%">
                                                    </div>
                                                </div>
                                                <div class="col-sm-8" style="padding-right: 0px; padding-left: 0px;">
                                                    <p class="index" style="margin-bottom: 1px; font-weight: bold;">
                                                        Nhẫn bạc đính đá PNJSilver XM00K000088
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="col-sm-4">
                                                <p class="index">317.000đ</p>
                                            </div>
                                            <div class="col-sm-2">
                                                <p class="index">1</p>
                                            </div>
                                            <div class="col-sm-6">
                                                <p class="index">317.000đ</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row productInfor">
                                        <div class="col-sm-8">

                                            <div class="col-sm-4">
                                                <p class="index">SNXM00K000088</p>
                                            </div>
                                            <div class="col-sm-8" style="padding-left: 0px; padding-right: 0px;">
                                                <div class="col-sm-4" style="padding-left: 0px;">
                                                    <div class="containImage">
                                                        <img src="images/home/gallery1.jpg"
                                                             style="width: 100%; height: 100%">
                                                    </div>
                                                </div>
                                                <div class="col-sm-8" style="padding-right: 0px; padding-left: 0px;">
                                                    <p class="index" style="margin-bottom: 1px; font-weight: bold;">
                                                        Nhẫn bạc đính đá PNJSilver XM00K000088
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="col-sm-4">
                                                <p class="index">317.000đ</p>
                                            </div>
                                            <div class="col-sm-2">
                                                <p class="index">1</p>
                                            </div>
                                            <div class="col-sm-6">
                                                <p class="index">317.000đ</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row productInfor">
                                        <div class="col-sm-8">

                                            <div class="col-sm-4">
                                                <p class="index">SNXM00K000088</p>
                                            </div>
                                            <div class="col-sm-8" style="padding-left: 0px; padding-right: 0px;">
                                                <div class="col-sm-4" style="padding-left: 0px;">
                                                    <div class="containImage">
                                                        <img src="images/home/gallery1.jpg"
                                                             style="width: 100%; height: 100%">
                                                    </div>
                                                </div>
                                                <div class="col-sm-8" style="padding-right: 0px; padding-left: 0px;">
                                                    <p class="index" style="margin-bottom: 1px; font-weight: bold;">
                                                        Nhẫn bạc đính đá PNJSilver XM00K000088
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="col-sm-4">
                                                <p class="index">317.000đ</p>
                                            </div>
                                            <div class="col-sm-2">
                                                <p class="index">1</p>
                                            </div>
                                            <div class="col-sm-6">
                                                <p class="index">317.000đ</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <p class="billID">Mã đơn: HD0002</p>
                                <div class="headTitle row">
                                    <div class="col-sm-8">

                                        <div class="col-sm-4">
                                            <p>Mã sản phẩm</p>
                                        </div>
                                        <div class="col-sm-8">
                                            <p>Mục sản phẩm</p>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="col-sm-3">
                                            <p>Giá</p>
                                        </div>
                                        <div class="col-sm-3">
                                            <p>Số lượng</p>
                                        </div>
                                        <div class="col-sm-6">
                                            <p>Tổng tiền</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="productList">
                                    <div class="row productInfor">
                                        <div class="col-sm-8">

                                            <div class="col-sm-4">
                                                <p class="index">SNXM00K000088</p>
                                            </div>
                                            <div class="col-sm-8" style="padding-left: 0px; padding-right: 0px;">
                                                <div class="col-sm-4" style="padding-left: 0px;">
                                                    <div class="containImage">
                                                        <img src="images/home/gallery1.jpg"
                                                             style="width: 100%; height: 100%">
                                                    </div>
                                                </div>
                                                <div class="col-sm-8" style="padding-right: 0px; padding-left: 0px;">
                                                    <p class="index" style="margin-bottom: 1px; font-weight: bold;">
                                                        Nhẫn bạc đính đá PNJSilver XM00K000088
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="col-sm-4">
                                                <p class="index">317.000đ</p>
                                            </div>
                                            <div class="col-sm-2">
                                                <p class="index">1</p>
                                            </div>
                                            <div class="col-sm-6">
                                                <p class="index">317.000đ</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row productInfor">
                                        <div class="col-sm-8">

                                            <div class="col-sm-4">
                                                <p class="index">SNXM00K000088</p>
                                            </div>
                                            <div class="col-sm-8" style="padding-left: 0px; padding-right: 0px;">
                                                <div class="col-sm-4" style="padding-left: 0px;">
                                                    <div class="containImage">
                                                        <img src="images/home/gallery1.jpg"
                                                             style="width: 100%; height: 100%">
                                                    </div>
                                                </div>
                                                <div class="col-sm-8" style="padding-right: 0px; padding-left: 0px;">
                                                    <p class="index" style="margin-bottom: 1px; font-weight: bold;">
                                                        Nhẫn bạc đính đá PNJSilver XM00K000088
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="col-sm-4">
                                                <p class="index">317.000đ</p>
                                            </div>
                                            <div class="col-sm-2">
                                                <p class="index">1</p>
                                            </div>
                                            <div class="col-sm-6">
                                                <p class="index">317.000đ</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row productInfor">
                                        <div class="col-sm-8">

                                            <div class="col-sm-4">
                                                <p class="index">SNXM00K000088</p>
                                            </div>
                                            <div class="col-sm-8" style="padding-left: 0px; padding-right: 0px;">
                                                <div class="col-sm-4" style="padding-left: 0px;">
                                                    <div class="containImage">
                                                        <img src="images/home/gallery1.jpg"
                                                             style="width: 100%; height: 100%">
                                                    </div>
                                                </div>
                                                <div class="col-sm-8" style="padding-right: 0px; padding-left: 0px;">
                                                    <p class="index" style="margin-bottom: 1px; font-weight: bold;">
                                                        Nhẫn bạc đính đá PNJSilver XM00K000088
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="col-sm-4">
                                                <p class="index">317.000đ</p>
                                            </div>
                                            <div class="col-sm-2">
                                                <p class="index">1</p>
                                            </div>
                                            <div class="col-sm-6">
                                                <p class="index">317.000đ</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row productInfor">
                                        <div class="col-sm-8">

                                            <div class="col-sm-4">
                                                <p class="index">SNXM00K000088</p>
                                            </div>
                                            <div class="col-sm-8" style="padding-left: 0px; padding-right: 0px;">
                                                <div class="col-sm-4" style="padding-left: 0px;">
                                                    <div class="containImage">
                                                        <img src="images/home/gallery1.jpg"
                                                             style="width: 100%; height: 100%">
                                                    </div>
                                                </div>
                                                <div class="col-sm-8" style="padding-right: 0px; padding-left: 0px;">
                                                    <p class="index" style="margin-bottom: 1px; font-weight: bold;">
                                                        Nhẫn bạc đính đá PNJSilver XM00K000088
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="col-sm-4">
                                                <p class="index">317.000đ</p>
                                            </div>
                                            <div class="col-sm-2">
                                                <p class="index">1</p>
                                            </div>
                                            <div class="col-sm-6">
                                                <p class="index">317.000đ</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade  in container" id="daGiao">
                            <div>
                                <p class="billID">Mã đơn: HD0002</p>
                                <div class="headTitle row">
                                    <div class="col-sm-8">

                                        <div class="col-sm-4">
                                            <p>Mã sản phẩm</p>
                                        </div>
                                        <div class="col-sm-8">
                                            <p>Mục sản phẩm</p>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="col-sm-3">
                                            <p>Giá</p>
                                        </div>
                                        <div class="col-sm-3">
                                            <p>Số lượng</p>
                                        </div>
                                        <div class="col-sm-6">
                                            <p>Tổng tiền</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="productList">
                                    <div class="row productInfor">
                                        <div class="col-sm-8">

                                            <div class="col-sm-4">
                                                <p class="index">SNXM00K000088</p>
                                            </div>
                                            <div class="col-sm-8" style="padding-left: 0px; padding-right: 0px;">
                                                <div class="col-sm-4" style="padding-left: 0px;">
                                                    <div class="containImage">
                                                        <img src="images/home/gallery1.jpg"
                                                             style="width: 100%; height: 100%">
                                                    </div>
                                                </div>
                                                <div class="col-sm-8" style="padding-right: 0px; padding-left: 0px;">
                                                    <p class="index" style="margin-bottom: 1px; font-weight: bold;">
                                                        Nhẫn bạc đính đá PNJSilver XM00K000088
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="col-sm-4">
                                                <p class="index">317.000đ</p>
                                            </div>
                                            <div class="col-sm-2">
                                                <p class="index">1</p>
                                            </div>
                                            <div class="col-sm-6">
                                                <p class="index">317.000đ</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row productInfor">
                                        <div class="col-sm-8">

                                            <div class="col-sm-4">
                                                <p class="index">SNXM00K000088</p>
                                            </div>
                                            <div class="col-sm-8" style="padding-left: 0px; padding-right: 0px;">
                                                <div class="col-sm-4" style="padding-left: 0px;">
                                                    <div class="containImage">
                                                        <img src="images/home/gallery1.jpg"
                                                             style="width: 100%; height: 100%">
                                                    </div>
                                                </div>
                                                <div class="col-sm-8" style="padding-right: 0px; padding-left: 0px;">
                                                    <p class="index" style="margin-bottom: 1px; font-weight: bold;">
                                                        Nhẫn bạc đính đá PNJSilver XM00K000088
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="col-sm-4">
                                                <p class="index">317.000đ</p>
                                            </div>
                                            <div class="col-sm-2">
                                                <p class="index">1</p>
                                            </div>
                                            <div class="col-sm-6">
                                                <p class="index">317.000đ</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row productInfor">
                                        <div class="col-sm-8">

                                            <div class="col-sm-4">
                                                <p class="index">SNXM00K000088</p>
                                            </div>
                                            <div class="col-sm-8" style="padding-left: 0px; padding-right: 0px;">
                                                <div class="col-sm-4" style="padding-left: 0px;">
                                                    <div class="containImage">
                                                        <img src="images/home/gallery1.jpg"
                                                             style="width: 100%; height: 100%">
                                                    </div>
                                                </div>
                                                <div class="col-sm-8" style="padding-right: 0px; padding-left: 0px;">
                                                    <p class="index" style="margin-bottom: 1px; font-weight: bold;">
                                                        Nhẫn bạc đính đá PNJSilver XM00K000088
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="col-sm-4">
                                                <p class="index">317.000đ</p>
                                            </div>
                                            <div class="col-sm-2">
                                                <p class="index">1</p>
                                            </div>
                                            <div class="col-sm-6">
                                                <p class="index">317.000đ</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row productInfor">
                                        <div class="col-sm-8">

                                            <div class="col-sm-4">
                                                <p class="index">SNXM00K000088</p>
                                            </div>
                                            <div class="col-sm-8" style="padding-left: 0px; padding-right: 0px;">
                                                <div class="col-sm-4" style="padding-left: 0px;">
                                                    <div class="containImage">
                                                        <img src="images/home/gallery1.jpg"
                                                             style="width: 100%; height: 100%">
                                                    </div>
                                                </div>
                                                <div class="col-sm-8" style="padding-right: 0px; padding-left: 0px;">
                                                    <p class="index" style="margin-bottom: 1px; font-weight: bold;">
                                                        Nhẫn bạc đính đá PNJSilver XM00K000088
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="col-sm-4">
                                                <p class="index">317.000đ</p>
                                            </div>
                                            <div class="col-sm-2">
                                                <p class="index">1</p>
                                            </div>
                                            <div class="col-sm-6">
                                                <p class="index">317.000đ</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="tab-pane fade  in container" id="traHang">
                            <div>
                                <p class="billID">Mã đơn: HD0002</p>
                                <div class="headTitle row">
                                    <div class="col-sm-8">

                                        <div class="col-sm-4">
                                            <p>Mã sản phẩm</p>
                                        </div>
                                        <div class="col-sm-8">
                                            <p>Mục sản phẩm</p>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="col-sm-3">
                                            <p>Giá</p>
                                        </div>
                                        <div class="col-sm-3">
                                            <p>Số lượng</p>
                                        </div>
                                        <div class="col-sm-6">
                                            <p>Tổng tiền</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="productList">
                                    <div class="row productInfor">
                                        <div class="col-sm-8">

                                            <div class="col-sm-4">
                                                <p class="index">SNXM00K000088</p>
                                            </div>
                                            <div class="col-sm-8" style="padding-left: 0px; padding-right: 0px;">
                                                <div class="col-sm-4" style="padding-left: 0px;">
                                                    <div class="containImage">
                                                        <img src="images/home/gallery1.jpg"
                                                             style="width: 100%; height: 100%">
                                                    </div>
                                                </div>
                                                <div class="col-sm-8" style="padding-right: 0px; padding-left: 0px;">
                                                    <p class="index" style="margin-bottom: 1px; font-weight: bold;">
                                                        Nhẫn bạc đính đá PNJSilver XM00K000088
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="col-sm-4">
                                                <p class="index">317.000đ</p>
                                            </div>
                                            <div class="col-sm-2">
                                                <p class="index">1</p>
                                            </div>
                                            <div class="col-sm-6">
                                                <p class="index">317.000đ</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row productInfor">
                                        <div class="col-sm-8">

                                            <div class="col-sm-4">
                                                <p class="index">SNXM00K000088</p>
                                            </div>
                                            <div class="col-sm-8" style="padding-left: 0px; padding-right: 0px;">
                                                <div class="col-sm-4" style="padding-left: 0px;">
                                                    <div class="containImage">
                                                        <img src="images/home/gallery1.jpg"
                                                             style="width: 100%; height: 100%">
                                                    </div>
                                                </div>
                                                <div class="col-sm-8" style="padding-right: 0px; padding-left: 0px;">
                                                    <p class="index" style="margin-bottom: 1px; font-weight: bold;">
                                                        Nhẫn bạc đính đá PNJSilver XM00K000088
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="col-sm-4">
                                                <p class="index">317.000đ</p>
                                            </div>
                                            <div class="col-sm-2">
                                                <p class="index">1</p>
                                            </div>
                                            <div class="col-sm-6">
                                                <p class="index">317.000đ</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row productInfor">
                                        <div class="col-sm-8">

                                            <div class="col-sm-4">
                                                <p class="index">SNXM00K000088</p>
                                            </div>
                                            <div class="col-sm-8" style="padding-left: 0px; padding-right: 0px;">
                                                <div class="col-sm-4" style="padding-left: 0px;">
                                                    <div class="containImage">
                                                        <img src="images/home/gallery1.jpg"
                                                             style="width: 100%; height: 100%">
                                                    </div>
                                                </div>
                                                <div class="col-sm-8" style="padding-right: 0px; padding-left: 0px;">
                                                    <p class="index" style="margin-bottom: 1px; font-weight: bold;">
                                                        Nhẫn bạc đính đá PNJSilver XM00K000088
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="col-sm-4">
                                                <p class="index">317.000đ</p>
                                            </div>
                                            <div class="col-sm-2">
                                                <p class="index">1</p>
                                            </div>
                                            <div class="col-sm-6">
                                                <p class="index">317.000đ</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row productInfor">
                                        <div class="col-sm-8">

                                            <div class="col-sm-4">
                                                <p class="index">SNXM00K000088</p>
                                            </div>
                                            <div class="col-sm-8" style="padding-left: 0px; padding-right: 0px;">
                                                <div class="col-sm-4" style="padding-left: 0px;">
                                                    <div class="containImage">
                                                        <img src="images/home/gallery1.jpg"
                                                             style="width: 100%; height: 100%">
                                                    </div>
                                                </div>
                                                <div class="col-sm-8" style="padding-right: 0px; padding-left: 0px;">
                                                    <p class="index" style="margin-bottom: 1px; font-weight: bold;">
                                                        Nhẫn bạc đính đá PNJSilver XM00K000088
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="col-sm-4">
                                                <p class="index">317.000đ</p>
                                            </div>
                                            <div class="col-sm-2">
                                                <p class="index">1</p>
                                            </div>
                                            <div class="col-sm-6">
                                                <p class="index">317.000đ</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade  in container" id="daHuy">
                            <div>
                                <p class="billID">Mã đơn: HD0002</p>
                                <div class="headTitle row">
                                    <div class="col-sm-8">

                                        <div class="col-sm-4">
                                            <p>Mã sản phẩm</p>
                                        </div>
                                        <div class="col-sm-8">
                                            <p>Mục sản phẩm</p>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="col-sm-3">
                                            <p>Giá</p>
                                        </div>
                                        <div class="col-sm-3">
                                            <p>Số lượng</p>
                                        </div>
                                        <div class="col-sm-6">
                                            <p>Tổng tiền</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="productList">
                                    <div class="row productInfor">
                                        <div class="col-sm-8">

                                            <div class="col-sm-4">
                                                <p class="index">SNXM00K000088</p>
                                            </div>
                                            <div class="col-sm-8" style="padding-left: 0px; padding-right: 0px;">
                                                <div class="col-sm-4" style="padding-left: 0px;">
                                                    <div class="containImage">
                                                        <img src="images/home/gallery1.jpg"
                                                             style="width: 100%; height: 100%">
                                                    </div>
                                                </div>
                                                <div class="col-sm-8" style="padding-right: 0px; padding-left: 0px;">
                                                    <p class="index" style="margin-bottom: 1px; font-weight: bold;">
                                                        Nhẫn bạc đính đá PNJSilver XM00K000088
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="col-sm-4">
                                                <p class="index">317.000đ</p>
                                            </div>
                                            <div class="col-sm-2">
                                                <p class="index">1</p>
                                            </div>
                                            <div class="col-sm-6">
                                                <p class="index">317.000đ</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row productInfor">
                                        <div class="col-sm-8">

                                            <div class="col-sm-4">
                                                <p class="index">SNXM00K000088</p>
                                            </div>
                                            <div class="col-sm-8" style="padding-left: 0px; padding-right: 0px;">
                                                <div class="col-sm-4" style="padding-left: 0px;">
                                                    <div class="containImage">
                                                        <img src="images/home/gallery1.jpg"
                                                             style="width: 100%; height: 100%">
                                                    </div>
                                                </div>
                                                <div class="col-sm-8" style="padding-right: 0px; padding-left: 0px;">
                                                    <p class="index" style="margin-bottom: 1px; font-weight: bold;">
                                                        Nhẫn bạc đính đá PNJSilver XM00K000088
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="col-sm-4">
                                                <p class="index">317.000đ</p>
                                            </div>
                                            <div class="col-sm-2">
                                                <p class="index">1</p>
                                            </div>
                                            <div class="col-sm-6">
                                                <p class="index">317.000đ</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row productInfor">
                                        <div class="col-sm-8">

                                            <div class="col-sm-4">
                                                <p class="index">SNXM00K000088</p>
                                            </div>
                                            <div class="col-sm-8" style="padding-left: 0px; padding-right: 0px;">
                                                <div class="col-sm-4" style="padding-left: 0px;">
                                                    <div class="containImage">
                                                        <img src="images/home/gallery1.jpg"
                                                             style="width: 100%; height: 100%">
                                                    </div>
                                                </div>
                                                <div class="col-sm-8" style="padding-right: 0px; padding-left: 0px;">
                                                    <p class="index" style="margin-bottom: 1px; font-weight: bold;">
                                                        Nhẫn bạc đính đá PNJSilver XM00K000088
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="col-sm-4">
                                                <p class="index">317.000đ</p>
                                            </div>
                                            <div class="col-sm-2">
                                                <p class="index">1</p>
                                            </div>
                                            <div class="col-sm-6">
                                                <p class="index">317.000đ</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row productInfor">
                                        <div class="col-sm-8">

                                            <div class="col-sm-4">
                                                <p class="index">SNXM00K000088</p>
                                            </div>
                                            <div class="col-sm-8" style="padding-left: 0px; padding-right: 0px;">
                                                <div class="col-sm-4" style="padding-left: 0px;">
                                                    <div class="containImage">
                                                        <img src="images/home/gallery1.jpg"
                                                             style="width: 100%; height: 100%">
                                                    </div>
                                                </div>
                                                <div class="col-sm-8" style="padding-right: 0px; padding-left: 0px;">
                                                    <p class="index" style="margin-bottom: 1px; font-weight: bold;">
                                                        Nhẫn bạc đính đá PNJSilver XM00K000088
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="col-sm-4">
                                                <p class="index">317.000đ</p>
                                            </div>
                                            <div class="col-sm-2">
                                                <p class="index">1</p>
                                            </div>
                                            <div class="col-sm-6">
                                                <p class="index">317.000đ</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div><!--/category-tab-->


                </div>
            </div>
        </div>
    </div>
</section>

<footer id="footer"><!--Footer-->


    <div class="footer-widget">
        <div class="container">
            <div class="row">
                <div class="col-sm-8">
                    <div class="single-widget">
                        <h2>© 2017 Công Ty Cổ Phần Vàng Bạc Đá Quý Nông Lâm</h2>
                        <ul class="nav nav-pills nav-stacked">
                            <p>217 Quận Thủ Đức, TP. Hồ Chí Minh</p>
                            <p>SĐT: 0988972381</p>
                            <p>Email: nonglamdaquy@nonglam.com</p>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-3 col-sm-offset-1">
                    <div class="single-widget">
                        <h2>Nhận thông tin</h2>
                        <form action="#" class="searchform">
                            <input type="text" placeholder="Email của bạn"/>
                            <button type="submit" class="btn btn-default"><i class="fa fa-arrow-circle-o-right"></i>
                            </button>
                            <p>Nhận thông tin mới nhất từ cửa hàng của chúng tôi!</p>
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <div class="footer-bottom">
        <div class="container">
            <div class="row">
            </div>
        </div>
    </div>

</footer><!--/Footer-->


<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.scrollUp.min.js"></script>
<script src="js/price-range.js"></script>
<script src="js/jquery.prettyPhoto.js"></script>
<script src="js/main.js"></script>
</body>
</html>