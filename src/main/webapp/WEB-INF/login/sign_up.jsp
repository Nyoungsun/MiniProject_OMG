<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
#signup-wrap {
  display: none;
  position: fixed;
  top: 20%;
  left: 45%;
  margin-top: -100px;
  margin-left: -150px;
  padding: 20px;
  background-color: #fff;
  border: 1px solid #ccc;
  border-radius: 5px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
  z-index: 1500;
}
#logintitle {
    margin-top: 0;
    margin-bottom: 30px;
    text-align: center;
}
#logintitle h2 {
    font-weight: bold;
    font-size: 15px;
    color: #3c3c3c;
}
#logintitle span {
    font-size: 12px;
    line-height: 35px;
    color: #666666;
}
.memberloginbox-popup .login {
    margin: 0 auto;
    padding: 40px 0;
    color: #2e2e2e;
    width: 500px;
}
.memberloginbox-popup .login fieldset {
    position: relative;
    width: 380px;
    margin: 0 auto;
}
img, fieldset {
    border: none;
    vertical-align: top;
}
.memberloginbox-popup .login fieldset .link {
    position: relative;
    margin-top: 25px;
    padding: 25px 0px 0px;
    color: rgb(83, 83, 83);
    border-top: 1px solid rgb(233, 233, 233);
}
.memberloginbox-popup .login fieldset .link a {
    position: absolute;
    top: 25px;
    right: 0;
}
.security {
    padding: 0;
    margin: 0;
    color: #757575;
}
/* �߰��κ� */
#signup-wrap input {
	border: 1px solid #eaeaea;
	height: 28px;
	margin-bottom: 5px;
}
fieldset table {
	position: relative;
    border: none;
    border-left: none;
    border-right: none;
    border-top: 0;
    line-height: 1.5;
    font-family: 'Nanum Gothic',sans-serif;
    font: 0.75em 'Nanum Gothic',Verdana,Dotum,AppleGothic,sans-serif;
}
table td, th {
	padding: 10px;
    height: 50px;
}
fieldset div {
    color: #353535;
    background: #fff;
    line-height: 20px;
    display: inline-block;
    vertical-align: middle;
}
</style>
</head>
<body>

<div id="signup-wrap" class="xans-element- xans-member xans-member-login memberloginbox-popup ">
	<div class="login">
	    <div id="logintitle">
	        <h2>Member Join</h2>
	        <span>ȸ���������� �������� ������ ����������.</span>
	    </div>
	    <fieldset>
	    	<table border="1" cellpadding="5" cellspacing="0">
				<tr>
					<th>���̵�</th>
					<td>
					 <input type="text" name="id" id="id" size="12" placeholder="���̵� �Է�">
					 <input type="hidden" id="check" value="">
					 <div id="idDiv"></div>
					</td>
				</tr>
				
				<tr>
					<th>��й�ȣ</th>
					<td>
					 <input type="password" name="pwd" id="pwd" size="30" >
					 <div id="pwdDiv"></div>
					</td>
				</tr>
				
				<tr>
					<th>��Ȯ��</th>
					<td>
					 <input type="password" name="rdpwd" id="repwd" size="30" >
					 <div id="repwdDiv"></div>
					</td>
				</tr>
				
				<tr>
					<th>�̸�</th>
					<td>
					 <input type="text" name="name" id="name" placeholder="�̸� �Է�">
					 <div id="nameDiv"></div>
					</td>
				</tr>
				
				<tr>
				 <th>�̸���</th>
				 <td>
				  <input type="text" name="email1" id="email1" style="width: 100px;">
				@
				<input type="text" name="email2" id="email2" style="width: 100px;">
				&nbsp;
				<select name="email3" id="email3" style="width: 120px;" onchange="select()">
					<option value="">�����Է�</option>
					<option value="naver.com">naver.com</option>
					<option value="gmail.com">gmail.com</option>
					<option value="nate.com">nate.com</option>
				</select>
				<br>
				<input type="hidden" name="codeC" id="codeC" >
				<input type="text" name="code" id="code" placeholder="������ȣ �Է�" size="12" maxlength="6">
				<input type="button" value="������ȣ �ޱ�" id="checkBtn">
				<div id="codeDiv"></div>
				 </td>
				</tr>
				
				<tr>
				 <th>�޴���</th>
				 <td>
				  <select name="tel1" style="width: 70px;">
				 <option value="010">010</option>
				 <option value="011">011</option>
				 <option value="019">019</option>
				 <option value="070">070</option>
				</select>
				-
				<input type="text" name="tel2" style="width: 70px;" maxlength="4">
				-
				<input type="text" name="tel3" style="width: 70px;" maxlength="4">
				 </td>
				</tr>
				
				<tr>
				 <th>�ּ�</th>
				 <td>
				  <input type="text" name="zipcode" id="zipcode" size="10" placeholder="�����ȣ" readonly>
				  <input type="button" value="�����ȣ�˻�" onclick="execDaumPostcode()">
				<br>
				<input type="text" name="addr1" id="addr1" style="width: 350px;" placeholder="�ּ�" readonly/>
				<br>
				<input type="text" name="addr2" id="addr2" style="width: 350px;" placeholder="���ּ�" />
				 </td>
				</tr>
				
				<tr>
					<td colspan="2" align="center">
					 <input type="button" value="ȸ������" id="writeBtn">
					 <input type="reset" value="�ٽ��ۼ�">
					</td>
				</tr>
			 </table>
		</fieldset>
	</div>
