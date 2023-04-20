<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>MyPage🐟</title>
<style>
.checkDiv {
	color: #ff0000;
	font-size: 10pt;
}
</style>

<!--BootStrap-->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<!--BootStrap-->

<link rel="stylesheet" href="../css/member/edit.css">
<link rel="stylesheet" href="../css/member/myPage.css">
<link rel="shortcut icon" href="../img/icon/check.ico">

</head>
<meta charset="UTF-8">
<body>
	<header>
		<a href="/OhMyGoal/"><img id="logo" src="../img/logo/logo2.png"></a>
		<button type="button" id="editBtn" class="headerBtn">EDIT</button>
		<button type="button" id="logoutBtn" class="headerBtn">로그아웃</button>
	</header>

	<div id="profileDiv">
		<div id="profileContent">
			<div id="String">
				<span>"<span class="memberName"></span>" 님 안녕하세요.
				</span><br> <span>오늘의 미션을 달성하세요!</span>
			</div>
			<img id="banner" src="../img/people.png">
		</div>
	</div>
	<div id="missionDiv">
		<div id="missionList">
			<div id="grade">
				<img id="grade_img" src="../img/grade/seed.png"> <span><span
					class="memberName"></span>님의 미션</span>
			</div>
		</div>
	</div>
	<footer>
		<p>
			<strong>OhMyGoal! 2023</strong>
		</p>
		<p>모든 컨텐츠의 저작권은 OhMyGoal에게 있습니다.</p>
		<p>OhMyGoal.help@gmail.com</p>
	</footer>

	<!-- edit_modal -->
	<jsp:include page='checkPwd.jsp'></jsp:include>
	<jsp:include page='edit.jsp'></jsp:include>

	<!--BootStrap-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous">
		
	</script>
	<!--BootStrap-->

	<!--jquery-->
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<!--jquery-->

	<!--slider-->
	<script src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
	<script>
	$.ajax({
		type: 'post',
		url: 'getMyPage',
		async: false,
		success: function (data) {
			$.each(data, function (index, items) {
				console.log('getMyPage');
				$('<div/>').append($('<div/>', {
					class:'item'
				}).append($('<div/>', {
					class: 'card',
					'width': '19rem'
				}).append($('<img/>', {
					src: items.url,
					class: 'card-img-top',
					alt: '미션이미지'
				})).append($('<div/>', {
					class:'card-body'
				}).append($('<p/>', {
					class: 'card-text',
					text: items.content
				}))))).appendTo('#slider-div');
			})
		},
		error: function (err) {
			console.log(err);
		}
	});
</script>
	<script>
		$(function() {
			$.ajax({
				type : 'post',
				url : 'getMember',
				async : false,
				success : function(data) {
					console.log("getMember");
					$('#id').val(data.id);
					$('#name').val(data.name);
					$('#email1').val(data.email1);
					$('#email2').val(data.email2);
					$('#tel1').val(data.tel1);
					$('#tel2').val(data.tel2);
					$('#tel3').val(data.tel3);
					$('#zipcode').val(data.zipcode);
					$('#addr1').val(data.addr1);
					$('#addr2').val(data.addr2);

					$('.memberName').text(data.name); // OOO님 안녕하세요, OOO님의 미션
				},
				error : function(err) {
					console.log(err);
				}
			});
		});
	</script>

	<script>
		$('#logoutBtn').click(function() {
			$.ajax({
				type : 'post',
				url : '/OhMyGoal/board/logout',
				success : function() {
					alert("로그아웃이 완료되었습니다.");
					location.href = '/OhMyGoal/';
				},
				error : function(err) {
					console.log(err);
				}
			});
		});
	</script>

	<script>
		$('#editBtn').click(function() {
			$('#ModalCheckPwd').modal('show'); //checkPwd.jsp에 있음
		});
	</script>

	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		$('#search').click(function() {
			new daum.Postcode({
				oncomplete : function(data) {
					// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

					// 각 주소의 노출 규칙에 따라 주소를 조합한다.
					// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
					var addr = ''; // 주소 변수

					//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
					if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
						addr = data.roadAddress;
					} else { // 사용자가 지번 주소를 선택했을 경우(J)
						addr = data.jibunAddress;
					}
					// 우편번호와 주소 정보를 해당 필드에 넣는다.
					document.getElementById("zipcode").value = data.zonecode;
					document.getElementById("addr1").value = addr;
					// 커서를 상세주소 필드로 이동한다.
					document.getElementById("addr2").focus();
				}
			}).open();
		});
	</script>
</body>
</html>