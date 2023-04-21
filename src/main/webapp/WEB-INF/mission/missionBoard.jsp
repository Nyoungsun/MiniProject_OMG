<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
request.setCharacterEncoding("UTF-8");
String seq = request.getParameter("seq");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">  <!-- bootstrap -->
    <title>Check out the Mission Here</title>
    <style type="text/css">
    div#grayLayer {
	display: none;
	position: fixed;
	left: 0;
	top: 0;
	height: 100%;
	width: 100%;
	background: black;
	/* filter: alpha(opacity=60); */
	opacity: 0.60;  /* 0.0 ~ 1.0, 값이 작을수록 더 투명하게 만든다. */
	}
    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/mission/missionBoard.css">
    <link rel="shortcut icon" href="../img/icon/check.ico">
</head>
<body>
<div id='grayLayer'></div>

<jsp:include page="../login/sign_in.jsp" />
<jsp:include page="../login/sign_up.jsp" />

<div class="total">

<header>
    <nav class="navbar navbar-expand-lg navbar-light bg-white">
        <div class="container" style="">
            <a class="OMGlogo" href="../"><img src="../img/logo/logo_no_bg2.png" alt="OhMyGoal!"></a>

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="#navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav " style="margin-left: 20px;">
                	<c:if test="${not empty memName}">
                        <li class="nav-item">
                            <a class="nav-link" href="../mission/missionWrite" style="color:black;">그룹미션 만들기 </a>
                        </li>
                    </c:if>
                    <li class="nav-item">
                        <a class="nav-link" href="../board/about">소개</a>
                    </li>
                </ul>
            </div>

            <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                <ul class="navbar-nav">
                    <c:if test="${empty memName}">
                        <li class="nav-item">
                            <a id="topnav_loginBtn" class="nav-link" href="#" style="text-decoration: none;">로그인</a>
                        </li>
                    </c:if>

                    <c:if test="${not empty memName}">
                        <li class="nav-item">
                            <a class="nav-link" href="../member/myPage" style="text-decoration: none;">${memName}님
                                환영합니다.&nbsp;&nbsp;&nbsp;마이페이지</a>
                        </li>
                        <li class="nav-item">
                            <a id="logoutBtn" class="nav-link" href="#" style="text-decoration: none;">로그아웃</a>
                        </li>
                    </c:if>
                </ul>
            </div>
        </div>
    </nav>
</header>

<div class="shadow-lg p-3 mb-5 bg-body rounded" id="box" style="height: 100%; width: 50%;">
    <div class="mainThumbnail" align="center" >
        <!-- <img src="../img/thumbnail/thumb1.jpg" alt="썸네일" style="width: 85%; height: 45%; border-radius: 15px;"> -->
    </div>
    
    
    <div id="topConent">
	    <div class="subject" >
	    	<!-- <h1 >갓생! 미라클 모닝 ☀️</h1> -->
	    </div>
	    
	    <div id="memberNum">
	    	<!-- Button trigger modal -->
			<button type="button" id="memListBtn" class="btn " data-bs-toggle="modal" data-bs-target="#staticBackdrop">
				<div id="memberNumText" style=""></div>
			</button>
			
			<!-- Modal -->
			<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
			  <div class="modal-dialog modal-dialog-scrollable">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h1 class="modal-title fs-5" id="staticBackdropLabel">현재 참여자 🏃</h1>
			        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			      </div>
			      <div class="modal-body" id="join_members"></div>
			      <div class="modal-footer">
			        <!-- <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button> -->
			        <button type="button" class="btn btn-primary d-grid gap-2"  data-bs-dismiss="modal">확인</button>
			      </div>
			    </div>
			  </div>
			</div>
	    
	    </div>
	 </div> 
	 
    <div class="label container-fluid"></div>

    <div class="userInfo" style="">
        <div class="userInfo2" style=""  >
            <div class="userInfo3" style="">
                <a href="#" target="_blank" rel="noreferrer">
                    <span class="userInfo4" style="white-space: nowrap;">
                        <span class="userImg"></span>
                    </span>
                </a>

            </div>
            &nbsp;
            <div class="dateDiv" style="">
                <span class="date"></span>
            </div>
            &nbsp;
            <div class="likeDiv" style="">
                <svg class="MuiSvgIcon-root MuiSvgIcon-colorDisabled MuiSvgIcon-fontSizeLarge" focusable="false" viewBox="0 0 24 24" aria-hidden="true" title="프로젝트 응원하기" style="border: 1.5px solid palevioletred; border-radius: 100px; padding: 4px; cursor: pointer; height:30px; width:30px; margin-top:-3px;">
                    <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"></path>
                </svg>
                <span class="likeName"></span>
            </div>
        </div>

    </div>
    
    

    <div class="contentContainer"></div>
</div>
 <footer class="footer" align="center" style="display: block;">
        <div class="footerDiv" style="">
            <p><strong>OhMyGoal! 2023</strong></p>
            <p>모든 컨텐츠의 저작권은 OhMyGoal에게 있습니다.</p>
            <p>ohmygoal.help@gmail.com</p>
        </div>
    </footer>
</div>
<script type="text/javascript" src="http://code.jQuery.com/jquery-3.6.4.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script type="text/javascript">
let arr=[];

