<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="/resources/css/modal.css">
    <link rel="stylesheet" href="/resources/css/test.css">

    <style>
        @media (min-width: 768px) {
            .container {
                width: 760px;
                max-width: 760px;
            }
        }

        @media (min-width: 992px) {
            .container {
                width: 980px;
                max-width: 980px;
            }
        }

        @media (min-width: 1200px) {
            .container {
                width: 1180px;
                max-width: 1180px;
            }
        }

        body {
            -ms-overflow-style: none;
        }

        ::-webkit-scrollbar {
            display: none;
        }

    </style>

</head>

<nav class="navbar navbar-expand-md  navbar-dark fixed-top shadow-lg bg-dark">
    <a class="navbar-brand" href="#">맘스터치</a>
    <ul class="navbar-nav">
        <a href='http://localhost:5000/' class='nav-link' style="color:white">처음으로</a>
        <a href='#' class='nav-link' style="color:white">직원호출</a>
        <%--        <a href="#none" class='nav-link' target="_blank" onclick="openPop()" style="color:white">팝업테스트</a>--%>
    </ul>
    <ul class="navbar-nav ml-auto">
        <%--        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">--%>
        <%--            Launch demo modal--%>
        <%--        </button>--%>
        <button class="btn btn-primary" id="micBtn">
            음성인식시작
        </button>
        <button class="btn btn-primary" id="micBtn2">
            마이크ON
        </button>
        <button class="btn btn-primary" id="micStopBtn">
            마이크OFF
        </button>
    </ul>
</nav>

<body>

<div class="container" style="margin-top: 90px">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-10">
                            <%--                                    <p class="card-text" id="middleResult"></p>--%>
                            <p class="card-text" id="finalResult"></p>
                            <%--                                    <p class="card-text" id="DetectedIntent"></p>--%>
                            <p class="card-text" id="FulfillmentText"></p>
                        </div>
                        <div class="col-md-2" style="text-align: right">

                            <img class="card-img" id="micOnImg" src="/resources/img/마이크.gif" style="width:100px"
                                 alt="Card image"/>
                            <img class="card-img" id="micOffImg" src="resources/img/micstop.gif" style="width:100px"
                                 alt="Card image"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<ul class="nav nav-tabs nav-justified" style="margin-top:30px">
    <li class="nav-item">
        <a class="nav-link active" id="burgerSetTab" data-toggle="tab" href="#burgerSetList">버거세트</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" id="chickenTab" data-toggle="tab" href="#chickenList">치킨</a>
    </li>
    <%--    <li class="nav-item">--%>
    <%--        <a class="nav-link" id="burgerTab" data-toggle="tab" href="#burgerList">버거단품</a>--%>
    <%--    </li>--%>
    <li class="nav-item">
        <a class="nav-link" id="sideTab" data-toggle="tab" href="#sideList">사이드</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" id="drinkTab" data-toggle="tab" href="#drinkList">드링크</a>
    </li>
</ul>


<div class="tab-content" style="height: 700px; overflow: auto;">
    <div class="tab-pane fade show active" id="burgerSetList">
        <div class="container">
            <div class="row">
                <%--                <div class="col-md-4 col-lg-3">--%>
                <%--                    <div class="card menu-class" style="width: 14rem; margin-top:50px;" id="testMenu">--%>
                <%--                        <img class="card-img-top" src="/resources/img/DetailImage.jpg" alt="Card image cap">--%>
                <%--                        <div class="card-body">--%>
                <%--                            <p class="card-text menu-name">싸이버거 세트</p>--%>
                <%--                            <p class="card-text menu-content">싸이버거 세트입니다.</p>--%>
                <%--                            <p class="card-text menu-price">가격은 5,600원 입니다.</p>--%>
                <%--                        </div>--%>
                <%--                    </div>--%>
                <%--                </div>--%>
                <%--                <div class="col-md-4 col-lg-3">--%>
                <%--                    <div class="card menu-class" style="width: 14rem; margin-top:50px;" id="testMenu2">--%>
                <%--                        <img class="card-img-top" src="/resources/img/DetailImage.jpg" alt="Card image cap">--%>
                <%--                        <div class="card-body">--%>
                <%--                            <p class="card-text menu-name">인크레더블 세트</p>--%>
                <%--                            <p class="card-text menu-content">인크레더블 세트입니다.</p>--%>
                <%--                            <p class="card-text menu-price">가격은 7,600원 입니다.</p>--%>
                <%--                        </div>--%>
                <%--                    </div>--%>
                <%--                </div>--%>
            </div>
        </div>
    </div>
    <div class="tab-pane fade" id="chickenList">
        <p>치킨세트 메뉴들</p>
    </div>
    <div class="tab-pane fade" id="burgerList">
        <p>햄버거단품 메뉴들</p>
    </div>
    <div class="tab-pane fade" id="sideList">
        <p>사이드 메뉴들</p>
    </div>
    <div class="tab-pane fade" id="drinkList">
        <p>드링크 메뉴들</p>
    </div>
</div>

<%--middleResult, DetectedIntent 테스트용--%>
<%--<p class="card-text" id="middleResult"></p>--%>
<%--<p class="card-text" id="DetectedIntent"></p>--%>

<div class="modal" id="orderModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true"
     style="z-index:1050">
    <%--        <div class="modal-dialog" role="document" style="max-width: none;>--%>
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="orderModalMenuName"></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p id="orderModalMenuContent">대충 메뉴 설명들</p>
                <p id="orderModalMenuPrice">가격</p>
                <p id="orderModalTopping"></p>
                <button class="btn btn-primary menu-topping">토핑추가</button>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                <button type="button" class="btn btn-primary">주문</button>
            </div>
        </div>
    </div>
</div>

<div class="modal" id="toppingModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true"
     style="z-index:1060">
    <%--    <div class="modal-dialog" role="document" style="max-width: none; margin-top: 293px">--%>
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="toppingModalTitle">토핑추가</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="toppingSelectBacon">
                    <label class="form-check-label" for="toppingSelectBacon">
                        베이컨
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="toppingSelectBeefpatty">
                    <label class="form-check-label" for="toppingSelectBeefpatty">
                        비프패티
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="toppingSelectTomato">
                    <label class="form-check-label" for="toppingSelectTomato">
                        토마토
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="toppingSelectCheese">
                    <label class="form-check-label" for="toppingSelectCheese">
                        치즈
                    </label>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                <button type="button" class="btn btn-primary">확인</button>
            </div>
        </div>
    </div>
</div>

