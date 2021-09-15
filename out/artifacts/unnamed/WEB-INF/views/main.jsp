<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en" id="mainPage">
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

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">


    <style type="text/css">
        @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap');

        body {
            font-family: 'Noto Sans KR', sans-serif;
        }

    </style>

</head>
<body>

<div class="container" style="margin-top: 90px">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-body" style="text-align:center; ">
                    <img src="/resources/img/logo-2.png" alt="" width="80%" class="img-responsive ">
                </div>
            </div>
        </div>
    </div>

    <div class="row" style="margin: 100px 0px; font-size: 30px;">
        <div class="col-md-3">
            <img style="width: 120%;" src="/resources/img/Employee-3.png">
        </div>
        <div class="col-md-9">
            <img style="width: 100%;" src="/resources/img/main_guide.png">
        </div>
    </div>

    <div class="row" style="margin-top: 50px;">
        <div class="col-md-1"></div>
        <div class="col-md-5">
            <button class="btn btn-lg" type="button" style="background-color: #ffffff"><img class="btn-img" style="width: 100%;" src="/resources/img/main-1.png"></button>
        </div>
        <div class="col-md-5">
            <button class="btn btn-lg" type="button" style="background-color: #ffffff"><img class="btn-img" style="width: 100%;" src="/resources/img/main-2.png"></button>
        </div>
        <div class="col-md-1"></div>
    </div>

    <div style="text-align:center; margin: 120px 50px">
        <button class="btn btn-warning btn-lg" id="login_btn" style="margin: 50px;"><a href="/user/login" class="nav-link logout-a" style="color:#000;">로그인</a></button>
        <button class="btn btn-basic btn-lg" id="join_btn" style="margin: 50px;"><a href="/user/join" class="nav-link logout-a" style="color:#000;">회원가입</a></button>
    </div>

</div>

</body>
</html>

<script>

    $(document).on('click', '#mainPage', function () {
        location.href = "http://localhost:5000/";
    });

</script>





