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

    <style type="text/css">
        html, body {
            width: 100%; height: 100%;
        }
    </style>

</head>
<body>

<div class="container" style="margin-top: 90px">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-body" style="text-align:center; height: 150px;">
                    <p class="card-text" style="font-size: 30px;">맘스터치</p>
                    <p class="card-text">메인페이지 입니다. 화면을 클릭해주세요.</p>
                </div>
            </div>
        </div>
    </div>

    <div class="row" style="margin-top: 200px;">
        <div class="col-md-4 offset-2">
            <!-- 텍스트 대신에 이미지 넣기 -->
            <button class="btn btn-secondary btn-lg" type="button" style="width: 100%; height: 100px;">포장</button>
        </div>
        <div class="col-md-4">
            <button class="btn btn-primary btn-lg" type="button" style="width: 100%; height: 100px;">매장</button>
        </div>
    </div>

    <div style="text-align:center; margin-top: 100px;">
        <div>
            <button class="btn btn-light"><a href="/user/login" class="nav-link logout-a">로그인</a></button>

        </div>

        <div>
            <button class="btn btn-link" id="join_btn">
                <a href="/user/join" class="nav-link logout-a">회원가입</a>
                </button>
        </div>
    </div>
</div>

</body>
</html>

<script>

    $(document).on('click', '#mainPage', function () {
        location.href = "http://localhost:5000/";
    });

</script>