<div class="modal" id="searchModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true"
     data-backdrop="false" style="z-index:1041">
    <%--    <div class="modal-dialog" role="document" style="max-width: none; margin-top: 293px">--%>
    <div class="modal-dialog" role="document" style="max-width: 95%; margin-top: 300px;">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="searchModalTitle">검색하신 "" 결과입니다.</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="container" style="height: 500px; overflow: auto;">
                    <div class="row" id="searchModalMenuList">
                        <%--                        <div class="col-md-4 col-lg-3">--%>
                        <%--                            <div class="card" style="width: 14rem; margin-top:50px;">--%>
                        <%--                                <img class="card-img-top" src="/resources/img/DetailImage.jpg" alt="Card image cap">--%>
                        <%--                                <div class="card-body">--%>
                        <%--                                    <p class="card-text">Some quick example text to build on the card title and--%>
                        <%--                                        make--%>
                        <%--                                        up the bulk--%>
                        <%--                                        of the card's content.</p>--%>
                        <%--                                </div>--%>
                        <%--                            </div>--%>
                        <%--                        </div>--%>
                        <%--                        <div class="col-md-4 col-lg-3">--%>
                        <%--                            <div class="card" style="width: 14rem; margin-top:50px;">--%>
                        <%--                                <img class="card-img-top" src="/resources/img/DetailImage.jpg" alt="Card image cap">--%>
                        <%--                                <div class="card-body">--%>
                        <%--                                    <p class="card-text">Some quick example text to build on the card title and--%>
                        <%--                                        make--%>
                        <%--                                        up the bulk--%>
                        <%--                                        of the card's content.</p>--%>
                        <%--                                </div>--%>
                        <%--                            </div>--%>
                        <%--                        </div>--%>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                <button type="button" class="btn btn-primary">주문</button>
            </div>
        </div>
    </div>
</div>


<div class="modal" id="numberInputModal" tabindex="-1" role="dialog"
     aria-labelledby="exampleModalLabel" aria-hidden="true" data-backdrop="false">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="numberInputModalTitle">전화번호 입력</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body" style="margin: auto">
                <div class="btn-group-vertical" role="group" aria-label="Basic example">
                    <div class="btn-group">
                        <input class="text-center form-control-lg mb-2" id="code">
                    </div>
                    <div class="btn-group">
                        <button type="button" class="btn btn-outline-secondary py-3"
                                onclick="document.getElementById('code').value=document.getElementById('code').value + '1';">
                            1
                        </button>
                        <button type="button" class="btn btn-outline-secondary py-3"
                                onclick="document.getElementById('code').value=document.getElementById('code').value + '2';">
                            2
                        </button>
                        <button type="button" class="btn btn-outline-secondary py-3"
                                onclick="document.getElementById('code').value=document.getElementById('code').value + '3';">
                            3
                        </button>
                    </div>
                    <div class="btn-group">
                        <button type="button" class="btn btn-outline-secondary py-3"
                                onclick="document.getElementById('code').value=document.getElementById('code').value + '4';">
                            4
                        </button>
                        <button type="button" class="btn btn-outline-secondary py-3"
                                onclick="document.getElementById('code').value=document.getElementById('code').value + '5';">
                            5
                        </button>
                        <button type="button" class="btn btn-outline-secondary py-3"
                                onclick="document.getElementById('code').value=document.getElementById('code').value + '6';">
                            6
                        </button>
                    </div>
                    <div class="btn-group">
                        <button type="button" class="btn btn-outline-secondary py-3"
                                onclick="document.getElementById('code').value=document.getElementById('code').value + '7';">
                            7
                        </button>
                        <button type="button" class="btn btn-outline-secondary py-3"
                                onclick="document.getElementById('code').value=document.getElementById('code').value + '8';">
                            8
                        </button>
                        <button type="button" class="btn btn-outline-secondary py-3"
                                onclick="document.getElementById('code').value=document.getElementById('code').value + '9';">
                            9
                        </button>
                    </div>
                    <div class="btn-group">
                        <button type="button" class="btn btn-outline-secondary py-3"
                                onclick="document.getElementById('code').value=document.getElementById('code').value + '0';"></button>
                        <button type="button" class="btn btn-outline-secondary py-3"
                                onclick="document.getElementById('code').value=document.getElementById('code').value + '0';">
                            0
                        </button>
                        <button type="button" class="btn btn-outline-secondary py-3"
                                onclick="document.getElementById('code').value=document.getElementById('code').value.slice(0, -1);">
                            &lt;
                        </button>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                <button type="button" class="btn btn-primary">확인</button>
            </div>
        </div>
    </div>
</div>

<div class="modal" id="ratingModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true"
     style="z-index:1060" data-backdrop="false">
    <%--    <div class="modal-dialog" role="document" style="max-width: none; margin-top: 293px">--%>
    <div class="modal-dialog" role="document" style="margin-top:230px">
        <div class="modal-content">
            <div class="modal-header d-block">
                <div class="d-flex">
                    <h3 class="modal-title" id="ratingModalTitle">메뉴 평가</h3>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <h7 class="modal-title mb-2 text-muted">메뉴를 5개 이상 선택하여 별점을 주세요.
                    해당 별점은 추천시스템을 이용하실때 반영이 됩니다.
                </h7>
            </div>
            <div class="modal-body" style="height: 580px; overflow: auto;">

                <div style="font-size:20px; text-align: center; margin-bottom: 8px"><strong>햄버거세트</strong></div>
                <div id="burgerSetRatingList">

                </div>
                <div style="font-size:20px; text-align: center; margin-bottom: 8px"><strong>치킨</strong></div>
                <div id="chickenRatingList">

                </div>
                <div style="font-size:20px; text-align: center; margin-bottom: 8px"><strong>사이드</strong></div>
                <div id="sideRatingList">

                </div>
                <div style="font-size:20px; text-align: center; margin-bottom: 8px"><strong>드링크</strong></div>
                <div id="drinkRatingList">

                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                <button type="button" id="ratingModalSubmit" class="btn btn-primary">제출</button>
            </div>
        </div>
    </div>
</div>

<div class="modal" id="choosePayModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true"
     style="z-index:1060">
    <%--    <div class="modal-dialog" role="document" style="max-width: none; margin-top: 293px">--%>
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="choosePayModalTitle">주문확인</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body" id="choosePayModalList">

            </div>
            <div class="modal-footer">
                <span>총 주문 금액: </span><span id="choosePayModalPayment"></span><span>원</span>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                <button type="button" class="btn btn-primary" id="choosePayModalBtn">결제</button>
            </div>
        </div>
    </div>
</div>