</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
$('#id').focusout(function(){ //�ߺ� ���̵� üũ
	if($('#id').val() == ''){
		$('#idDiv').text('���� ���̵� �Է�');
		$('#idDiv').css('color', 'red');
		
	}else{
		//���� ��û
		$.ajax({
			type: 'post',
			url: '/total_function/board/checkId',
			data: 'id='+$('#id').val(), //������ ������ ������
			dataType: "text", //�����κ��� ���� ��������, "text", "html", "xml", "json"
			success: function(data){
				data = data.trim();
				
				if(data == 'exist'){
					$('#idDiv').text('��� �Ұ����� ���̵��Դϴ�.');
					$('#idDiv').css('color', 'red');
					
				}else if(data == 'non_exist'){
					$('#idDiv').text($('#id').val()+' �� ��� ������ ���̵��Դϴ�.');
					$('#idDiv').css('color', 'blue');
					
					//�ߺ�üũ Ȯ�ο�
					$('#check').val($('#id').val());
				}
			},
			error: function(err){
				console.log(err);
			}
		});
	}
});
function select(){
	document.getElementById("email2").value = document.getElementById("email3").value;
}
$('#checkBtn').click(function(){
	if($('#checkBtn').val() == '������ȣ �ޱ�'){ //������ȣ �ޱ�
		$('#checkBtn').val('������ȣ Ȯ��');
		//$("#code").attr("placeholder", "������ȣ �Է�");
		
		$.ajax({
			type: 'post',
			url: '/total_function/email/send',
			data: 'email1='+$('#email1').val()+'&email2='+$('#email2').val(), //������ ���� ������
			dataType: 'text', //�����κ��� �޴� �ڷ���, text, xml, html, json
			success: function(data){
				$('#code').val('');
				$('#codeC').val(data);
			},
			error: function(err){
				console.log(err);
			}
		});
	}
	else{ //������ȣ �Է��� Ȯ��
		if($('#codeC').val() == $('#code').val()){
			$("#code").hide();
			$('#checkBtn').val('�����Ϸ� �Ǿ����ϴ�.');
		}
		else{
			alert("�߸��� ��ȣ�Դϴ�.");
		}
	}
});
$('#writeBtn').click(function(){ //checkWrite() �Լ��� jQuery�������� ����
	$('#idDiv').empty();
	$('#pwdDiv').empty();
	$('#repwdDiv').empty();
	$('#nameDiv').empty();
	$('#codeDiv').empty();
	
	if($('#id').val() == ''){
		$('#idDiv').text('���̵� �Է�');
		$('#idDiv').css('color', 'red');
		$('#id').focus();
	}
	else if($('#pwd').val() == ''){
		$('#pwdDiv').text('��й�ȣ �Է�');
		$('#pwdDiv').css('color', 'red');
		$('#pwd').focus();
	}
	else if($('#pwd').val() != $('#repwd').val()){
		$('#repwdDiv').text('��й�ȣ�� ���� �ʽ��ϴ�.');
		$('#repwdDiv').css('color', 'red');
		$('#repwd').focus();
	}
	else if($('#checkBtn').val() != '�����Ϸ� �Ǿ����ϴ�.'){
		$('#codeDiv').text('�̸��� ������ �������ֽʼ�.');
		$('#codeDiv').css({'color': 'red', 'font-size': '8pt'});
		$('#code').focus();
	}
	else if($('#code').val() == ''){
		
	}
	else{
		$.ajax({ //ó���ϰ� �ݵ�� �ش� �ڸ��� ���ƿ´�.
			type: 'post',
			url: '/total_function/board/sign_up',
			data: $('#writeForm').serialize(),
			dataType: 'text',
			success: function(data){
				alert('ȸ�������� �����մϴ�');
				location.href = '/total_function/';
			},
			error: function(err){
				console.log(err);
			}
		});
	}
});
/* Daum �����ȣ */
function execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // �˾����� �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ�.
            // �� �ּ��� ���� ��Ģ�� ���� �ּҸ� �����Ѵ�.
            // �������� ������ ���� ���� ��쿣 ����('')���� �����Ƿ�, �̸� �����Ͽ� �б� �Ѵ�.
            var addr = ''; // �ּ� ����
            var extraAddr = ''; // �����׸� ����
            //����ڰ� ������ �ּ� Ÿ�Կ� ���� �ش� �ּ� ���� �����´�.
            if (data.userSelectedType === 'R') { // ����ڰ� ���θ� �ּҸ� �������� ���
                addr = data.roadAddress;
            } else { // ����ڰ� ���� �ּҸ� �������� ���(J)
                addr = data.jibunAddress;
            }
            // �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ִ´�.
            document.getElementById('zipcode').value = data.zonecode;
            document.getElementById("addr1").value = addr;
            // Ŀ���� ���ּ� �ʵ�� �̵��Ѵ�.
            document.getElementById("addr2").focus();
        }
    }).open();
}
</script>

</body>
</html>