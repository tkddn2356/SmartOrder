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

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">
</head>

<style>
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
<body>
<nav class="navbar navbar-expand-lg navbar-dark fixed-top" style="background: linear-gradient(#FFBC00, #ffd86b); text-align: center; display: inline-block;">
    <img src="/resources/img/logo-3.png" alt="" width="700" class="img-responsive ">
</nav>
<section>
    <div class="container" style="margin-top:200px">
        <div class="row">
            <div class="col-sm-12">
                <div class="card" style="border-radius: 40px; background: linear-gradient(#FFBC00, #ffd86b); ">
                    <div class="card-body" style="margin: 15px; border-radius: 30px; background-color: #ffffff">
                        <h1 class="card-title text-center" style="font-size: 400%">Join</h1>
                        <div id="join_form" style="margin: 60px; font-size: 30px;">
                            <input type="hidden" name="user_exist"/>
                            <div class="form-group">
                                <label>아이디</label>
                                <input type="text" name="account_id" class="join_input form-control"/>
                            </div>
                            <div class="form-group">
                                <label>비밀번호</label>
                                <input type="password" name="password" class="join_input form-control"/>
                            </div>
                            <div class="form-group">
                                <label>이름</label>
                                <input type="text" name="name" class="join_input form-control"/>
                            </div>
                            <div class="form-group">
                                <label>휴대폰번호</label>
                                <input type="text" name="phone_number" class="join_input form-control"/>
                            </div>
                            <div class="form-group" style="margin: 40px 0px 100px 30px;">
                                <button class="btn-warning btn-lg float-right" id="join_btn">회원가입</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

<%--    <div style="text-align: center; margin: 150px 50px;">--%>
<%--        <div class="btn-group-vertical" role="group" aria-label="Basic example" style="width: 100%;">--%>
<%--            <div class="btn-group">--%>
<%--                <button type="button" class="num_btn btn btn-outline-secondary py-3 input-btn btn-lg">1</button>--%>
<%--                <button type="button" class="num_btn btn btn-outline-secondary py-3 input-btn btn-lg">2</button>--%>
<%--                <button type="button" class="num_btn btn btn-outline-secondary py-3 input-btn btn-lg">3</button>--%>
<%--            </div>--%>
<%--            <div class="btn-group">--%>
<%--                <button type="button" class="num_btn btn btn-outline-secondary py-3 input-btn btn-lg">4</button>--%>
<%--                <button type="button" class="num_btn btn btn-outline-secondary py-3 input-btn btn-lg">5</button>--%>
<%--                <button type="button" class="num_btn btn btn-outline-secondary py-3 input-btn btn-lg">6</button>--%>
<%--            </div>--%>
<%--            <div class="btn-group">--%>
<%--                <button type="button" class="num_btn btn btn-outline-secondary py-3 input-btn btn-lg">7</button>--%>
<%--                <button type="button" class="num_btn btn btn-outline-secondary py-3 input-btn btn-lg">8</button>--%>
<%--                <button type="button" class="num_btn btn btn-outline-secondary py-3 input-btn btn-lg">9</button>--%>
<%--            </div>--%>
<%--            <div class="btn-group">--%>
<%--                <button type="button" class="num_btn btn btn-outline-secondary py-3 input-btn btn-lg"></button>--%>
<%--                <button type="button" class="num_btn btn btn-outline-secondary py-3 input-btn btn-lg">0</button>--%>
<%--                <button type="button" class="num_btn btn btn-outline-secondary py-3 btn-lg"--%>
<%--                        onclick="document.getElementById('code').value=document.getElementById('code').value.slice(0, -1); changeHyphenTel();">--%>
<%--                    &lt;--%>
<%--                </button>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>

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