<div class="modal" id="maskDetectModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true"
     style="z-index:1060">
    <%--    <div class="modal-dialog" role="document" style="max-width: none; margin-top: 293px">--%>
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="maskDetectModalTitle">마스크확인</h5>
                <%--                <button type="button" class="close" data-dismiss="modal" aria-label="Close">--%>
                <%--                    <span aria-hidden="true">&times;</span>--%>
                <%--                </button>--%>
            </div>
            <div class="modal-body">
                <div id="maskDetectModalBody">
                    <p>마스크를 착용해주세요.</p>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" id="maskDetectModalBtn" data-dismiss="modal">확인</button>
            </div>
        </div>
    </div>
</div>


</body>

<footer>
    <div class="footer bg-dark" style="bottom:0;">
        <div class="select-list" style="height: 285px; overflow: auto;">
            <div class="container">
                <div class="section_seleted_list">
                    <ul class="selected-list" id="selectedList" style="list-style:none; padding-left: 0px;">
                        <%--                        <li>--%>
                        <%--                            <div class="choose_item">--%>
                        <%--                                <p class="tit">--%>
                        <%--                                    <span></span>--%>
                        <%--                                    <span class="txt_tit">싸이버거 세트</span>--%>
                        <%--                                    <span class="txt_option" style="float:right">추가 : 베이컨, 에그<br></span>--%>
                        <%--                                </p>--%>
                        <%--                            </div>--%>
                        <%--                            <div class="choose_calc">--%>
                        <%--                                <div class="input-group" style="width:30%">--%>
                        <%--                                    <button class="btn btn-outline-secondary" type="button" style="width:36px">+--%>
                        <%--                                    </button>--%>
                        <%--                                    <input type="text" class="form-control" value="3">--%>
                        <%--                                    <button class="btn btn-outline-secondary" type="button" style="width:36px">---%>
                        <%--                                    </button>--%>
                        <%--                                </div>--%>
                        <%--                            </div>--%>
                        <%--                            <div class="choose_result">--%>
                        <%--                                <strong>9,100<span>원</span></strong>--%>
                        <%--                                <button class="close"><span>X</span></button>--%>
                        <%--                            </div>--%>
                        <%--                        </li>--%>

                        <%--                        <li id="coreSelectedLi_2">--%>
                        <%--                            <div class="choose_item">--%>
                        <%--                                <p class="tit">--%>
                        <%--                                    <span></span>--%>
                        <%--                                    <span class="txt_tit">싸이버거 세트</span>--%>
                        <%--                                    <span class="txt_option" style="float:right">추가 : 베이컨, 에그<br></span>--%>
                        <%--                                </p>--%>
                        <%--                            </div>--%>
                        <%--                            <div class="choose_calc">--%>
                        <%--                                <div class="input-group" style="width:30%">--%>
                        <%--                                    <button class="btn btn-outline-secondary" type="button" style="width:36px">+--%>
                        <%--                                    </button>--%>
                        <%--                                    <input type="text" class="form-control" placeholder="1">--%>
                        <%--                                    <button class="btn btn-outline-secondary" type="button" style="width:36px">---%>
                        <%--                                    </button>--%>
                        <%--                                </div>--%>
                        <%--                            </div>--%>
                        <%--                            <div class="choose_result">--%>
                        <%--                                <strong>9,100<span>원</span></strong>--%>
                        <%--                                <button class="close"><span>X</span></button>--%>
                        <%--                            </div>--%>
                        <%--                        </li>--%>
                    </ul>
                </div>
            </div>
        </div>
        <div class="container" style="height: 100px; text-align: center; padding-left:0px; padding-top:30px">
            <div class="row">
                <div class="col-md-6">
                    <div class="card">
                        <p style="margin-bottom: 0px">주문한 종류: <span id="totalPayCount">0</span>개 / 총 주문금액: <span
                                id="totalPayPrice">0</span>원</p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card" id="allCancel">
                        전체취소
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card" id="choosePay">
                        결제하기
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>

</html>

