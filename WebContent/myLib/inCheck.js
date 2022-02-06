/**
 * member input Data 무결성 확인 function
** member 무결성 확인사항
// ID : 길이(4이상), 영문자,숫자 로만 구성
// password : 길이(4이상), 영문,숫자,특수문자로 구성, 특수문자는 반드시 1개 이상 포함할것
// Name : 길이(2이상), 영문 또는 한글로 만 입력
// Level : select 를 이용 (X)
// BirthDay : 입력 여부 확인  ( length == 10 )
// Point : 정수의 범위  ( 숫자이면서, '.'이 없어야함 )
// Weight: 구간 (20 ~ 200)
 
 ** 작성 규칙
   => JavaScript function 으로 정의 하고 
      결과를 true or false 로 return
 */


function idCheck(){
	var id=$('#id').val(); // id=$(this).val()
	//** ID : 길이4 이상, 영문자,숫자 로만 구성 
	if (id.length<4) {
		$('#iMessage').html('~~ id 는 4글자 이상 입니다 ~~');
		return false;
	}else if ( id.replace(/[a-z.0-9]/gi ,'').length > 0 ) {
		$('#iMessage').html('~~ id 는 영문자, 숫자로만 입력 하세요 ~~');
		return false;
	}else {
		$('#iMessage').html('');
		return true;
	}
}//idCheck


function pwCheck(){
	var password=$('#password').val()
	//** Password : 길이4이상, 영문자, 숫자와 특수문자는 반드시 1개 이상 포함할것
	if (password.length<4) {
		$('#pMessage').html('~~ password 는 4글자 이상 입니다 ~~');
		return false;
	}else if ( password.replace(/[!-*.@]/gi,'').length >= password.length ) {
		$('#pMessage').html('~~ password 는 특수문자가 반드시 1개 이상 포함되어야 합니다 ~~');
		return false;
	}else if ( password.replace(/[a-z.0-9.!-*.@]/gi ,'').length > 0 ) {
		$('#pMessage').html('password 는 영문자, 숫자, 특수문자 로만 입력 하세요');
		return false;
	}else {
		$('#pMessage').html('');
		return true;
	}
}//pwCheck



function nmCheck(){
	var name=$('#name').val();
	// ** Name : 길이 2이상, 영문 또는 한글로 만 입력
	if (name.length<2) {
		$('#nMessage').html(' ~~ name 은 2글자 이상  입니다 ~~');
		return false;
	}else if (name.replace(/[a-z.가-힣]/gi,'').length > 0) {
		$('#nMessage').html(' ~~ name 은 한글 또는 영문 으로만 입력 하세요 ~~');
		return false;
	}else {
		$('#nMessage').html('');
		return true;
	}
}

function bdCheck(){
	var birthd=$('#birthd').val();
	// ** Birthd: 길이 10 인지
	if (birthd.length != 10) {
		$('#bMessage').html(' ~~ 생년월일을 정확하게 입력 하세요 (yyyy-mm-dd) ~~');
		return false;
	}else {
		$('#bMessage').html('');
		return true;
	}	
}

function poCheck(){
	var point=$('#point').val();
	// ** Point: 정수 (jQuery 함수 isNumeric ,  . 이 포함되면 안됨) 
	if ( $.isNumeric(point)==false ) {
		$('#oMessage').html(' ~~ point는 숫자로만 정확하게 입력 하세요 ~~ ');
		return false;
	}else if (point.replace(/[.]/g,'').length < point.length) {
		$('#oMessage').html(' ~~ point는 정수로만 정확하게 입력 하세요 ~~ ');
		return false;
	}else {
		$('#oMessage').html('');
		return true;
	}
}

function weCheck(){
	var weight=$('#weight').val();
	// ** Weight: 실수, 20~200 구간 확인
	if ( $.isNumeric(weight)==false ) {
		$('#wMessage').html(' ~~ weight는 숫자로만 정확하게 입력 하세요 ~~ ');
		return false;
	}else if (parseFloat(weight) < 20 || parseFloat(weight) > 200 ) {
	// }else if (Number(weight) < 20 || Number(weight) > 200 ) {	
		$('#wMessage').html('weight 범위를 벗어남: 20~200 사이의 숫자를 입력 하세요');
		return false;
	}else {
		$('#wMessage').html('');
		return true;
	}
}















		