$(document).ready(function() {
	$.ajax({ //처리하고 반드시 해당 자리로 돌아온다.
		type: 'post',
		url: '/OhMyGoal/board/view',
		data: 'seq=' + <%= seq %>,//서버로 보낼 데이터
		dataType: 'json', //서버로부터 받은 데이터형, "text", "html", "xml", "json"
		success: function (data) {
			arr = data.members.split(" ");
			$('.mainThumbnail').append('<img src="' + data.img + '" alt="썸네일" style="width: 85%; height: 45%; border-radius: 15px;">');
			$('.subject').append('<h1 >' + data.subject + '</h1>');
			$('#memberNumText').append('<h4 style="font-size: 16pt;"><span>🔥<span style="font-weight:bold;">' + arr.length + '</span>명 참여 중 🔥</span></h4>');
			$('.label.container-fluid').append('<h4><span class="innerLabel badge rounded-pill " style="margin-right: 13px;">' + data.category + '</span><span class="innerLabel badge rounded-pill ">' + data.maxmember + '명</span></h4>');
			$('.userImg').append('<svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true" width="20" height="20"><path d="M12 .3a12 12 0 0 0-3.8 23.4c.6.1.8-.3.8-.6v-2c-3.3.7-4-1.6-4-1.6-.6-1.4-1.4-1.8-1.4-1.8-1-.7.1-.7.1-.7 1.2 0 1.9 1.2 1.9 1.2 1 1.8 2.8 1.3 3.5 1 0-.8.4-1.3.7-1.6-2.7-.3-5.5-1.3-5.5-6 0-1.2.5-2.3 1.3-3.1-.2-.4-.6-1.6 0-3.2 0 0 1-.3 3.4 1.2a11.5 11.5 0 0 1 6 0c2.3-1.5 3.3-1.2 3.3-1.2.6 1.6.2 2.8 0 3.2.9.8 1.3 1.9 1.3 3.2 0 4.6-2.8 5.6-5.5 5.9.5.4.9 1 .9 2.2v3.3c0 .3.1.7.8.6A12 12 0 0 0 12 .3"></path></svg>&nbsp;'+data.id);
			$('.date').append(new Date(data.start_date).toLocaleDateString('ko-KR', {year: 'numeric', month: 'long', day: 'numeric'}) + ' ~ ' + new Date(data.end_date).toLocaleDateString('ko-KR', {year: 'numeric', month: 'long', day: 'numeric'}));
			$('.likeName').append('&nbsp;'+data.likes);
			$('.contentContainer').append('<pre class="content bg-primary p-2 text-dark bg-opacity-10" style="white-space: pre-line;">'+ data.content +'</pre><div id="missionBtn" class="btn1 d-grid gap-2 " class="btn1 btn-primary " data-bs-toggle="modal" data-bs-target="#modal2" align="center"><input type="submit" id="msBtn"  class="btn1 btn-primary " data-bs-toggle="modal" data-bs-target="#modal2" align="center" value="그룹미션 참여하기"></div><div class="modal fade"id="modal2"data-bs-backdrop="static"data-bs-keyboard="false"tabindex="-1"aria-labelledby="staticBackdropLabel"aria-hidden="true"><div class="modal-dialog"><div class="modal-content"><div class="modal-header"><!--<h5 class="modal-title fs-5"id="modal2Label">미션참가모달</h5>--><button type="button"class="btn-close"data-bs-dismiss="modal"aria-label="Close"></button></div><div class="modal-body"><h4 style="text-align: center; font-weight:bold;">미션에참여하시겠습니까?</h4></div><div class="modal-footer"style="display: flex; justify-content: center;"><button type="button" class="btn btn-primary" style="width: 40%" onclick="missionJoin();">미션참여</button></div></div></div></div>');
			$('#join_members').append('<h4>' + data.id + '<br><hr>');
			for (let item of arr) {$('#join_members').append(item+'<br>');}
			$('#join_members').append('</h4>');
		},
		error: function (err) {
			console.log(err);
		}
	});
});

$('#topnav_loginBtn').click(function(){
	$('#grayLayer').fadeIn(300);
	$('#login-wrap').fadeIn(300);
	
	//$('#overLayer').html('<img src="' + $(this).attr('href') + '" />');
	return false;
});

$('#grayLayer').click(function(){
	$(this).fadeOut(300);
	$('#login-wrap').fadeOut(300);
	$('#signup-wrap').fadeOut(300);
});

$('#logoutBtn').click(function(){
	$.ajax({
		type: 'post',
		url: '/OhMyGoal/board/logout',
		success: function(){
			alert("로그아웃이 완료되었습니다.");
			location.href = '/OhMyGoal/';
		},
		error: function(err){
			console.log(err);
		}
	});
});

function missionJoin() {
	console.log(arr);
	if ('${memId}' === '') {alert("먼저 로그인을 진행해주십쇼")}
	else if(arr.indexOf('${memId}') !== -1){alert("이미 해당 그룹미션에 참가중입니다.");}
	else{
		$.ajax({
			type: 'post',
			url: '/OhMyGoal/board/missionJoin',
			data: {
				seq: <%= seq %>,
				id: '${memId}'
			},
			success: function(){
				alert("그룹미션 참가가 완료되었습니다.");
				location.href = '/OhMyGoal/';
			},
			error: function(err){
				console.log(err);
			}
		});
	}
}
</script>
</body>
</html>