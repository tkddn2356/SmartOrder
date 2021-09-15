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
        .review_rating {
            width: 100%;
            height: 20px;
            overflow: hidden;
            margin: 0 auto;
        }

        .rating {
            display: inline-block;
        }

        .rating > input {
            display: none;
            margin: 0 5px;
        }

        .rating > label:before {
            display: inline-block;
            content: "\f005";
            background: url('/resources/img/star2.png') 0 0 no-repeat;
            width: 20px;
            height: 20px;
            color: rgba(0, 0, 0, 0);
            background-size: 20px;
        }

        .rating > input[type="radio"] + label {
            color: #999;
            float: right;
            margin: 0 5px;
        }

        .rating > input:checked ~ label {
            content: "\f005";
            display: inline-block;
            background: url('/resources/img/star1.png');
            width: 20px;
            height: 20px;
            padding: 0;
            background-size: 20px;
            z-index: 5;
        }

        .rating > input:checked ~ label:before {
            background: none;
        }

        @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap');

        body {
            font-family: 'Noto Sans KR', sans-serif;
        }

        .num_btn {
            font-size: 4em;
        }

        .join_input {
            font-size: 30px;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark fixed-top"
     style="background: linear-gradient(#FFBC00, #ffd86b); text-align: center; display: inline-block;">
    <img src="/resources/img/logo-3.png" alt="" width="700" class="img-responsive ">
</nav>
<section>
    <div class="container" style="margin-top:200px">
        <div class="row">
            <div class="col-sm-12">
                <div class="card" style="border-radius: 40px; background: linear-gradient(#FFBC00, #ffd86b); ">
                    <div class="card-body" style="margin: 15px; border-radius: 30px; background-color: #ffffff">
                        <h1 class="card-title text-center" style="font-size: 4em">Join</h1>
                        <p class="card-title mb-2 text-muted text-center">해당 QR코드를 통해 회원가입을 진행하실 수 있습니다.</p>
                        <div id="ratingCard" style="margin-top:30px">
                            <div class="card" style="width: 25rem; margin:auto; border:none">
                                <img class="card-img-top" src="/resources/img/joinQR.png" alt="Card image cap">
                                <div class="card-body" style="text-align: center; margin-top:20px; margin-left:10px">
                                    <a href="javascript:history.back();" class="btn-lg btn-secondary"
                                       style="margin-top: 30px;margin-bottom: 10px;text-align: center;">이전</a>
                                    <a href="/user/join" class="btn-lg btn-secondary"
                                       style="margin-top: 30px;margin-bottom: 10px;text-align: center;">PC버전</a>
                                </div>
<%--                                <a href="javascript:history.back();" class="btn-lg btn-secondary"--%>
<%--                                   style="margin-top: 30px;margin-bottom: 10px;text-align: center;">이전</a>--%>
<%--                                <a href="/user/join" class="btn-lg btn-secondary"--%>
<%--                                   style="margin-top: 30px;margin-bottom: 10px;text-align: center;">PC버전</a>--%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</section>
</body>
</html>





