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

        /*body{ -ms-overflow-style: none; }*/
        /*::-webkit-scrollbar { display: none; }*/

    </style>

</head>

<nav class="navbar navbar-expand-md  navbar-dark fixed-top shadow-lg bg-dark">
    <a class="navbar-brand" href="#">맘스터치</a>
    <ul class="navbar-nav">
        <a href='#' class='nav-link' style="color:white">처음으로</a>
        <a href='#' class='nav-link' style="color:white">직원호출</a>
    </ul>
    <ul class="navbar-nav ml-auto">
<%--        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">--%>
<%--            Launch demo modal--%>
<%--        </button>--%>
        <button class="btn btn-primary" id="mic_btn">
            마이크테스트
        </button>
    </ul>
</nav>

<body>

<div class="container" style="margin-top: 100px">
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

                            <img class="card-img" id="mic_img" src="/resources/img/마이크.gif" style="width:100px"
                                 alt="Card image"/>
                            <img class="card-img" id="mic_stop" src="resources/img/micstop.gif" style="width:100px"
                                 alt="Card image"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<ul class="nav nav-tabs nav-justified" style="margin-top:50px">
    <li class="nav-item">
        <a class="nav-link active" id="burgerSetTab" data-toggle="tab" href="#burgerSet">버거세트</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" id="chickenSetTab" data-toggle="tab" href="#chickenSet">치킨세트</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" data-toggle="tab" href="#burger">햄버거</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" data-toggle="tab" href="#chicken">치킨</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" data-toggle="tab" href="#dessert">디저트</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" data-toggle="tab" href="#drink">드링크</a>
    </li>
</ul>


<div class="tab-content" style="height: 700px; overflow: auto;">
    <div class="tab-pane fade show active" id="burgerSet">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-lg-3">
                    <div class="card menu-class" style="width: 15rem; margin-top:50px;" id="testMenu">
                        <img class="card-img-top" src="/resources/img/DetailImage.jpg" alt="Card image cap">
                        <div class="card-body">
                            <p class="card-text menu-name">싸이버거 세트</p>
                            <p class="card-text menu-content">싸이버거 세트입니다.</p>
                            <p class="card-text menu-price">가격은 5,600원 입니다.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-lg-3">
                    <div class="card menu-class" style="width: 15rem; margin-top:50px;" id="testMenu2">
                        <img class="card-img-top" src="/resources/img/DetailImage.jpg" alt="Card image cap">
                        <div class="card-body">
                            <p class="card-text menu-name">인크레더블 세트</p>
                            <p class="card-text menu-content">인크레더블 세트입니다.</p>
                            <p class="card-text menu-price">가격은 7,600원 입니다.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-lg-3">
                    <div class="card" style="width: 15rem; margin-top:50px;">
                        <img class="card-img-top" src="/resources/img/DetailImage.jpg" alt="Card image cap">
                        <div class="card-body">
                            <p class="card-text">Some quick example text to build on the card title and
                                make
                                up the bulk
                                of the card's content.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-lg-3">
                    <div class="card" style="width: 15rem; margin-top:50px;">
                        <img class="card-img-top" src="/resources/img/DetailImage.jpg" alt="Card image cap">
                        <div class="card-body">
                            <p class="card-text">Some quick example text to build on the card title and
                                make
                                up the bulk
                                of the card's content.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-lg-3">
                    <div class="card" style="width: 15rem; margin-top:50px;">
                        <img class="card-img-top" src="/resources/img/DetailImage.jpg" alt="Card image cap">
                        <div class="card-body">
                            <p class="card-text">Some quick example text to build on the card title and
                                make
                                up the bulk
                                of the card's content.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-lg-3">
                    <div class="card" style="width: 15rem; margin-top:50px;">
                        <img class="card-img-top" src="/resources/img/DetailImage.jpg" alt="Card image cap">
                        <div class="card-body">
                            <p class="card-text">Some quick example text to build on the card title and
                                make
                                up the bulk
                                of the card's content.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-lg-3">
                    <div class="card" style="width: 15rem; margin-top:50px;">
                        <img class="card-img-top" src="/resources/img/DetailImage.jpg" alt="Card image cap">
                        <div class="card-body">
                            <p class="card-text">Some quick example text to build on the card title and
                                make
                                up the bulk
                                of the card's content.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-lg-3">
                    <div class="card" style="width: 15rem; margin-top:50px;">
                        <img class="card-img-top" src="/resources/img/DetailImage.jpg" alt="Card image cap">
                        <div class="card-body">
                            <p class="card-text">Some quick example text to build on the card title and
                                make
                                up the bulk
                                of the card's content.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-lg-3">
                    <div class="card" style="width: 15rem; margin-top:50px;">
                        <img class="card-img-top" src="/resources/img/DetailImage.jpg" alt="Card image cap">
                        <div class="card-body">
                            <p class="card-text">Some quick example text to build on the card title and
                                make
                                up the bulk
                                of the card's content.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="tab-pane fade" id="chickenSet">
        <p>치킨세트 메뉴들</p>
    </div>
    <div class="tab-pane fade" id="burger">
        <p>햄버거단품 메뉴들</p>
    </div>
    <div class="tab-pane fade" id="chicken">
        <p>치킨단품 메뉴들</p>
    </div>
    <div class="tab-pane fade" id="dessert">
        <p>디저트 메뉴들</p>
    </div>
    <div class="tab-pane fade" id="drink">
        <p>드링크 메뉴들</p>
    </div>
