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
    .login_input {
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
                <div class="card"  style="border-radius: 40px; background: linear-gradient(#FFBC00, #ffd86b); ">
                    <div class="card-body" style="margin: 15px; border-radius: 30px; background-color: #ffffff">
                        <h1 class="card-title text-center" style="font-size: 4em">Login</h1>
                        <div id="login_form" style="margin: 60px; font-size: 30px;">
                            <div class="form-group">
                                <label>전화번호</label>
                                <input type="tel" name="password" class="login_input form-control" id="telInput"/>
                            </div>
                            <div class="form-group" style="margin-top: 50px">
                                <label>비밀번호</label>
                                <input type="tel" name="password" class="login_input form-control" id="passwordInput"/>
                            </div>
                            <div class="form-group text-right" style="margin: 100px 0px 30px 30px;">
                                <button class="btn btn-warning btn-lg" id="login_btn">로그인</button>
                                <button class="btn btn-basic btn-lg" id="join_btn">회원가입</button>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <div style="text-align: center; margin: 150px 50px;">
        <div class="btn-group-vertical" role="group" aria-label="Basic example" style="width: 100%;">
            <div class="btn-group">
                <button type="button" class="num_btn btn btn-outline-secondary py-3 input-btn btn-lg">1</button>
                <button type="button" class="num_btn btn btn-outline-secondary py-3 input-btn btn-lg">2</button>
                <button type="button" class="num_btn btn btn-outline-secondary py-3 input-btn btn-lg">3</button>
            </div>
            <div class="btn-group">
                <button type="button" class="num_btn btn btn-outline-secondary py-3 input-btn btn-lg">4</button>
                <button type="button" class="num_btn btn btn-outline-secondary py-3 input-btn btn-lg">5</button>
                <button type="button" class="num_btn btn btn-outline-secondary py-3 input-btn btn-lg">6</button>
            </div>
            <div class="btn-group">
                <button type="button" class="num_btn btn btn-outline-secondary py-3 input-btn btn-lg">7</button>
                <button type="button" class="num_btn btn btn-outline-secondary py-3 input-btn btn-lg">8</button>
                <button type="button" class="num_btn btn btn-outline-secondary py-3 input-btn btn-lg">9</button>
            </div>
            <div class="btn-group">
                <button type="button" class="num_btn btn btn-outline-secondary py-3 input-btn btn-lg"></button>
                <button type="button" class="num_btn btn btn-outline-secondary py-3 input-btn btn-lg">0</button>
                <button type="button" class="num_btn btn btn-outline-secondary py-3 btn-lg"
                        onclick="document.getElementById('code').value=document.getElementById('code').value.slice(0, -1); changeHyphenTel();">
                    &lt;
                </button>
            </div>
        </div>
    </div>
</section>

</body>
</html>

<script>
    $(document).ready(function () {
        var login_form = $("#login_form");

        $("#login_btn").on("click", function (e) {
            e.preventDefault();
            var login_info = {
                account_id: login_form.find("input[name='account_id']").val(),
                password: login_form.find("input[name='password']").val(),
            }
            login(login_info, function (result) {
                alert("success");
                document.location.href = "/mic2"
            })
        });

        $("#join_btn").on("click", function (e) {
            document.location.href = "/user/join"
        });

    });

    function login(user, callback, error) {
        console.log("user = " + user);
        $.ajax({
            type: 'post',
            url: '/user/login',
            data: JSON.stringify(user),
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

    function autoHypenTel(str) {
        str = str.replace(/[^0-9]/g, '');
        var tmp = '';
        if (str.substring(0, 2) == 02) {
            // 서울 전화번호일 경우 10자리까지만 나타나고 그 이상의 자리수는 자동삭제
            if (str.length < 3) {
                return str;
            } else if (str.length < 6) {
                tmp += str.substr(0, 2);
                tmp += '-';
                tmp += str.substr(2);
                return tmp;
            } else if (str.length < 10) {
                tmp += str.substr(0, 2);
                tmp += '-';
                tmp += str.substr(2, 3);
                tmp += '-';
                tmp += str.substr(5);
                return tmp;
            } else {
                tmp += str.substr(0, 2);
                tmp += '-';
                tmp += str.substr(2, 4);
                tmp += '-';
                tmp += str.substr(6, 4);
                return tmp;
            }
        } else {
            // 핸드폰 및 다른 지역 전화번호 일 경우
            if (str.length < 4) {
                return str;
            } else if (str.length < 7) {
                tmp += str.substr(0, 3);
                tmp += '-';
                tmp += str.substr(3);
                return tmp;
            } else if (str.length < 11) {
                tmp += str.substr(0, 3);
                tmp += '-';
                tmp += str.substr(3, 3);
                tmp += '-';
                tmp += str.substr(6);
                return tmp;
            } else {
                tmp += str.substr(0, 3);
                tmp += '-';
                tmp += str.substr(3, 4);
                tmp += '-';
                tmp += str.substr(7);
                return tmp;
            }
        }

        return str;
    }

    $('#telInput').keyup(function (event) {
        event = event || window.event;
        var _val = this.value.trim();
        this.value = autoHypenTel(_val);
    });

    function changeHyphenTel(){
        var before = $('#telInput').val();
        $('#telInput').val(autoHypenTel(before));
    }

    $(document).on('click', '.input-btn', function () {
        // var inputValue = $('.input-btn').text();
        var inputValue= $(this).text();
        if($('#telInput').val().length < 13){
            $('#telInput').val($('#telInput').val()+inputValue);
            changeHyphenTel();
        }
        else{
            console.log("inputValue = " + inputValue);
            console.log("passwordInput = " + $('#passwordInput').val());
            $('#passwordInput').val($('#passwordInput').val()+inputValue);
        }

    });


</script>
