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
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark fixed-top" style="background-color: #FFBC00; text-align: center; display: inline-block;">
    <img src="/resources/img/logo-1.png" alt="" width="400" class="img-responsive ">
</nav>
<section>

    <!-- 1안 : 기존거 유지 -->

    <!-- 2안 : 로그인과 회원가입 화면 한쪽에 종업원 이미지와 함께 안내문구 배치 -->

    <!-- 3안 : 회원가입화면을 로그인 화면의 팝업으로 제시 -->

    <div class="container" style="margin-top:100px">
        <div class="row">
            <div class="col-sm-3"></div>
            <div class="col-sm-6">
                <div class="card" style="border-radius: 40px; background-color: #FFBC00">
                    <div class="card-body" style="margin: 15px; border-radius: 40px; background-color: #ffffff">
                        <h1 class="card-title text-center" style="font-size: 400%">Join</h1>
                        <div id="join_form" style="margin: 60px; font-size: 30px;">
                            <input type="hidden" name="user_exist"/>
                            <div class="form-group">
                                <label>아이디</label>
                                <input type="text" name="account_id" class="form-control"/>
                            </div>
                            <div class="form-group">
                                <label>비밀번호</label>
                                <input type="password" name="password" class="form-control"/>
                            </div>
                            <div class="form-group">
                                <label>이름</label>
                                <input type="text" name="name" class="form-control"/>
                            </div>
                            <div class="form-group">
                                <label>휴대폰번호</label>
                                <input type="text" name="phone_number" class="form-control"/>
                            </div>
                            <div class="form-group" style="margin: 40px 0px 100px 30px;">
                                <button class="btn-warning btn-lg float-right" id="join_btn">회원가입</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-3"></div>
        </div>
    </div>
</section>
</body>
</html>

<script>
    $(document).ready(function () {
        var join_form = $("#join_form");
        $("#join_btn").on("click", function (e) {
            e.preventDefault();
            var user = {
                account_id: join_form.find("input[name='account_id']").val(),
                password: join_form.find("input[name='password']").val(),
                name: join_form.find("input[name='name']").val(),
                phone_number: join_form.find("input[name='phone_number']").val()
            }
            join(user, function (result) {
                alert(result.is_success);
                document.location.href = "/user/rating?id=" + result.user_id
            }, function(){
                alert("이미 등록된 아이디 혹은 전화번호 입니다.");
            });
        });
    });

    function join(user, callback, error) {
        console.log("user = " + user);
        $.ajax({
            type: 'post',
            url: '/user/join',
            data: JSON.stringify(user),
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
</script>