</div>


<p class="card-text" id="middleResult"></p>
<p class="card-text" id="DetectedIntent"></p>

<!-- Button trigger modal -->


<!-- Modal -->
<%--<div class="modal" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true"--%>
<%--     data-backdrop="false">--%>
<%--    &lt;%&ndash;    <div class="modal-dialog" role="document" style="max-width: none; margin-top: 293px">&ndash;%&gt;--%>
<%--    <div class="modal-dialog" role="document">--%>
<%--        <div class="modal-content">--%>
<%--            <div class="modal-header">--%>
<%--                <h5 class="modal-title" id="exampleModalLabel">검색하신 "xxxxx" 입니다</h5>--%>
<%--                <button type="button" class="close" data-dismiss="modal" aria-label="Close">--%>
<%--                    <span aria-hidden="true">&times;</span>--%>
<%--                </button>--%>
<%--            </div>--%>
<%--            <div class="modal-body">--%>
<%--                대충 메뉴 설명들--%>
<%--            </div>--%>
<%--            <div class="modal-footer">--%>
<%--                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>--%>
<%--                <button type="button" class="btn btn-primary">Save changes</button>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>

<div class="modal" id="orderModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <%--    <div class="modal-dialog" role="document" style="max-width: none; margin-top: 293px">--%>
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
                <button class="btn btn-primary menu-topping">토핑추가</button>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                <button type="button" class="btn btn-primary">주문</button>
            </div>
        </div>
    </div>
</div>

<div class="modal" id="toppingModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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

</body>

<footer>
    <div class="footer bg-dark" style="bottom:0;">
        <div class="select-list" style="height: 300px; overflow: auto;">
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
<%--                        <li id="coreSelectedLi_3">--%>
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
<%--                        <li id="coreSelectedLi_4">--%>
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
                    <div class="card" >
                        주문수량: 1개 / 주문금액 30,000원
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card">
                        전체취소
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card">
                        주문하기
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>


</html>


<script src='/resources/js/annyang.js'></script>
<script>

    $(document).ready(function () {
        $('#mic_img').hide();
        $('#mic_btn').on("click", function (e) {
            micTest();
        });
        // $('#chickenSetTab').trigger("click");
    });

    function micTest() {
        annyang.start({autoRestart: false, continuous: true});
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
                    annyang.abort();
                    requestMic(result2, function (result) {
                        // $('#middleResult').hide();
                        // $('#finalResult').hide();
                        $('#DetectedIntent').html(result.DetectedIntent);
                        $('#FulfillmentText').html(result.FulfillmentText);
                        speech(result.FulfillmentText);
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

    function speech(txt) {
        // $('#DetectedIntent').hide();
        // $('#FulfillmentText').hide();
        if (!window.speechSynthesis) {
            alert("음성 재생을 지원하지 않는 브라우저입니다. 크롬, 파이어폭스 등의 최신 브라우저를 이용하세요");
            return;
        }
        var lang = 'ko-KR';
        var utterThis = new SpeechSynthesisUtterance(txt);
        utterThis.onend = function (event) {
            console.log('end');
            // $('#middleResult').show();
            // $('#finalResult').show();
            micTest();
        };
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

    // 음식 클릭시 modal 생성
    $(document).on('click', '.menu-class', function(){
        console.log($(this).attr('id'));
        $('#orderModalMenuName').html( $(this).find('.menu-name').text());
        $('#orderModalMenuContent').html( $(this).find('.menu-content').text());
        $('#orderModalMenuPrice').html( $(this).find('.menu-price').text());
        $('#orderModal').modal('show');
    });

    $(document).on('click', 'button.menu-topping', function(){
        $('#toppingModal').modal('show');
    });

    function addSelectedLi(name, price, topping="", quantity){
        var str = "";
        str+= "<li>"
        str+= "<div class='choose_item'>";
        str+= "<p class='tit'>";
        str+= "<span></span>";
        str+= "<span class='txt_tit'>" +name + "</span>";
        str+= "<span class='txt_option' style='float:right'>" + topping + "<br></span></p>";
        str+= "</div>";
        str+= "<div class='choose_calc'>";
        str+="<div class='input-group' style='width:30%'>";
        str+="<button class='btn btn-outline-secondary' type='button' style='width:36px'>+</button>";
        str+="<input type='text' class='form-control' value='"+ quantity+"'>";
        str+="<button class='btn btn-outline-secondary' type='button' style='width:36px'>-</button></div></div>";
        str+="<div class='choose_result'>";
        str+="<strong class='txt_price'>"+price+"<span>원</span></strong>";
        str+="<button class='close'><span>X</span></button></div></li>";
        $('#selectedList').html(str);
    }
    addSelectedLi("싸이버거", "9,900", "베이컨, 토마토", 3);

    function handlingResult(result){

    }


</script>