<script src='/resources/js/annyang.js'></script>
<script src="/resources/js/menu.js"></script>
<script>

    $(document).ready(function () {
        // $('#numberInputModal').modal('show');
        // testCamera();

        $('#micOnImg').hide();
        $('#micBtn').on("click", function (e) {
            speech("음성인식 서비스를 시작하겠습니다. 원하시는 메뉴를 말씀하세요");
            // 기본적으로 speech발동되고 말이 끝나면 micTest() 실행됨.
            // micTest();
        });

        $('#micBtn2').on("click", function (e) {
            micTest()
        });

        $('#micStopBtn').on("click", function (e) {
            annyang.abort(); // 마이크 중단
        });


        getMenuList(); // 버거세트, 치킨, 사이드, 드링크의 리스트들을 디비에서 불러옴.
        getRatingList();

    });

    function micTest() {
        annyang.start({autoRestart: false, continuous: true});
        // let count = 0;
        // setInterval(function(){
        //     count++;
        //     console.log(count);
        //     if(count == 7){
        //         console.log("마이크초기화");
        //         micTest();
        //     }
        // },1000);

        var result2 = "";
        var recognition = annyang.getSpeechRecognizer();
        var final_transcript = '';
        recognition.interimResults = true;
        recognition.onresult = function (event) {
            var interim_transcript = '';
            final_transcript = '';
            for (var i = event.resultIndex; i < event.results.length; ++i) {
                if (event.results[i].isFinal) {
                    final_transcript += event.results[i][0].transcript;
                    console.log("final_transcript=" + final_transcript);
                    $('#finalResult').html(final_transcript);
                    result2 = final_transcript;
                    console.log(result2);
                    annyang.abort(); // 마이크 중단하고
                    requestMic(result2, function (result) { // 마이크 입력값 처리함.
                        // $('#middleResult').hide();
                        // $('#finalResult').hide();
                        $('#DetectedIntent').html(result.DetectedIntent);
                        $('#FulfillmentText').html(result.FulfillmentText);
                        // speech(result.FulfillmentText);
                        if (result.endOfConversation == true) { // 만약 대화의 끝일경우 처리함수 실행
                            handlingResult(result);
                            speech(result.FulfillmentText, true, result.DetectedIntent); //대화의 끝인경우 대답 후 원하는 메뉴 선택하라고 나옴
                        } else {
                            speech(result.FulfillmentText);
                        }
                    });
                } else {
                    interim_transcript += event.results[i][0].transcript;
                    console.log("interim_transcript=" + interim_transcript);
                    $('#middleResult').html(interim_transcript);
                }
            }

        };
    }

    function requestMic(word, callback, error) {
        $.ajax({
            type: 'get',
            url: '/api/mic/' + word,
            contentType: "text/plain; charset=utf-8",
            success: function (result, status, xhr) {
                if (callback) {
                    callback(result);
                }
            },
            error: function (xhr, status, er) {
            }
        });
    }

    var voices = [];

    function setVoiceList() {
        voices = window.speechSynthesis.getVoices();
    }

    setVoiceList();
    if (window.speechSynthesis.onvoiceschanged !== undefined) {
        window.speechSynthesis.onvoiceschanged = setVoiceList;
    }

    function speech(txt, endOfConversation = false, intent = "") {
        console.log("intent : " + intent);
        $('#FulfillmentText').html(txt);
        if (!window.speechSynthesis) {
            alert("음성 재생을 지원하지 않는 브라우저입니다. 크롬, 파이어폭스 등의 최신 브라우저를 이용하세요");
            return;
        }
        var lang = 'ko-KR';
        var utterThis = new SpeechSynthesisUtterance(txt);
        if (endOfConversation == true && isSearchOrOrder(intent)) {
            utterThis.onend = function (event) {
                console.log('end');
                speech("원하시는 메뉴를 말씀하세요");
                // 이부분은 나중에 intent값 받아와서 원하는 메뉴 묻는거 말고 다른 말이 나올 수 있게 수정할 예정
            };

        } else if (endOfConversation == true && intent == "end") {
            utterThis.onend = function (event) {
                console.log('키오스크끝');
                location.href = "/main";
            };
        } else if (endOfConversation == true) {
            utterThis.onend = function (event) {
                console.log('end');
                micTest();
            };
        } else {
            utterThis.onend = function (event) {
                console.log('end');
                micTest();
            };
        }
        // utterThis.onend = function (event) {
        //     console.log('end');
        //     // $('#middleResult').show();
        //     // $('#finalResult').show();
        //     micTest();
        // };
        utterThis.onerror = function (event) {
            console.log('error', event);
        };
        var voiceFound = false;
        for (var i = 0; i < voices.length; i++) {
            if (voices[i].lang.indexOf(lang) >= 0 || voices[i].lang.indexOf(lang.replace('-', '_')) >= 0) {
                utterThis.voice = voices[i];
                voiceFound = true;
            }
        }
        if (!voiceFound) {
            alert('voice not found');
            return;
        }
        utterThis.lang = lang;
        utterThis.pitch = 1;
        utterThis.rate = 1; //속도
        window.speechSynthesis.speak(utterThis);
    }

    function isSearchOrOrder(inputString) {
        var strArray = inputString.split('_');
        for (var i = 0, len = strArray.length; i < len; i++) {
            if (strArray[i] == "order" || strArray[i] == "Search") {
                console.log(strArray[i]);
                return true;
            }
        }
        return false;
    }

    // 음식 클릭시 modal 생성
    $(document).on('click', '.menu-class', function () {
        console.log($(this).attr('id'));
        $('#orderModalMenuName').html($(this).find('.menu-name').text());
        $('#orderModalMenuContent').html($(this).find('.menu-content').text());
        $('#orderModalMenuPrice').html($(this).find('.menu-price').text());
        $('#orderModal').modal('show');
    });

    $(document).on('click', 'button.menu-topping', function () {
        $('#toppingModal').modal('show');
    });


    function addSelectedLi(name, price, topping = "", quantity) {
        var str = "";
        str += "<li class='choose-item-li'>"
        str += "<div class='choose_item'>";
        str += "<p class='tit'>";
        str += "<span class='txt_tit'>" + name + "</span>";
        str += "<span class='txt_option' style='float:right'>" + topping + "</span></p></div>";
        str += "<div class='choose_calc'>";
        str += "<div class='input-group' style='width:30%'>";
        str += "<button class='btn btn-outline-secondary' type='button' style='width:36px'>+</button>";
        str += "<input type='text' class='form-control choose_quantity' value='" + quantity + "'>";
        str += "<button class='btn btn-outline-secondary' type='button' style='width:36px'>-</button></div></div>";
        str += "<div class='choose_result'>";
        str += "<span class='txt_price'>" + price + "</span><span>원</span>";
        str += "<button class='close choose-item-close'><span>X</span></button></div></li>";
        $('#selectedList').append(str);
        calculateMenu();
    }

    // 음식추가 함수 ex) addSelectedLi("싸이버거", "9,900", "베이컨, 토마토", 3);

    function handlingResult(result) {
        if (result.DetectedIntent == "Burger_set_order") {
            for (var i = 0, len = result.Parameters.burger_set_menu.length; i < len; i++) {
                menuService.getMenuByName(result.Parameters.burger_set_menu[i], function (menu) {
                    addSelectedLi(result.Parameters.burger_set_menu[i], menu.price * result.Parameters.kor_num[i], "",
                        result.Parameters.kor_num[i]) // 아직 토핑없어서 걍 "" 처리해놨음
                }) // result값 가져오는건 비동기->동기로 바꿔서 해결했음. 현재 토핑기능은 없고
                // 토핑 2개이상 추가하는건 힘들거같음.
            }
        }
        if (result.DetectedIntent == "Chicken_order") {
            for (var i = 0, len = result.Parameters.chicken_menu.length; i < len; i++) {
                menuService.getMenuByName(result.Parameters.chicken_menu[i], function (menu) {
                    addSelectedLi(result.Parameters.chicken_menu[i], menu.price * result.Parameters.kor_num[i], "",
                        result.Parameters.kor_num[i]) // 아직 토핑없어서 걍 "" 처리해놨음
                })
            }
        }
        if (result.DetectedIntent == "Burger_order") {
            for (var i = 0, len = result.Parameters.burger_menu.length; i < len; i++) {
                menuService.getMenuByName(result.Parameters.burger_menu[i], function (menu) {
                    addSelectedLi(result.Parameters.burger_menu[i], menu.price * result.Parameters.kor_num[i], "",
                        result.Parameters.kor_num[i]) // 아직 토핑없어서 걍 "" 처리해놨음
                })
            }
        }
        if (result.DetectedIntent == "Drink_order") {
            for (var i = 0, len = result.Parameters.drink_menu.length; i < len; i++) {
                menuService.getMenuByName(result.Parameters.drink_menu[i], function (menu) {
                    addSelectedLi(result.Parameters.drink_menu[i], menu.price * result.Parameters.kor_num[i], "",
                        result.Parameters.kor_num[i]) // 아직 토핑없어서 걍 "" 처리해놨음
                })
            }
        }
        if (result.DetectedIntent == "Side_order") {
            for (var i = 0, len = result.Parameters.side_menu.length; i < len; i++) {
                menuService.getMenuByName(result.Parameters.side_menu[i], function (menu) {
                    addSelectedLi(result.Parameters.side_menu[i], menu.price * result.Parameters.kor_num[i], "",
                        result.Parameters.kor_num[i]) // 아직 토핑없어서 걍 "" 처리해놨음
                })
            }
        }

        if (result.DetectedIntent == "Search_by_category") {
            if (result.Parameters.category[0] == "햄버거세트") {
                $('#burgerSetTab').trigger("click");
            }
            if (result.Parameters.category[0] == "치킨") {
                $('#chickenTab').trigger("click");
            }
            if (result.Parameters.category[0] == "사이드") {
                $('#sideTab').trigger("click");
            }
            if (result.Parameters.category[0] == "드링크") {
                $('#drinkTab').trigger("click");
            }
        }

        if (result.DetectedIntent == "Search_by_isspicy") {
            if (result.Parameters.Is_spicy[0] == "매운 메뉴") {
                menuService.getListByIs_spicy(2, function (list) {
                    var str = "";
                    for (var i = 0, len = list.length; i < len; i++) {
                        str += " <div class='col-md-4 col-lg-3'>";
                        str += "<div class='card menu-class' style='width: 14rem; margin-top:50px;'>";
                        str += "<img class='card-img-top' src='/resources/img/" + list[i].img + "' alt='Card image cap'>";
                        str += "<div class='card-body'>";
                        str += "<p class='card-text menu-name'>" + list[i].name + "</p>";
                        str += "<p class='card-text menu-content'>" + list[i].information + "</p>";
                        str += "<p class='card-text menu-price'>" + list[i].price + "</p>";
                        str += "</div></div></div>";
                    }
                    $('#searchModalMenuList').html(str);
                })
            }
            if (result.Parameters.Is_spicy[0] == "안매운 메뉴") {
                menuService.getListByIs_spicy(1, function (list) {
                    var str = "";
                    for (var i = 0, len = list.length; i < len; i++) {
                        str += " <div class='col-md-4 col-lg-3'>";
                        str += "<div class='card menu-class' style='width: 14rem; margin-top:50px;'>";
                        str += "<img class='card-img-top' src='/resources/img/" + list[i].img + "' alt='Card image cap'>";
                        str += "<div class='card-body'>";
                        str += "<p class='card-text menu-name'>" + list[i].name + "</p>";
                        str += "<p class='card-text menu-content'>" + list[i].information + "</p>";
                        str += "<p class='card-text menu-price'>" + list[i].price + "</p>";
                        str += "</div></div></div>";
                    }
                    $('#searchModalMenuList').html(str);
                })
            }
            $('#searchModalTitle').html("검색하신\"" + result.Parameters.Is_spicy[0] + "\"리스트입니다");
            $('#searchModal').modal('show');
        }
        if (result.DetectedIntent == "Search_by_ishot") {
            if (result.Parameters.Is_hot[0] == "따뜻한 메뉴") {
                menuService.getListByIs_hot(2, function (list) {
                    var str = "";
                    for (var i = 0, len = list.length; i < len; i++) {
                        str += " <div class='col-md-4 col-lg-3'>";
                        str += "<div class='card menu-class' style='width: 14rem; margin-top:50px;'>";
                        str += "<img class='card-img-top' src='/resources/img/" + list[i].img + "' alt='Card image cap'>";
                        str += "<div class='card-body'>";
                        str += "<p class='card-text menu-name'>" + list[i].name + "</p>";
                        str += "<p class='card-text menu-content'>" + list[i].information + "</p>";
                        str += "<p class='card-text menu-price'>" + list[i].price + "</p>";
                        str += "</div></div></div>";
                    }
                    $('#searchModalMenuList').html(str);
                })
            }
            if (result.Parameters.Is_hot[0] == "시원한 메뉴") {
                menuService.getListByIs_hot(1, function (list) {
                    var str = "";
                    for (var i = 0, len = list.length; i < len; i++) {
                        str += " <div class='col-md-4 col-lg-3'>";
                        str += "<div class='card menu-class' style='width: 14rem; margin-top:50px;'>";
                        str += "<img class='card-img-top' src='/resources/img/" + list[i].img + "' alt='Card image cap'>";
                        str += "<div class='card-body'>";
                        str += "<p class='card-text menu-name'>" + list[i].name + "</p>";
                        str += "<p class='card-text menu-content'>" + list[i].information + "</p>";
                        str += "<p class='card-text menu-price'>" + list[i].price + "</p>";
                        str += "</div></div></div>";
                    }
                    $('#searchModalMenuList').html(str);
                })
            }
            $('#searchModalTitle').html("검색하신\"" + result.Parameters.Is_hot[0] + "\"리스트입니다");
            $('#searchModal').modal('show');
        }
        if (result.DetectedIntent == "Search_by_howmuch") {
            if (result.Parameters.How_much[0] == "이상") {
                menuService.getListByHow_muchOver(result.Parameters.number[0], function (list) {
                    var str = "";
                    for (var i = 0, len = list.length; i < len; i++) {
                        str += " <div class='col-md-4 col-lg-3'>";
                        str += "<div class='card menu-class' style='width: 14rem; margin-top:50px;'>";
                        str += "<img class='card-img-top' src='/resources/img/" + list[i].img + "' alt='Card image cap'>";
                        str += "<div class='card-body'>";
                        str += "<p class='card-text menu-name'>" + list[i].name + "</p>";
                        str += "<p class='card-text menu-content'>" + list[i].information + "</p>";
                        str += "<p class='card-text menu-price'>" + list[i].price + "</p>";
                        str += "</div></div></div>";
                    }
                    $('#searchModalMenuList').html(str);
                })
            }
            if (result.Parameters.How_much[0] == "이하") {
                menuService.getListByHow_muchUnder(result.Parameters.number[0], function (list) {
                    var str = "";
                    for (var i = 0, len = list.length; i < len; i++) {
                        str += " <div class='col-md-4 col-lg-3'>";
                        str += "<div class='card menu-class' style='width: 14rem; margin-top:50px;'>";
                        str += "<img class='card-img-top' src='/resources/img/" + list[i].img + "' alt='Card image cap'>";
                        str += "<div class='card-body'>";
                        str += "<p class='card-text menu-name'>" + list[i].name + "</p>";
                        str += "<p class='card-text menu-content'>" + list[i].information + "</p>";
                        str += "<p class='card-text menu-price'>" + list[i].price + "</p>";
                        str += "</div></div></div>";
                    }
                    $('#searchModalMenuList').html(str);
                })
            }
            $('#searchModalTitle').html("검색하신\"" + result.Parameters.number[0] + "원 " + result.Parameters.How_much[0] + "\"메뉴 리스트입니다");
            $('#searchModal').modal('show');
        }
        if (result.DetectedIntent == "Search_by_recentrelease") {

        }
        //이걸로 검색기능은 마무리하고 추가로 만들어야 하는게.. 전체취소, 결제, 추천
        if (result.DetectedIntent == "All_cancel") {
            $('#allCancel').trigger("click");
        }
        if (result.DetectedIntent == "Recommend_menu") {
            $('#ratingModal').modal('show');
        }
        if (result.DetectedIntent == "Choose_pay") {
            $('#choosePay').trigger("click");
        }

    }


    function getMenuList() {
        menuService.getListByCategory("burgerSet", function (list) {
            var str = "";
            str += "<div class='container'>";
            str += "<div class='row'>";
            for (var i = 0, len = list.length; i < len; i++) {
                str += " <div class='col-md-4 col-lg-3'>";
                str += "<div class='card menu-class' style='width: 14rem; margin-top:50px;'>";
                str += "<img class='card-img-top' src='/resources/img/" + list[i].img + "' alt='Card image cap'>";
                str += "<div class='card-body'>";
                str += "<p class='card-text menu-name'>" + list[i].name + "</p>";
                str += "<p class='card-text menu-content'>" + list[i].information + "</p>";
                str += "<p class='card-text menu-price'>" + list[i].price + "</p>";
                str += "</div></div></div>";
            }
            str += "</div></div>";
            $('#burgerSetList').html(str);
        });

        menuService.getListByCategory("chicken", function (list) {
            var str = "";
            str += "<div class='container'>";
            str += "<div class='row'>";
            for (var i = 0, len = list.length; i < len; i++) {
                str += " <div class='col-md-4 col-lg-3'>";
                str += "<div class='card menu-class' style='width: 14rem; margin-top:50px;'>";
                str += "<img class='card-img-top' src='/resources/img/" + list[i].img + "' alt='Card image cap'>";
                str += "<div class='card-body'>";
                str += "<p class='card-text menu-name'>" + list[i].name + "</p>";
                str += "<p class='card-text menu-content'>" + list[i].information + "</p>";
                str += "<p class='card-text menu-price'>" + list[i].price + "</p>";
                str += "</div></div></div>";
            }
            str += "</div></div>";
            $('#chickenList').html(str);
        });

        menuService.getListByCategory("side", function (list) {
            var str = "";
            str += "<div class='container'>";
            str += "<div class='row'>";
            for (var i = 0, len = list.length; i < len; i++) {
                str += " <div class='col-md-4 col-lg-3'>";
                str += "<div class='card menu-class' style='width: 14rem; margin-top:50px;'>";
                str += "<img class='card-img-top' src='/resources/img/" + list[i].img + "' alt='Card image cap'>";
                str += "<div class='card-body'>";
                str += "<p class='card-text menu-name'>" + list[i].name + "</p>";
                str += "<p class='card-text menu-content'>" + list[i].information + "</p>";
                str += "<p class='card-text menu-price'>" + list[i].price + "</p>";
                str += "</div></div></div>";
            }
            str += "</div></div>";
            $('#sideList').html(str);
        });

        menuService.getListByCategory("drink", function (list) {
            var str = "";
            str += "<div class='container'>";
            str += "<div class='row'>";
            for (var i = 0, len = list.length; i < len; i++) {
                str += " <div class='col-md-4 col-lg-3'>";
                str += "<div class='card menu-class' style='width: 14rem; margin-top:50px;'>";
                str += "<img class='card-img-top' src='/resources/img/" + list[i].img + "' alt='Card image cap'>";
                str += "<div class='card-body'>";
                str += "<p class='card-text menu-name'>" + list[i].name + "</p>";
                str += "<p class='card-text menu-content'>" + list[i].information + "</p>";
                str += "<p class='card-text menu-price'>" + list[i].price + "</p>";
                str += "</div></div></div>";
            }
            str += "</div></div>";
            $('#drinkList').html(str);
        });
    }

    function calculateMenu() {
        $('#totalPayCount').html($('.choose_result').length);
        var totalPrice = 0;
        $('.choose_result').each(function () {
            totalPrice += Number($(this).find('.txt_price').text());
        })
        $('#totalPayPrice').html(totalPrice);
    }

    $(document).on('click', 'button.choose-item-close', function () {
        $(this).closest($('.choose-item-li')).remove();
        calculateMenu();
    });

    // function openPop() {
    //     var popup = window.open('/user/rating', '테스트팝업', 'width=700px,height=800px,scrollbars=yes');
    // }

    function getRatingList() {
        menuService.getListByCategory("burgerSet", function (list) {
            var str = "";
            for (var i = 0, len = list.length; i < len; i++) {
                str += "<div style='margin-bottom:8px'>";
                str += "<span>" + list[i].name + "</span>";
                str += "<span style='float:right'>";
                str += "<label style='margin-left:5px'><input type='radio' name='" + list[i].name + "' value=1></label>";
                str += "<label style='margin-left:5px'><input type='radio' name='" + list[i].name + "' value=2></label>";
                str += "<label style='margin-left:5px'><input type='radio' name='" + list[i].name + "' value=3></label>";
                str += "<label style='margin-left:5px'><input type='radio' name='" + list[i].name + "' value=4></label>";
                str += "<label style='margin-left:5px'><input type='radio' name='" + list[i].name + "' value=5></label>";
                str += "</span>";
                str += "</div>";
            }
            $('#burgerSetRatingList').html(str);
        });
        menuService.getListByCategory("chicken", function (list) {
            var str = "";
            for (var i = 0, len = list.length; i < len; i++) {
                str += "<div style='margin-bottom:8px'>";
                str += "<span>" + list[i].name + "</span>";
                str += "<span style='float:right'>";
                str += "<label style='margin-left:5px'><input type='radio' name='" + list[i].name + "' value=1></label>";
                str += "<label style='margin-left:5px'><input type='radio' name='" + list[i].name + "' value=2></label>";
                str += "<label style='margin-left:5px'><input type='radio' name='" + list[i].name + "' value=3></label>";
                str += "<label style='margin-left:5px'><input type='radio' name='" + list[i].name + "' value=4></label>";
                str += "<label style='margin-left:5px'><input type='radio' name='" + list[i].name + "' value=5></label>";
                str += "</span>";
                str += "</div>";
            }
            $('#chickenRatingList').html(str);
        });
        menuService.getListByCategory("side", function (list) {
            var str = "";
            for (var i = 0, len = list.length; i < len; i++) {
                str += "<div style='margin-bottom:8px'>";
                str += "<span>" + list[i].name + "</span>";
                str += "<span style='float:right'>";
                str += "<label style='margin-left:5px'><input type='radio' name='" + list[i].name + "' value=1></label>";
                str += "<label style='margin-left:5px'><input type='radio' name='" + list[i].name + "' value=2></label>";
                str += "<label style='margin-left:5px'><input type='radio' name='" + list[i].name + "' value=3></label>";
                str += "<label style='margin-left:5px'><input type='radio' name='" + list[i].name + "' value=4></label>";
                str += "<label style='margin-left:5px'><input type='radio' name='" + list[i].name + "' value=5></label>";
                str += "</span>";
                str += "</div>";
            }
            $('#sideRatingList').html(str);
        });
        menuService.getListByCategory("drink", function (list) {
            var str = "";
            for (var i = 0, len = list.length; i < len; i++) {
                str += "<div style='margin-bottom:8px'>";
                str += "<span>" + list[i].name + "</span>";
                str += "<span style='float:right'>";
                str += "<label style='margin-left:5px'><input type='radio' name='" + list[i].name + "' value=1></label>";
                str += "<label style='margin-left:5px'><input type='radio' name='" + list[i].name + "' value=2></label>";
                str += "<label style='margin-left:5px'><input type='radio' name='" + list[i].name + "' value=3></label>";
                str += "<label style='margin-left:5px'><input type='radio' name='" + list[i].name + "' value=4></label>";
                str += "<label style='margin-left:5px'><input type='radio' name='" + list[i].name + "' value=5></label>";
                str += "</span>";
                str += "</div>";
            }
            $('#drinkRatingList').html(str);
        });
    }

    $(document).on('click', '#ratingModalSubmit', function () {

        var ratingData = {
            "에그불고기버거세트": $('input[name="에그불고기버거세트"]:checked').val(),
            "리얼비프버거세트": $('input[name="리얼비프버거세트"]:checked').val(),
            "내슈빌핫치킨버거세트": $('input[name="내슈빌핫치킨버거세트"]:checked').val(),
            "할라피뇨통살버거세트": $('input[name="할라피뇨통살버거세트"]:checked').val(),
            "살사리코버거세트": $('input[name="살사리코버거세트"]:checked').val(),
            "언빌리버블버거세트": $('input[name="언빌리버블버거세트"]:checked').val(),
            "인크레더블버거세트": $('input[name="인크레더블버거세트"]:checked').val(),
            "치즈베이컨버거세트": $('input[name="치즈베이컨버거세트"]:checked').val(),
            "딥치즈버거세트": $('input[name="딥치즈버거세트"]:checked').val(),
            "불싸이버거세트": $('input[name="불싸이버거세트"]:checked').val(),
            "화이트갈릭버거세트": $('input[name="화이트갈릭버거세트"]:checked').val(),
            "디럭스불고기버거세트": $('input[name="디럭스불고기버거세트"]:checked').val(),
            "통새우버거세트": $('input[name="통새우버거세트"]:checked').val(),
            "불고기버거세트": $('input[name="불고기버거세트"]:checked').val(),
            "싸이버거세트": $('input[name="싸이버거세트"]:checked').val(),
            "휠렛버거세트": $('input[name="휠렛버거세트"]:checked').val(),
            "햄치즈휠렛버거": $('input[name="햄치즈휠렛버거"]:checked').val(),
            "닭강정트리오A": $('input[name="닭강정트리오A"]:checked').val(),
            "닭강정트리오B": $('input[name="닭강정트리오B"]:checked').val(),
            "간장마늘떡강정": $('input[name="간장마늘떡강정"]:checked').val(),
            "치파오떡강정": $('input[name="치파오떡강정"]:checked').val(),
            "케이준떡강정": $('input[name="케이준떡강정"]:checked').val(),
            "반반치킨": $('input[name="반반치킨"]:checked').val(),
            "맘스양념치킨": $('input[name="맘스양념치킨"]:checked').val(),
            "후라이드통다리": $('input[name="후라이드통다리"]:checked').val(),
            "내슈빌핫통다리": $('input[name="내슈빌핫통다리"]:checked').val(),
            "간장마늘치킨": $('input[name="간장마늘치킨"]:checked').val(),
            "치파오치킨": $('input[name="치파오치킨"]:checked').val(),
            "치즈뿌치텐더": $('input[name="치즈뿌치텐더"]:checked').val(),
            "치즈뿌치": $('input[name="치즈뿌치"]:checked').val(),
            "후라이드치킨": $('input[name="후라이드치킨"]:checked').val(),
            "후라이드텐더": $('input[name="후라이드텐더"]:checked').val(),
            "치즈뿌치텐더": $('input[name="치즈뿌치텐더"]:checked').val(),
            "후라이드텐더(2조각)": $('input[name="후라이드텐더(2조각)"]:checked').val(),
            "베이컨치즈감자": $('input[name="베이컨치즈감자"]:checked').val(),
            "코울슬로": $('input[name="코울슬로"]:checked').val(),
            "바삭크림치즈볼": $('input[name="바삭크림치즈볼"]:checked').val(),
            "에그랩": $('input[name="에그랩"]:checked').val(),
            "어니언치즈감자": $('input[name="어니언치즈감자"]:checked').val(),
            "치즈감자": $('input[name="치즈감자"]:checked').val(),
            "할라피뇨너겟": $('input[name="할라피뇨너겟"]:checked').val(),
            "김떡만": $('input[name="김떡만"]:checked').val(),
            "팝콘만두": $('input[name="팝콘만두"]:checked').val(),
            "팝콘볼": $('input[name="팝콘볼"]:checked').val(),
            "케이준양념감자": $('input[name="케이준양념감자"]:checked').val(),
            "콘샐러드": $('input[name="콘샐러드"]:checked').val(),
            "치즈스틱": $('input[name="치즈스틱"]:checked').val(),
            "고구마치즈볼": $('input[name="고구마치즈볼"]:checked').val(),
            "휠랩": $('input[name="휠랩"]:checked').val(),
            "핫초코": $('input[name="핫초코"]:checked').val(),
            "슈퍼베리워터주스": $('input[name="슈퍼베리워터주스"]:checked').val(),
            "레몬홍차": $('input[name="레몬홍차"]:checked').val(),
            "홍차": $('input[name="홍차"]:checked').val(),
            "복숭아망고스무디": $('input[name="복숭아망고스무디"]:checked').val(),
            "레몬딸기스무디": $('input[name="레몬딸기스무디"]:checked').val(),
            "레몬에이드": $('input[name="레몬에이드"]:checked').val(),
            "레몬티": $('input[name="레몬티"]:checked').val(),
            "허브복숭아티": $('input[name="허브복숭아티"]:checked').val(),
            "스트로베리밀크": $('input[name="스트로베리밀크"]:checked').val(),
            "스위트망고": $('input[name="스위트망고"]:checked').val(),
            "딸기스무디": $('input[name="딸기스무디"]:checked').val(),
            "망고스무디": $('input[name="망고스무디"]:checked').val(),
            "카페라떼": $('input[name="카페라떼"]:checked').val(),
            "콜라": $('input[name="콜라"]:checked').val(),
            "오렌지쥬스": $('input[name="오렌지쥬스"]:checked').val(),
            "청포도에이드": $('input[name="청포도에이드"]:checked').val(),
            "망고에이드": $('input[name="망고에이드"]:checked').val(),
            "복숭아에이드": $('input[name="복숭아에이드"]:checked').val(),
            "아메리카노": $('input[name="아메리카노"]:checked').val()
        }
        var user_id = 0;
        requestRating(ratingData, function (result) {
            user_id = result;
            $('#ratingModal').modal('hide');
        });
        requestRecommend(user_id, function (list) {
            var str = "";
            for (var i = 0, len = list.recommend_menus.length; i < len; i++) {
                menuService.getMenuById(list.recommend_menus[i], function (result) {
                    str += " <div class='col-md-4 col-lg-3'>";
                    str += "<div class='card menu-class' style='width: 14rem; margin-top:50px;'>";
                    str += "<img class='card-img-top' src='/resources/img/" + result.img + "' alt='Card image cap'>";
                    str += "<div class='card-body'>";
                    str += "<p class='card-text menu-name'>" + result.name + "</p>";
                    str += "<p class='card-text menu-content'>" + result.information + "</p>";
                    str += "<p class='card-text menu-price'>" + result.price + "</p>";
                    str += "</div></div></div>";
                });
            }
            $('#searchModalMenuList').html(str);
            $('#searchModalTitle').html("추천메뉴");
            annyang.abort();
            speech("추천메뉴는 다음과 같습니다. 원하시는 메뉴를 말씀하세요.")
            $('#searchModal').modal('show');
        });
    });

    function requestRating(ratings, callback, error) {
        console.log("ratings = " + ratings);
        $.ajax({
            type: 'post',
            url: '/user/rating',
            async: false, // 얘는 동기방식으로 해야 반환된 user_id를 활용할 수 있음.
            data: JSON.stringify(ratings),
            contentType: "application/json; charset=utf-8",
            success: function (result, status, xhr) {
                if (callback) {
                    callback(result);
                }
            },
            error: function (xhr, status, er) {
                if (error) {
                    error(er);
                }
            }
        });
    }

    function requestRecommend(user_id, callback, error) {
        console.log("user_id = " + user_id);
        $.ajax({
            type: 'get',
            url: 'http://15.164.103.28:5000/' + user_id,
            async: false, // 얘는 동기방식으로 해야 반환된 user_id를 활용할 수 있음.
            contentType: "application/json; charset=utf-8",
            success: function (result, status, xhr) {
                if (callback) {
                    callback(result);
                }
            },
            error: function (xhr, status, er) {
                if (error) {
                    error(er);
                }
            }
        });
    }


    $(document).on('click', '#allCancel', function () {
        $('#selectedList').empty();
        calculateMenu();
    });

    $(document).on('click', '#choosePay', function () {
        var str = "";
        $('.choose-item-li').each(function () {
            var menuName = $(this).find('.txt_tit').text();
            var menuQuantity = $(this).find('.choose_quantity').val();
            var totalPay = Number($(this).find('.txt_price').text());
            str += "<div>";
            str += "<span>" + menuName + " x " + menuQuantity +
                "</span><span style='float:right'>" + totalPay +"</span><span>원</span>"
            str += "</div>";
            // alert("주문한 메뉴 : " + $(this).find('.txt_tit').text() +
            //     "수량 : " + $(this).find('.choose_quantity').val() +
            //     "가격 : " + Number($(this).find('.txt_price').text()));
        })
        $('#choosePayModalList').html(str);
        $('#choosePayModalPayment').html($('#totalPayPrice').html());
        $('#choosePayModal').modal('show');
    });

    $(document).on('click', '#choosePayModalBtn', function () {
        annyang.abort(); // 마이크 중단
        speech("결제가 완료되었습니다. 감사합니다", true, "end");
        $('#choosePayModal').modal('hide');
    });


    function testCamera() {
        var count = 0;
        var maskInterval = setInterval(function () {
            $.ajax({
                type: 'get',
                url: 'http://localhost:5000/get_result',
                contentType: "text/plain; charset=utf-8",
                async: false,
                success: function (result, status, xhr) {
                    console.log(result);
                    if (result == "실패") {
                        count += 1;
                    }
                    if (result == "성공") {
                        count -= 1;
                    }
                },
                error: function (xhr, status, er) {
                    location.reload(true);
                }
            });
            console.log(count);
            if (count == 5) {
                maskModal();
            }
        }, 2000); // 2초에 한번씩 받아온다.

        function maskModal() {
            clearInterval(maskInterval);
            $('#maskDetectModal').modal('show');
            // var maskIntervalModal = setInterval(function () {
            //     $.ajax({
            //         type: 'get',
            //         url: 'http://localhost:5000/get_result',
            //         contentType: "text/plain; charset=utf-8",
            //         async: false,
            //         success: function (result, status, xhr) {
            //             console.log(result);
            //             if (result == "실패") {
            //                 count += 1;
            //             }
            //         },
            //         error: function (xhr, status, er) {
            //             location.reload(true);
            //         }
            //     });
            //     console.log(count);
            //     if (count == 5) {
            //         maskModal();
            //     }
            // }, 2000); // 30초에 한번씩 받아온다.
            // testCamera();
        }
    }

    $(document).on('click', '#maskDetectModalBtn', function () {
        $('#maskDetectModal').modal('hide');
        testCamera();
    });


</script>



<%--상운이 피드백 : 메뉴 스크롤을 없애고 페이지네이션을 해서 메뉴 넘기는것도 음성인식으로?--%>
<%--아이템협업 필터링으로 특정 메뉴와 비슷한 메뉴 찾는거? (근데 비슷하다는 기준 정하기가 어려울듯)--%>
<%--메뉴 추천을 모든 메뉴를 보여주기보다는 랜덤으로 몇몇개를 보여줘서 별점 메기가 하는게 좋을수도--%>
<%--https://www.youtube.com/watch?v=Guc0s62mdcA&t=99s 얘들처럼..?--%>

<%--개인 생각 : 마스크인식은 첫페이지에서 하는게 맞는거같음. 왜냐하면 마스크를 썼는지 안썼는지 --%>
