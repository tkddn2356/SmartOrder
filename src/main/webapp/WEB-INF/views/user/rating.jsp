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
    <style>
        /*.review_rating{width: 100%; height:20px; overflow: hidden; margin: 0 auto; }*/
        /*.rating {display: inline-block;}*/
        /*.rating > input {display: none; margin: 0 5px;}*/
        /*.rating > label:before {display: inline-block; content: "\f005"; background: url('/resources/img/star2.png') 0 0 no-repeat; width:20px; height:20px; color:rgba(0,0,0,0); background-size: 20px;}*/
        /*.rating > input[type="radio"] + label {color: #999; float: right; margin: 0 5px;}*/
        /*.rating > input:checked ~ label{content: "\f005"; display: inline-block; background: url('/resources/img/star1.png'); width:20px; height:20px; padding: 0; background-size: 20px; z-index: 5;}*/
        /*.rating > input:checked ~ label:before {background:none;}*/
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg bg-dark navbar-dark fixed-top">
    <a class="navbar-brand" href="/main">맘스터치</a>
    <%--    화면 작아졌을 때 생기는 아이콘--%>
</nav>
<section>
    <div class="container" style="margin-top:100px">
        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-8">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">메뉴 평가</h5>
                        <h7 class="card-subtitle mb-2 text-muted">메뉴를 5개 이상 선택하여 별점을 주세요.
                            해당 별점은 추천시스템을 이용하실때 반영이 됩니다.
                        </h7>
                        <%--                        <div class="container">--%>
                        <%--                            <div class="row">--%>
                        <%--                                <div class="col-sm-6">--%>
                        <%--                                    <div class="card">--%>
                        <%--                                        <img class="card-img-top" src="/resources/img/DetailImage.jpg"--%>
                        <%--                                             alt="Card image cap">--%>
                        <%--                                        <div class="card-body">--%>
                        <%--                                            <p class="card-text menu-name">싸이버거 세트</p>--%>
                        <%--                                        </div>--%>
                        <%--                                    </div>--%>
                        <%--                                </div>--%>
                        <%--                                <div class="col-sm-6">--%>
                        <%--                                    <div class="card">--%>
                        <%--                                        <img class="card-img-top" src="/resources/img/DetailImage.jpg"--%>
                        <%--                                             alt="Card image cap">--%>
                        <%--                                        <div class="card-body">--%>
                        <%--                                            <p class="card-text menu-name">싸이버거 세트</p>--%>
                        <%--                                        </div>--%>
                        <%--                                    </div>--%>
                        <%--                                </div>--%>
                        <%--                            </div>--%>
                        <%--                        </div>--%>
                        <%--                        <div id="join_form">--%>
                        <%--                            <div class="review_rating">--%>
                        <%--                                <fieldset class="rating">--%>
                        <%--                                    <input type="radio" id="rating_1_star5" name="rating_1" value="5.0"><label for="rating_1_star5"></label>--%>
                        <%--                                    <input type="radio" id="rating_1_star4" name="rating_1" value="4.0"><label for="rating_1_star4"></label>--%>
                        <%--                                    <input type="radio" id="rating_1_star3" name="rating_1" value="3.0"><label for="rating_1_star3"></label>--%>
                        <%--                                    <input type="radio" id="rating_1_star2" name="rating_1" value="2.0"><label for="rating_1_star2"></label>--%>
                        <%--                                    <input type="radio" id="rating_1_star1" name="rating_1" value="1.0"><label for="rating_1_star1"></label>--%>
                        <%--                                </fieldset>--%>
                        <%--                            </div>--%>
                        <%--                        </div>--%>
                        <div style="font-size:20px; text-align: center; margin-bottom: 8px"><strong>햄버거세트</strong></div>
                        <div id="burgerSetRatingList">
                            <div style="margin-bottom:8px">
                                <span>싸이버거세트</span>
                                <span style='float:right'>
                                    <div class="review_rating">
                                        <fieldset class="rating">
                                            <input type="radio" id="rating_1_star5" name="싸이버거세트" value="5"><label for="rating_1_star5"></label>
                                            <input type="radio" id="rating_1_star4" name="싸이버거세트" value="4"><label for="rating_1_star4" ></label>
                                            <input type="radio" id="rating_1_star3" name="싸이버거세트" value="3"><label for="rating_1_star3"></label>
                                            <input type="radio" id="rating_1_star2" name="싸이버거세트" value="2"><label for="rating_1_star2"></label>
                                            <input type="radio" id="rating_1_star1" name="싸이버거세트" value="1"><label for="rating_1_star1"></label>
                                          </fieldset>
                                    </div>
                                </span>
                            </div>
                            <div style="margin-bottom:8px">
                                <span>리얼비프버거세트</span>
                                <span style='float:right'>
                                <label><input type="radio" name="리얼비프버거세트" value="1"></label>
                                <label><input type="radio" name="리얼비프버거세트" value="2"></label>
                                <label><input type="radio" name="리얼비프버거세트" value="3"></label>
                                <label><input type="radio" name="리얼비프버거세트" value="4"></label>
                                <label><input type="radio" name="리얼비프버거세트" value="5"></label>
                            </span>
                            </div>
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
                        <div>
                            <button class="btn btn-primary" id="ratingSubmit">
                                제출
                            </button>
                        </div>

                    </div>
                </div>
            </div>
            <div class="col-sm-2"></div>
        </div>
    </div>
</section>
</body>
</html>

<script src="/resources/js/menu.js"></script>
<script>
    $(document).ready(function () {
        getRatingList();
        $('#ratingSubmit').click(function () {
            var urlParams = getUrlParams();
            var user_id = urlParams.id;
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
            // alert(JSON.stringify(ratingData));
            // console.log(JSON.stringify(ratingData));
            requestRating(user_id, ratingData, function (result) {
                alert("회원가입 성공")
                document.location.href = "/user/login";
            });
        });
    });


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

    function requestRating(user_id, ratings, callback, error) {
        console.log("ratings = " + ratings);
        $.ajax({
            type: 'post',
            url: '/user/rating/' + user_id,
            data: JSON.stringify(ratings),
            contentType: "application/json; charset=utf-8",
            success: function (result, status, xhr) {
                if(callback){
                    callback(result);
                }
            },
            error: function (xhr, status, er) {
                if(error){
                    error(er);
                }
            }
        });
    }

    function getUrlParams() {
        var params = {};
        window.location.search.replace(/[?&]+([^=&]+)=([^&]*)/gi, function(str, key, value) { params[key] = value; });
        return params;
    }

</script>





