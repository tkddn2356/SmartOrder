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
<body class="" id="grid">
<br/><br/>
한국어 음성 처리 테스트<br/><br/>
<div>
    <p id="middleResult"></p>
    <p id="finalResult"></p>
</div>
<div>
    <p id="DetectedIntent"></p>
    <p id="FulfillmentText"></p>
</div>
<button class="btn btn-primary" id="mic_btn">마이크테스트</button>
<a href="naver.com">연결테스트</a>


<ul class="nav nav-tabs">
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
<div class="tab-content">
    <div class="tab-pane fade show active" id="burgerSet">
        <p>햄버거세트 메뉴들</p>
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

</body>
</html>

<script src='/resources/js/annyang.js'></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/SpeechKITT/0.3.0/speechkitt.min.js"></script>
<script>

    $(document).ready(function () {
        $('#mic_btn').on("click", function (e) {
            micTest();
        });

        $('#chickenSetTab').trigger("click");
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
                        $('#DetectedIntent').html(result.DetectedIntent);
                        $('#FulfillmentText').html(result.FulfillmentText);
                        speech(result.FulfillmentText);
                        micTest();
                    });
                } else {
                    interim_transcript += event.results[i][0].transcript;
                    console.log("interim_transcript=" + interim_transcript);
                    $('#middleResult').html(interim_transcript);
                }
            }

        };
    }

    // annyang.start({ autoRestart: false, continuous: true })
    // var recognition = annyang.getSpeechRecognizer();
    // var final_transcript = '';
    // recognition.interimResults = true;
    // recognition.onresult = function(event) {
    //     var interim_transcript = '';
    //     final_transcript = '';
    //     for (var i = event.resultIndex; i < event.results.length; ++i) {
    //         if (event.results[i].isFinal) {
    //             final_transcript += event.results[i][0].transcript;
    //             console.log("final_transcript="+final_transcript);
    //             //annyang.trigger(final_transcript); //If the sentence is "final" for the Web Speech API, we can try to trigger the sentence
    //         } else {
    //             interim_transcript += event.results[i][0].transcript;
    //             console.log("interim_transcript="+interim_transcript);
    //         }
    //     }
    //     document.getElementById('result').innerHTML =  '중간값:='+interim_transcript+'<br/>결과값='+final_transcript;
    //     console.log('interim='+interim_transcript+'|final='+final_transcript);
    // };


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
        if (!window.speechSynthesis) {
            alert("음성 재생을 지원하지 않는 브라우저입니다. 크롬, 파이어폭스 등의 최신 브라우저를 이용하세요");
            return;
        }
        var lang = 'ko-KR';
        var utterThis = new SpeechSynthesisUtterance(txt);
        utterThis.onend = function (event) {
            console.log('end');
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


</script>





