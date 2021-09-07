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

<style>
    .container {
        width: 100vw;
        height: 90vh;
        padding: 0;
        background-size: cover;
    }
    html, body {
        margin: 0; padding: 0;
        background-size: cover;

    }

    #main{
        width: 100vw;
        padding: 0;
        margin: 0 auto;
        font-size: 0;
        display: flex;
        flex-wrap: wrap;
    }

    .wrapper {
        display: flex;
        width: 100%;
        height: 100%;
        flex-direction: column;
    }

    .header {
        background: yellow;
        flex: 1;
        font-size: 13px;
        width: 100%;
    }

    .body {
        font-size: 13px;
        border: 1px solid orange;
        background: lightblue;
        width: 100vw;
    }
</style>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #FFBC00; text-align: center; display: inline-block; height: 10%; width: 100%;">
        <img src="../../../resources/img/logo-1.png" alt="" width="400" height="100%" class="img-responsive ">
    </nav>
    <div class="container">
        <div class="row" style="height: 45%;">
            <div class="col-sm-3"></div>
            <div class="col-sm-6">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">로그인</h4>
                        <div id="login_form">
                            <div class="form-group">
                                <label>전화번호</label>
                                <input type="tel" name="phone" class="form-control"/>
                            </div>
                            <div class="form-group">
                                <label>비밀번호</label>
                                <input type="teml" name="password" class="form-control" id="passwordInput"/>
                            </div>
                            
                            <div class="form-group text-right">
                                <button class="btn btn-primary" id="login_btn">로그인</button>
                                <button class="btn btn-primary" id="join_btn">회원가입</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row" style="width: 100%; height: 55%;">
            <div class="col-xl">
                <div style="text-align: center; height: 100%">
                    <div class="btn-group-vertical" role="group" aria-label="Basic example" style="width: 100%;height: 100%;">
                        <div class="btn-group" style="height:25%">
                            <button type="button" class="btn btn-outline-secondary py-3 input-btn" style="font-size: 2em;">1</button>                                
                            <button type="button" class="btn btn-outline-secondary py-3 input-btn" style="font-size: 2em;">2</button>                                
                            <button type="button" class="btn btn-outline-secondary py-3 input-btn" style="font-size: 2em;">3</button>
                        </div>
                        <div class="btn-group" style="height:25%">
                            <button type="button" class="btn login_btn btn-outline-secondary py-3 input-btn" style="font-size: 2em;">4</button>                                
                            <button type="button" class="btn btn-outline-secondary py-3 input-btn" style="font-size: 2em;">5</button>                                
                            <button type="button" class="btn btn-outline-secondary py-3 input-btn" style="font-size: 2em;">6</button>
                        </div>
                        <div class="btn-group" style="height:25%">
                            <button type="button" class="btn login_btn btn-outline-secondary py-3 input-btn" style="font-size: 2em;">7</button>                                
                            <button type="button" class="btn btn-outline-secondary py-3 input-btn" style="font-size: 2em;">8</button>                                
                            <button type="button" class="btn btn-outline-secondary py-3 input-btn" style="font-size: 2em;">9</button>
                        </div>
                        <div class="btn-group" style="height:25%">
                            <button type="button" class="btn btn-outline-secondary py-3 input-btn" style="font-size: 2em;"> </button>                                
                            <button type="button" class="btn btn-outline-secondary py-3 input-btn" style="font-size: 2em;">0</button>                                
                            <button type="button" class="btn btn-outline-secondary py-3 input-btn" style="font-size: 2em;"><</button>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </div>
<%--<footer>--%>
<%--    <div class="container-fluid text-white"--%>
<%--         style="margin-top:50px;padding-top:30px;padding-bottom:30px;">--%>
<%--        <div class="container">--%>
<%--            <p>비기너 프로젝트 예시자료</p>--%>
<%--            <a href="https://www.koreatech.ac.kr/kor/Main.do" style="color: white; font-weight: bold">코리아텍 바로가기</a> /--%>
<%--            <a href="https://portal.koreatech.ac.kr/login.jsp" style="color: white; font-weight: bold">아우누리 바로가기</a>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</footer>--%>
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